import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';

import '../../core/di/providers.dart';
import '../../domain/entities/ade_device.dart';
import '../../domain/entities/ade_integration.dart';
import '../../domain/entities/audit_event.dart';
import '../../domain/entities/behavioral_detection.dart';
import '../../domain/entities/license_info.dart';
import '../../domain/entities/threat.dart';
import '../../domain/entities/vulnerability.dart';
import '../../domain/entities/vulnerability_detection.dart';

/// Provider for threat details.
final threatsProvider = FutureProvider<List<Threat>>((ref) async {
  final api = await ref.watch(tenantApiProvider.future);
  return api.getThreats();
});

/// Provider for vulnerabilities.
final vulnerabilitiesProvider = FutureProvider<List<Vulnerability>>((
  ref,
) async {
  final api = await ref.watch(tenantApiProvider.future);
  return api.getVulnerabilities();
});

/// Provider for audit events.
final auditEventsProvider = FutureProvider<List<AuditEvent>>((ref) async {
  final api = await ref.watch(tenantApiProvider.future);
  return api.getAuditEvents();
});

/// Provider for tenant licensing info.
final licenseInfoProvider = FutureProvider<LicenseInfo>((ref) async {
  final api = await ref.watch(tenantApiProvider.future);
  return api.getLicenseInfo();
});

/// Provider for vulnerability detections.
final vulnerabilityDetectionsProvider =
    FutureProvider<List<VulnerabilityDetection>>((ref) async {
      final api = await ref.watch(tenantApiProvider.future);
      return api.getVulnerabilityDetections();
    });

/// Provider for behavioral detections.
final behavioralDetectionsProvider = FutureProvider<List<BehavioralDetection>>((
  ref,
) async {
  final api = await ref.watch(tenantApiProvider.future);
  return api.getBehavioralDetections();
});

/// Provider for ADE integrations.
final adeIntegrationsProvider = FutureProvider<List<AdeIntegration>>((
  ref,
) async {
  final api = await ref.watch(tenantApiProvider.future);
  return api.getAdeIntegrations();
});

/// Provider for ADE devices per integration.
final adeDevicesProvider = FutureProvider.family<List<AdeDevice>, String>((
  ref,
  integrationId,
) async {
  final api = await ref.watch(tenantApiProvider.future);
  return api.getAdeDevices(integrationId);
});

/// Search query for behavioral detections.
final behavioralSearchQueryProvider = StateProvider<String>((ref) => '');

/// Severity filter for behavioral detections.
final behavioralSeverityFilterProvider = StateProvider<String?>((ref) => null);

/// Classification filter for behavioral detections (mal, pup, sus).
final behavioralClassificationFilterProvider =
    StateProvider<String?>((ref) => null);

/// Management state filter for behavioral detections (open, closed).
final behavioralMgmtStateFilterProvider =
    StateProvider<String?>((ref) => null);

/// Sort direction for behavioral detections (true = A-Z, false = Z-A).
final behavioralSortAscProvider = StateProvider<bool>((ref) => true);

/// Filtered behavioral detections.
final filteredBehavioralDetectionsProvider =
    Provider<AsyncValue<List<BehavioralDetection>>>((ref) {
      final detectionsAsync = ref.watch(behavioralDetectionsProvider);
      final query = ref.watch(behavioralSearchQueryProvider).toLowerCase();
      final severityFilter = ref.watch(behavioralSeverityFilterProvider);
      final classFilter = ref.watch(behavioralClassificationFilterProvider);
      final mgmtFilter = ref.watch(behavioralMgmtStateFilterProvider);
      final sortAsc = ref.watch(behavioralSortAscProvider);

      return detectionsAsync.whenData((detections) {
        final filtered = detections.where((d) {
          if (severityFilter != null &&
              d.severity?.toLowerCase() != severityFilter.toLowerCase()) {
            return false;
          }
          if (classFilter != null &&
              d.classification?.toLowerCase() != classFilter.toLowerCase()) {
            return false;
          }
          if (mgmtFilter != null &&
              d.managementState?.toLowerCase() != mgmtFilter.toLowerCase()) {
            return false;
          }
          if (query.isEmpty) return true;
          final name = d.threatName?.toLowerCase() ?? '';
          final device = d.deviceName?.toLowerCase() ?? '';
          final process = d.processName?.toLowerCase() ?? '';
          final classification = d.classification?.toLowerCase() ?? '';
          return name.contains(query) ||
              device.contains(query) ||
              process.contains(query) ||
              classification.contains(query);
        }).toList();

        filtered.sort((a, b) {
          final nameA = (a.threatName ?? '').toLowerCase();
          final nameB = (b.threatName ?? '').toLowerCase();
          return sortAsc ? nameA.compareTo(nameB) : nameB.compareTo(nameA);
        });

        return filtered;
      });
    });

/// Search query for vulnerability list.
final vulnSearchQueryProvider = StateProvider<String>((ref) => '');

/// Severity filter for vulnerabilities.
final vulnSeverityFilterProvider = StateProvider<String?>((ref) => null);

/// Sort field for vulnerability list.
enum VulnSortField { cvss, deviceCount, cveId }

final vulnSortFieldProvider = StateProvider<VulnSortField>(
  (ref) => VulnSortField.cvss,
);

/// Sort ascending for vulnerability list.
final vulnSortAscProvider = StateProvider<bool>((ref) => false);

/// Filtered and sorted vulnerabilities.
final filteredVulnerabilitiesProvider =
    Provider<AsyncValue<List<Vulnerability>>>((ref) {
      final vulnsAsync = ref.watch(vulnerabilitiesProvider);
      final query = ref.watch(vulnSearchQueryProvider).toLowerCase();
      final severityFilter = ref.watch(vulnSeverityFilterProvider);
      final sortField = ref.watch(vulnSortFieldProvider);
      final sortAsc = ref.watch(vulnSortAscProvider);

      return vulnsAsync.whenData((vulns) {
        final filtered = vulns.where((v) {
          if (severityFilter != null &&
              v.severity?.toLowerCase() != severityFilter.toLowerCase()) {
            return false;
          }
          if (query.isEmpty) return true;
          final cve = v.cveId?.toLowerCase() ?? '';
          final sw = v.software?.toLowerCase() ?? '';
          return cve.contains(query) || sw.contains(query);
        }).toList();

        filtered.sort((a, b) {
          int cmp;
          switch (sortField) {
            case VulnSortField.cvss:
              cmp = (a.cvssScore ?? 0).compareTo(b.cvssScore ?? 0);
            case VulnSortField.deviceCount:
              cmp = (a.deviceCount ?? 0).compareTo(b.deviceCount ?? 0);
            case VulnSortField.cveId:
              cmp = (a.cveId ?? '').compareTo(b.cveId ?? '');
          }
          return sortAsc ? cmp : -cmp;
        });

        return filtered;
      });
    });

/// Search query for threat list.
final threatSearchQueryProvider = StateProvider<String>((ref) => '');

/// Status filter for threats (quarantined, not_quarantined, released, resolved).
final threatStatusFilterProvider = StateProvider<String?>((ref) => null);

/// Severity filter for threats (informational, low, medium, high, critical).
final threatSeverityFilterProvider = StateProvider<String?>((ref) => null);

/// Management state filter for threats (open, closed).
final threatManagementStateFilterProvider = StateProvider<String?>((ref) => null);

/// Sort direction for threats (true = A-Z, false = Z-A).
final threatSortAscProvider = StateProvider<bool>((ref) => true);

/// Filtered threats.
final filteredThreatsProvider = Provider<AsyncValue<List<Threat>>>((ref) {
  final threatsAsync = ref.watch(threatsProvider);
  final query = ref.watch(threatSearchQueryProvider).toLowerCase();
  final statusFilter = ref.watch(threatStatusFilterProvider);
  final severityFilter = ref.watch(threatSeverityFilterProvider);
  final mgmtFilter = ref.watch(threatManagementStateFilterProvider);
  final sortAsc = ref.watch(threatSortAscProvider);

  return threatsAsync.whenData((threats) {
    final filtered = threats.where((t) {
      if (statusFilter != null &&
          t.status?.toLowerCase() != statusFilter.toLowerCase()) {
        return false;
      }
      if (severityFilter != null &&
          t.severity?.toLowerCase() != severityFilter.toLowerCase()) {
        return false;
      }
      if (mgmtFilter != null &&
          t.managementState?.toLowerCase() != mgmtFilter.toLowerCase()) {
        return false;
      }
      if (query.isEmpty) return true;
      final name = t.threatName?.toLowerCase() ?? '';
      final device = t.deviceName?.toLowerCase() ?? '';
      final file = t.fileName?.toLowerCase() ?? '';
      return name.contains(query) ||
          device.contains(query) ||
          file.contains(query);
    }).toList();

    filtered.sort((a, b) {
      final nameA = (a.threatName ?? a.fileName ?? '').toLowerCase();
      final nameB = (b.threatName ?? b.fileName ?? '').toLowerCase();
      return sortAsc ? nameA.compareTo(nameB) : nameB.compareTo(nameA);
    });

    return filtered;
  });
});

/// Vulnerability detail for a specific CVE.
final vulnerabilityDetailProvider =
    FutureProvider.family<Vulnerability, String>((ref, cveId) async {
      final api = await ref.watch(tenantApiProvider.future);
      return api.getVulnerabilityDetail(cveId);
    });

/// Devices affected by a specific CVE.
final vulnerabilityDevicesProvider =
    FutureProvider.family<List<Map<String, dynamic>>, String>((
      ref,
      cveId,
    ) async {
      final api = await ref.watch(tenantApiProvider.future);
      return api.getVulnerabilityDevices(cveId);
    });

/// Software affected by a specific CVE.
final vulnerabilitySoftwareProvider =
    FutureProvider.family<List<Map<String, dynamic>>, String>((
      ref,
      cveId,
    ) async {
      final api = await ref.watch(tenantApiProvider.future);
      return api.getVulnerabilitySoftware(cveId);
    });

/// Search query for audit log.
final auditSearchQueryProvider = StateProvider<String>((ref) => '');

/// Filtered audit events.
final filteredAuditEventsProvider = Provider<AsyncValue<List<AuditEvent>>>((
  ref,
) {
  final eventsAsync = ref.watch(auditEventsProvider);
  final query = ref.watch(auditSearchQueryProvider).toLowerCase();

  return eventsAsync.whenData((events) {
    if (query.isEmpty) return events;
    return events.where((e) {
      final action = e.action?.toLowerCase() ?? '';
      final actor = e.actorId?.toLowerCase() ?? '';
      final targetType = e.targetType?.toLowerCase() ?? '';
      final component = e.targetComponent?.toLowerCase() ?? '';
      final state = e.newState?.toLowerCase() ?? '';
      return action.contains(query) ||
          actor.contains(query) ||
          targetType.contains(query) ||
          component.contains(query) ||
          state.contains(query);
    }).toList();
  });
});

