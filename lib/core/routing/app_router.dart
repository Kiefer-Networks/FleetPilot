import 'package:go_router/go_router.dart';

import '../../presentation/pages/auth/add_profile_page.dart';
import '../../presentation/pages/auth/biometric_gate_page.dart';
import '../../presentation/pages/auth/edit_profile_page.dart';
import '../../presentation/pages/auth/mandatory_pin_setup_page.dart';
import '../../presentation/pages/blueprints/blueprint_detail_page.dart';
import '../../presentation/pages/blueprints/blueprint_list_page.dart';
import '../../presentation/pages/devices/device_detail_page.dart';
import '../../presentation/pages/devices/device_list_page.dart';
import '../../presentation/pages/more/about_page.dart';
import '../../presentation/pages/more/audit_log_page.dart';
import '../../presentation/pages/more/library_item_detail_page.dart';
import '../../presentation/pages/more/library_items_page.dart';
import '../../presentation/pages/more/more_page.dart';
import '../../presentation/pages/more/tags_page.dart';
import '../../presentation/pages/more/threats_page.dart';
import '../../presentation/pages/more/ade_create_page.dart';
import '../../presentation/pages/more/ade_detail_page.dart';
import '../../presentation/pages/more/ade_integrations_page.dart';
import '../../presentation/pages/more/behavioral_detections_page.dart';
import '../../presentation/pages/more/blueprint_routing_page.dart';
import '../../presentation/pages/more/self_service_page.dart';
import '../../presentation/pages/more/vulnerabilities_page.dart';
import '../../presentation/pages/more/vulnerability_detail_page.dart';
import '../../presentation/pages/onboarding/onboarding_page.dart';
import '../../presentation/pages/prism/prism_detail_page.dart';
import '../../presentation/pages/prism/prism_page.dart';
import '../../presentation/pages/root_shell.dart';
import '../../presentation/pages/settings/security_settings_page.dart';
import '../../presentation/pages/settings/settings_page.dart';
import '../../presentation/pages/users/user_detail_page.dart';
import '../../presentation/pages/users/user_list_page.dart';

GoRouter createRouter({
  required bool hasProfile,
  required bool hasPinLock,
  required bool hasCompletedOnboarding,
}) {
  final String initialLocation;
  if (!hasCompletedOnboarding) {
    initialLocation = '/onboarding';
  } else if (!hasProfile) {
    initialLocation = '/auth/setup';
  } else if (!hasPinLock) {
    initialLocation = '/auth/pin-setup';
  } else {
    initialLocation = '/auth/biometric';
  }

  return GoRouter(
    initialLocation: initialLocation,
    routes: [
      GoRoute(
        path: '/onboarding',
        builder: (context, state) => const OnboardingPage(),
      ),

      // Auth routes (no shell)
      GoRoute(
        path: '/auth/setup',
        builder: (context, state) => const AddProfilePage(),
      ),
      GoRoute(
        path: '/auth/biometric',
        builder: (context, state) => const BiometricGatePage(),
      ),
      GoRoute(
        path: '/auth/pin-setup',
        builder: (context, state) => const MandatoryPinSetupPage(),
      ),

      // Main app routes with shell navigation
      ShellRoute(
        builder: (context, state, child) => RootShell(child: child),
        routes: [
          GoRoute(
            path: '/devices',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: DeviceListPage()),
            routes: [
              GoRoute(
                path: ':deviceId',
                builder: (context, state) {
                  final deviceId = state.pathParameters['deviceId']!;
                  return DeviceDetailPage(deviceId: deviceId);
                },
              ),
            ],
          ),
          GoRoute(
            path: '/prism',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: PrismPage()),
            routes: [
              GoRoute(
                path: ':category',
                builder: (context, state) {
                  final category = state.pathParameters['category']!;
                  return PrismDetailPage(category: category);
                },
              ),
            ],
          ),
          GoRoute(
            path: '/blueprints',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: BlueprintListPage()),
            routes: [
              GoRoute(
                path: ':blueprintId',
                builder: (context, state) {
                  final blueprintId = state.pathParameters['blueprintId']!;
                  return BlueprintDetailPage(blueprintId: blueprintId);
                },
              ),
            ],
          ),
          GoRoute(
            path: '/users',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: UserListPage()),
            routes: [
              GoRoute(
                path: ':userId',
                builder: (context, state) {
                  final userId = state.pathParameters['userId']!;
                  return UserDetailPage(userId: userId);
                },
              ),
            ],
          ),
          GoRoute(
            path: '/more',
            pageBuilder: (context, state) =>
                const NoTransitionPage(child: MorePage()),
            routes: [
              GoRoute(
                path: 'settings',
                builder: (context, state) => const SettingsPage(),
                routes: [
                  GoRoute(
                    path: 'security',
                    builder: (context, state) => const SecuritySettingsPage(),
                  ),
                  GoRoute(
                    path: 'edit-profile/:profileId',
                    builder: (context, state) {
                      final profileId = state.pathParameters['profileId']!;
                      return EditProfilePage(profileId: profileId);
                    },
                  ),
                ],
              ),
              GoRoute(
                path: 'about',
                builder: (context, state) => const AboutPage(),
              ),
              GoRoute(
                path: 'library-items',
                builder: (context, state) => const LibraryItemsPage(),
              ),
              GoRoute(
                path: 'library-items/:itemId',
                builder: (context, state) {
                  final itemId = state.pathParameters['itemId']!;
                  final itemName =
                      state.uri.queryParameters['name'] ?? 'Library Item';
                  final itemType = state.uri.queryParameters['type'];
                  return LibraryItemDetailPage(
                    itemId: itemId,
                    itemName: itemName,
                    itemType: itemType,
                  );
                },
              ),
              GoRoute(
                path: 'threats',
                builder: (context, state) => const ThreatsPage(),
              ),
              GoRoute(
                path: 'vulnerabilities',
                builder: (context, state) => const VulnerabilitiesPage(),
                routes: [
                  GoRoute(
                    path: ':cveId',
                    builder: (context, state) {
                      final cveId = state.pathParameters['cveId']!;
                      return VulnerabilityDetailPage(cveId: cveId);
                    },
                  ),
                ],
              ),
              GoRoute(
                path: 'audit-log',
                builder: (context, state) => const AuditLogPage(),
              ),
              GoRoute(
                path: 'ade-integrations',
                builder: (context, state) => const AdeIntegrationsPage(),
                routes: [
                  GoRoute(
                    path: 'create',
                    builder: (context, state) => const AdeCreatePage(),
                  ),
                  GoRoute(
                    path: ':integrationId',
                    builder: (context, state) {
                      final integrationId =
                          state.pathParameters['integrationId']!;
                      return AdeDetailPage(integrationId: integrationId);
                    },
                  ),
                ],
              ),
              GoRoute(
                path: 'behavioral-detections',
                builder: (context, state) => const BehavioralDetectionsPage(),
              ),
              GoRoute(
                path: 'tags',
                builder: (context, state) => const TagsPage(),
              ),
              GoRoute(
                path: 'blueprint-routing',
                builder: (context, state) => const BlueprintRoutingPage(),
              ),
              GoRoute(
                path: 'self-service',
                builder: (context, state) => const SelfServicePage(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
