import 'package:flutter_riverpod/flutter_riverpod.dart';

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

/// Filtered behavioral detections.
final filteredBehavioralDetectionsProvider =
    Provider<AsyncValue<List<BehavioralDetection>>>((ref) {
      final detectionsAsync = ref.watch(behavioralDetectionsProvider);
      final query = ref.watch(behavioralSearchQueryProvider).toLowerCase();

      return detectionsAsync.whenData((detections) {
        if (query.isEmpty) return detections;
        return detections.where((d) {
          final name = d.threatName?.toLowerCase() ?? '';
          final device = d.deviceName?.toLowerCase() ?? '';
          final process = d.processName?.toLowerCase() ?? '';
          final classification = d.classification?.toLowerCase() ?? '';
          return name.contains(query) ||
              device.contains(query) ||
              process.contains(query) ||
              classification.contains(query);
        }).toList();
      });
    });

/// Search query for vulnerability list.
final vulnSearchQueryProvider = StateProvider<String>((ref) => '');

/// Severity filter for vulnerabilities.
final vulnSeverityFilterProvider = StateProvider<String?>((ref) => null);

/// Filtered vulnerabilities.
final filteredVulnerabilitiesProvider =
    Provider<AsyncValue<List<Vulnerability>>>((ref) {
      final vulnsAsync = ref.watch(vulnerabilitiesProvider);
      final query = ref.watch(vulnSearchQueryProvider).toLowerCase();
      final severityFilter = ref.watch(vulnSeverityFilterProvider);

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
        });
        return filtered.toList();
      });
    });

/// Search query for threat list.
final threatSearchQueryProvider = StateProvider<String>((ref) => '');

/// Filtered threats.
final filteredThreatsProvider = Provider<AsyncValue<List<Threat>>>((ref) {
  final threatsAsync = ref.watch(threatsProvider);
  final query = ref.watch(threatSearchQueryProvider).toLowerCase();

  return threatsAsync.whenData((threats) {
    if (query.isEmpty) return threats;
    return threats.where((t) {
      final name = t.threatName?.toLowerCase() ?? '';
      final device = t.deviceName?.toLowerCase() ?? '';
      final file = t.fileName?.toLowerCase() ?? '';
      return name.contains(query) ||
          device.contains(query) ||
          file.contains(query);
    }).toList();
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
      final desc = e.eventDescription?.toLowerCase() ?? '';
      final action = e.eventAction?.toLowerCase() ?? '';
      final admin = e.adminName?.toLowerCase() ?? '';
      final device = e.deviceName?.toLowerCase() ?? '';
      return desc.contains(query) ||
          action.contains(query) ||
          admin.contains(query) ||
          device.contains(query);
    }).toList();
  });
});
