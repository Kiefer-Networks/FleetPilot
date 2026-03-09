import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_cs.dart';
import 'app_localizations_da.dart';
import 'app_localizations_de.dart';
import 'app_localizations_en.dart';
import 'app_localizations_es.dart';
import 'app_localizations_fr.dart';
import 'app_localizations_hi.dart';
import 'app_localizations_hr.dart';
import 'app_localizations_id.dart';
import 'app_localizations_it.dart';
import 'app_localizations_ja.dart';
import 'app_localizations_ko.dart';
import 'app_localizations_nb.dart';
import 'app_localizations_nl.dart';
import 'app_localizations_pl.dart';
import 'app_localizations_pt.dart';
import 'app_localizations_ro.dart';
import 'app_localizations_ru.dart';
import 'app_localizations_sv.dart';
import 'app_localizations_th.dart';
import 'app_localizations_tr.dart';
import 'app_localizations_uk.dart';
import 'app_localizations_vi.dart';
import 'app_localizations_zh.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale)
    : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate =
      _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates =
      <LocalizationsDelegate<dynamic>>[
        delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('cs'),
    Locale('da'),
    Locale('de'),
    Locale('en'),
    Locale('es'),
    Locale('fr'),
    Locale('hi'),
    Locale('hr'),
    Locale('id'),
    Locale('it'),
    Locale('ja'),
    Locale('ko'),
    Locale('nb'),
    Locale('nl'),
    Locale('pl'),
    Locale('pt'),
    Locale('ro'),
    Locale('ru'),
    Locale('sv'),
    Locale('th'),
    Locale('tr'),
    Locale('uk'),
    Locale('vi'),
    Locale('zh'),
  ];

  /// The application title
  ///
  /// In en, this message translates to:
  /// **'FleetPilot'**
  String get appTitle;

  /// Navigation label for devices tab
  ///
  /// In en, this message translates to:
  /// **'Devices'**
  String get navDevices;

  /// Navigation label for blueprints tab
  ///
  /// In en, this message translates to:
  /// **'Blueprints'**
  String get navBlueprints;

  /// Navigation label for users tab
  ///
  /// In en, this message translates to:
  /// **'Users'**
  String get navUsers;

  /// Navigation label for settings tab
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get navSettings;

  /// Title on the welcome/onboarding screen
  ///
  /// In en, this message translates to:
  /// **'Welcome to FleetPilot'**
  String get welcomeTitle;

  /// Subtitle on the welcome screen
  ///
  /// In en, this message translates to:
  /// **'Manage your Apple device fleet from anywhere.'**
  String get welcomeSubtitle;

  /// Button label to add a new connection profile
  ///
  /// In en, this message translates to:
  /// **'Add Profile'**
  String get addProfile;

  /// Title for editing a profile
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// Label for profile display name field
  ///
  /// In en, this message translates to:
  /// **'Display Name'**
  String get displayName;

  /// Hint text for profile display name
  ///
  /// In en, this message translates to:
  /// **'e.g. Acme Corp — Prod'**
  String get displayNameHint;

  /// Label for region selector
  ///
  /// In en, this message translates to:
  /// **'Region'**
  String get region;

  /// US region label
  ///
  /// In en, this message translates to:
  /// **'US'**
  String get regionUs;

  /// EU region label
  ///
  /// In en, this message translates to:
  /// **'EU'**
  String get regionEu;

  /// Label for subdomain field
  ///
  /// In en, this message translates to:
  /// **'Subdomain'**
  String get subdomain;

  /// Hint text for subdomain field
  ///
  /// In en, this message translates to:
  /// **'your-tenant'**
  String get subdomainHint;

  /// Label for API token field
  ///
  /// In en, this message translates to:
  /// **'API Token'**
  String get apiToken;

  /// Hint text for API token field
  ///
  /// In en, this message translates to:
  /// **'Paste your API token here'**
  String get apiTokenHint;

  /// Preview of constructed API URL
  ///
  /// In en, this message translates to:
  /// **'API URL: {url}'**
  String urlPreview(String url);

  /// Button label for verifying and saving credentials
  ///
  /// In en, this message translates to:
  /// **'Verify & Save'**
  String get verifyAndSave;

  /// Loading message during credential verification
  ///
  /// In en, this message translates to:
  /// **'Verifying connection...'**
  String get verifying;

  /// Success message after credential verification
  ///
  /// In en, this message translates to:
  /// **'Connection verified successfully!'**
  String get connectionSuccess;

  /// Error message for 401 response
  ///
  /// In en, this message translates to:
  /// **'Invalid API token. Please check your token in the web console.'**
  String get errorInvalidToken;

  /// Error message for 403 response
  ///
  /// In en, this message translates to:
  /// **'Token lacks required permissions. Ensure the token has read access to Devices.'**
  String get errorInsufficientPermissions;

  /// Error message for network failures
  ///
  /// In en, this message translates to:
  /// **'Could not reach the API. Check your internet connection and subdomain.'**
  String get errorNetworkUnreachable;

  /// Error message for 404 response
  ///
  /// In en, this message translates to:
  /// **'The requested resource was not found.'**
  String get errorNotFound;

  /// Error message for 422 response
  ///
  /// In en, this message translates to:
  /// **'The request contained invalid data. Please check your input.'**
  String get errorValidation;

  /// Error message for 429 response
  ///
  /// In en, this message translates to:
  /// **'Too many requests. Please wait a moment and try again.'**
  String get errorRateLimit;

  /// Error message for 500 response
  ///
  /// In en, this message translates to:
  /// **'The server encountered an error. Please try again later.'**
  String get errorServer;

  /// Error message for unexpected errors
  ///
  /// In en, this message translates to:
  /// **'An unexpected error occurred. Please try again.'**
  String get errorUnexpected;

  /// Retry button label
  ///
  /// In en, this message translates to:
  /// **'Retry'**
  String get retry;

  /// Cancel button label
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// Delete button label
  ///
  /// In en, this message translates to:
  /// **'Delete'**
  String get delete;

  /// Save button label
  ///
  /// In en, this message translates to:
  /// **'Save'**
  String get save;

  /// Search label
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// Placeholder for device search bar
  ///
  /// In en, this message translates to:
  /// **'Search devices...'**
  String get searchDevices;

  /// Filter chip label for all items
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get filterAll;

  /// Filter chip label for Mac devices
  ///
  /// In en, this message translates to:
  /// **'Mac'**
  String get filterMac;

  /// Filter chip label for iPhone devices
  ///
  /// In en, this message translates to:
  /// **'iPhone'**
  String get filterIphone;

  /// Filter chip label for iPad devices
  ///
  /// In en, this message translates to:
  /// **'iPad'**
  String get filterIpad;

  /// Filter chip label for Apple TV devices
  ///
  /// In en, this message translates to:
  /// **'Apple TV'**
  String get filterAppleTv;

  /// Filter chip label for all blueprints
  ///
  /// In en, this message translates to:
  /// **'All Blueprints'**
  String get allBlueprints;

  /// Loading indicator during device pagination
  ///
  /// In en, this message translates to:
  /// **'Loading {count} devices...'**
  String loadingDevices(int count);

  /// Device count display
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No devices} =1{1 device} other{{count} devices}}'**
  String deviceCount(int count);

  /// Empty state title when no devices match
  ///
  /// In en, this message translates to:
  /// **'No devices found'**
  String get noDevicesFound;

  /// Empty state message when no devices match
  ///
  /// In en, this message translates to:
  /// **'Try adjusting your search or filters.'**
  String get noDevicesFoundMessage;

  /// Label for last check-in time
  ///
  /// In en, this message translates to:
  /// **'Last check-in: {time}'**
  String lastCheckIn(String time);

  /// Compliance status pass
  ///
  /// In en, this message translates to:
  /// **'Pass'**
  String get compliancePass;

  /// Compliance status fail
  ///
  /// In en, this message translates to:
  /// **'Fail'**
  String get complianceFail;

  /// Compliance status pending
  ///
  /// In en, this message translates to:
  /// **'Pending'**
  String get compliancePending;

  /// Title for device detail screen
  ///
  /// In en, this message translates to:
  /// **'Device Details'**
  String get deviceDetails;

  /// Label for serial number
  ///
  /// In en, this message translates to:
  /// **'Serial Number'**
  String get serialNumber;

  /// Label for device model
  ///
  /// In en, this message translates to:
  /// **'Model'**
  String get model;

  /// Label for OS version
  ///
  /// In en, this message translates to:
  /// **'OS Version'**
  String get osVersion;

  /// Label for asset tag
  ///
  /// In en, this message translates to:
  /// **'Asset Tag'**
  String get assetTag;

  /// Label for blueprint
  ///
  /// In en, this message translates to:
  /// **'Blueprint'**
  String get blueprint;

  /// Label for enrollment date
  ///
  /// In en, this message translates to:
  /// **'Enrolled'**
  String get enrolledDate;

  /// Label for assigned user
  ///
  /// In en, this message translates to:
  /// **'Assigned User'**
  String get assignedUser;

  /// Title for actions section
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get actions;

  /// Device action: lock
  ///
  /// In en, this message translates to:
  /// **'Lock'**
  String get actionLock;

  /// Device action: restart
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get actionRestart;

  /// Device action: shutdown
  ///
  /// In en, this message translates to:
  /// **'Shutdown'**
  String get actionShutdown;

  /// Device action: erase
  ///
  /// In en, this message translates to:
  /// **'Erase'**
  String get actionErase;

  /// Device action: send blank push
  ///
  /// In en, this message translates to:
  /// **'Send Blank Push'**
  String get actionBlankPush;

  /// Device action: reinstall agent
  ///
  /// In en, this message translates to:
  /// **'Reinstall Agent'**
  String get actionReinstallAgent;

  /// Device action: update inventory
  ///
  /// In en, this message translates to:
  /// **'Update Inventory'**
  String get actionUpdateInventory;

  /// Device action: recovery lock
  ///
  /// In en, this message translates to:
  /// **'Recovery Lock'**
  String get actionRecoveryLock;

  /// Device action: enable remote desktop
  ///
  /// In en, this message translates to:
  /// **'Enable Remote Desktop'**
  String get actionRemoteDesktopEnable;

  /// Device action: disable remote desktop
  ///
  /// In en, this message translates to:
  /// **'Disable Remote Desktop'**
  String get actionRemoteDesktopDisable;

  /// Device action: enable lost mode for mobile devices
  ///
  /// In en, this message translates to:
  /// **'Enable Lost Mode'**
  String get actionLostMode;

  /// Title for destructive action confirmation dialog
  ///
  /// In en, this message translates to:
  /// **'Confirm Destructive Action'**
  String get destructiveActionTitle;

  /// Message for destructive action confirmation
  ///
  /// In en, this message translates to:
  /// **'This action cannot be undone. Type \"{deviceName}\" to confirm.'**
  String destructiveActionMessage(String deviceName);

  /// Hint for destructive action confirmation input
  ///
  /// In en, this message translates to:
  /// **'Type device name to confirm'**
  String get destructiveActionHint;

  /// Confirm button label
  ///
  /// In en, this message translates to:
  /// **'Confirm'**
  String get confirm;

  /// Success message after device action
  ///
  /// In en, this message translates to:
  /// **'Action completed successfully.'**
  String get actionSuccess;

  /// Error message after device action failure
  ///
  /// In en, this message translates to:
  /// **'Action failed. Please try again.'**
  String get actionFailed;

  /// Reason shown in biometric prompt
  ///
  /// In en, this message translates to:
  /// **'Authenticate to access FleetPilot'**
  String get biometricReason;

  /// Reason shown in biometric prompt for secret access
  ///
  /// In en, this message translates to:
  /// **'Authenticate to view sensitive data'**
  String get biometricReasonSecrets;

  /// Reason shown in biometric prompt for destructive actions
  ///
  /// In en, this message translates to:
  /// **'Authenticate to perform this action'**
  String get biometricReasonDestructive;

  /// Error message when biometric auth fails
  ///
  /// In en, this message translates to:
  /// **'Authentication failed. Please try again.'**
  String get biometricFailed;

  /// Title for profiles section in settings
  ///
  /// In en, this message translates to:
  /// **'Profiles'**
  String get profiles;

  /// Active profile indicator
  ///
  /// In en, this message translates to:
  /// **'Active: {name}'**
  String activeProfile(String name);

  /// Label for profile switcher
  ///
  /// In en, this message translates to:
  /// **'Switch Profile'**
  String get switchProfile;

  /// Label for delete profile action
  ///
  /// In en, this message translates to:
  /// **'Delete Profile'**
  String get deleteProfile;

  /// Confirmation message for profile deletion
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this profile? This action cannot be undone.'**
  String get deleteProfileConfirm;

  /// Empty state when no profiles exist
  ///
  /// In en, this message translates to:
  /// **'No profiles configured'**
  String get noProfiles;

  /// Settings page title
  ///
  /// In en, this message translates to:
  /// **'Settings'**
  String get settings;

  /// About section label
  ///
  /// In en, this message translates to:
  /// **'About'**
  String get about;

  /// Version display
  ///
  /// In en, this message translates to:
  /// **'Version {version}'**
  String version(String version);

  /// Validation error for empty required fields
  ///
  /// In en, this message translates to:
  /// **'This field is required.'**
  String get validationRequired;

  /// Validation error for invalid subdomain
  ///
  /// In en, this message translates to:
  /// **'Only letters, numbers, and hyphens allowed. No leading or trailing hyphens.'**
  String get validationSubdomain;

  /// Validation error for invalid API token format
  ///
  /// In en, this message translates to:
  /// **'Invalid token format. Must be 20–500 characters, alphanumeric and common delimiters only.'**
  String get validationToken;

  /// Error shown when PIN entry is rate-limited
  ///
  /// In en, this message translates to:
  /// **'Too many failed attempts. Try again in {seconds} seconds.'**
  String pinLockedOut(int seconds);

  /// Title for compliance status section
  ///
  /// In en, this message translates to:
  /// **'Compliance Status'**
  String get complianceStatus;

  /// Label for device platform
  ///
  /// In en, this message translates to:
  /// **'Platform'**
  String get platform;

  /// Label for device name
  ///
  /// In en, this message translates to:
  /// **'Device Name'**
  String get deviceName;

  /// Placeholder for user search bar
  ///
  /// In en, this message translates to:
  /// **'Search users...'**
  String get searchUsers;

  /// User count display
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No users} =1{1 user} other{{count} users}}'**
  String userCount(int count);

  /// Empty state title when no users match
  ///
  /// In en, this message translates to:
  /// **'No users found'**
  String get noUsersFound;

  /// Empty state message when no users match
  ///
  /// In en, this message translates to:
  /// **'Try adjusting your search or filters.'**
  String get noUsersFoundMessage;

  /// Label for showing archived users toggle
  ///
  /// In en, this message translates to:
  /// **'Show Archived'**
  String get showArchived;

  /// Label for archived status
  ///
  /// In en, this message translates to:
  /// **'Archived'**
  String get archived;

  /// Label for email
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// Blueprint count display
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No blueprints} =1{1 blueprint} other{{count} blueprints}}'**
  String blueprintCount(int count);

  /// Empty state title when no blueprints found
  ///
  /// In en, this message translates to:
  /// **'No blueprints found'**
  String get noBlueprintsFound;

  /// Empty state message when no blueprints found
  ///
  /// In en, this message translates to:
  /// **'No blueprints have been configured yet.'**
  String get noBlueprintsFoundMessage;

  /// Label for active enrollment code
  ///
  /// In en, this message translates to:
  /// **'Enrollment Active'**
  String get enrollmentActive;

  /// Label for inactive enrollment code
  ///
  /// In en, this message translates to:
  /// **'Enrollment Inactive'**
  String get enrollmentInactive;

  /// Tab label for device overview
  ///
  /// In en, this message translates to:
  /// **'Overview'**
  String get tabOverview;

  /// Tab label for installed apps
  ///
  /// In en, this message translates to:
  /// **'Apps'**
  String get tabApps;

  /// Tab label for device status
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get tabStatus;

  /// Tab label for device activity
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get tabActivity;

  /// Tab label for MDM commands
  ///
  /// In en, this message translates to:
  /// **'Commands'**
  String get tabCommands;

  /// Section title for hardware info
  ///
  /// In en, this message translates to:
  /// **'Hardware'**
  String get hardware;

  /// Section title for security info
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get security;

  /// Label for total storage capacity
  ///
  /// In en, this message translates to:
  /// **'Total Storage'**
  String get totalStorage;

  /// Label for available storage
  ///
  /// In en, this message translates to:
  /// **'Available Storage'**
  String get availableStorage;

  /// Label for total RAM
  ///
  /// In en, this message translates to:
  /// **'Total RAM'**
  String get totalRam;

  /// Label for Wi-Fi MAC address
  ///
  /// In en, this message translates to:
  /// **'Wi-Fi MAC Address'**
  String get wifiMac;

  /// Label for encryption status
  ///
  /// In en, this message translates to:
  /// **'Encryption'**
  String get encryption;

  /// Label for passcode status
  ///
  /// In en, this message translates to:
  /// **'Passcode'**
  String get passcode;

  /// Empty state when no apps on device
  ///
  /// In en, this message translates to:
  /// **'No apps found'**
  String get noAppsFound;

  /// Empty state when no activity on device
  ///
  /// In en, this message translates to:
  /// **'No activity found'**
  String get noActivityFound;

  /// Empty state when no commands for device
  ///
  /// In en, this message translates to:
  /// **'No commands found'**
  String get noCommandsFound;

  /// Section title for library items
  ///
  /// In en, this message translates to:
  /// **'Library Items'**
  String get libraryItems;

  /// Section title for parameters
  ///
  /// In en, this message translates to:
  /// **'Parameters'**
  String get parameters;

  /// Label for IMEI number
  ///
  /// In en, this message translates to:
  /// **'IMEI'**
  String get imei;

  /// Label for OS build number
  ///
  /// In en, this message translates to:
  /// **'OS Build'**
  String get osBuild;

  /// Section title for cellular info
  ///
  /// In en, this message translates to:
  /// **'Cellular'**
  String get cellular;

  /// App count display
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No apps} =1{1 app} other{{count} apps}}'**
  String appCount(int count);

  /// Sort ascending label
  ///
  /// In en, this message translates to:
  /// **'A → Z'**
  String get sortAZ;

  /// Sort descending label
  ///
  /// In en, this message translates to:
  /// **'Z → A'**
  String get sortZA;

  /// Title for user detail screen
  ///
  /// In en, this message translates to:
  /// **'User Details'**
  String get userDetails;

  /// Label for job title
  ///
  /// In en, this message translates to:
  /// **'Job Title'**
  String get jobTitle;

  /// Label for department
  ///
  /// In en, this message translates to:
  /// **'Department'**
  String get department;

  /// Label for creation date
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get createdAt;

  /// Label for last update date
  ///
  /// In en, this message translates to:
  /// **'Updated'**
  String get updatedAt;

  /// Section title for user's devices
  ///
  /// In en, this message translates to:
  /// **'Assigned Devices'**
  String get assignedDevices;

  /// Empty state when user has no devices
  ///
  /// In en, this message translates to:
  /// **'No devices assigned to this user.'**
  String get noAssignedDevices;

  /// Section title for user information
  ///
  /// In en, this message translates to:
  /// **'User Info'**
  String get userInfo;

  /// Navigation label for more tab
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get navMore;

  /// Tab label for device secrets
  ///
  /// In en, this message translates to:
  /// **'Secrets'**
  String get tabSecrets;

  /// Label for FileVault recovery key
  ///
  /// In en, this message translates to:
  /// **'FileVault Recovery Key'**
  String get filevaultKey;

  /// Label for device unlock PIN
  ///
  /// In en, this message translates to:
  /// **'Unlock PIN'**
  String get unlockPin;

  /// Label for recovery lock password
  ///
  /// In en, this message translates to:
  /// **'Recovery Lock Password'**
  String get recoveryPassword;

  /// Label for activation lock bypass code
  ///
  /// In en, this message translates to:
  /// **'Activation Lock Bypass Code'**
  String get bypassCode;

  /// Empty state when no secrets found
  ///
  /// In en, this message translates to:
  /// **'No secrets available for this device.'**
  String get noSecretsFound;

  /// Snackbar message when secret is copied
  ///
  /// In en, this message translates to:
  /// **'Secret copied to clipboard'**
  String get secretCopied;

  /// Title for threats section
  ///
  /// In en, this message translates to:
  /// **'Threats'**
  String get threats;

  /// Empty state when no threats found
  ///
  /// In en, this message translates to:
  /// **'No threats detected.'**
  String get noThreatsFound;

  /// Title for vulnerabilities section
  ///
  /// In en, this message translates to:
  /// **'Vulnerabilities'**
  String get vulnerabilities;

  /// Empty state when no vulnerabilities found
  ///
  /// In en, this message translates to:
  /// **'No vulnerabilities detected.'**
  String get noVulnerabilitiesFound;

  /// Title for about section
  ///
  /// In en, this message translates to:
  /// **'About FleetPilot'**
  String get aboutApp;

  /// App description in about
  ///
  /// In en, this message translates to:
  /// **'FleetPilot is an open-source mobile MDM management app for Apple device fleets.'**
  String get aboutDescription;

  /// Hint to tap to copy a secret
  ///
  /// In en, this message translates to:
  /// **'Tap to copy'**
  String get tapToCopy;

  /// Label for devices count
  ///
  /// In en, this message translates to:
  /// **'Devices'**
  String get devices;

  /// Label for vulnerability severity
  ///
  /// In en, this message translates to:
  /// **'Severity'**
  String get severity;

  /// Tab label for device location
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get tabLocation;

  /// Message when no location data is available
  ///
  /// In en, this message translates to:
  /// **'Location data is not available for this device.'**
  String get locationNotAvailable;

  /// Hint text shown on location tab when lost mode is not enabled
  ///
  /// In en, this message translates to:
  /// **'Enable Lost Mode to track this device.'**
  String get enableLostModeHint;

  /// Label for lost mode enabled status
  ///
  /// In en, this message translates to:
  /// **'Lost Mode Enabled'**
  String get lostModeEnabled;

  /// Empty state when no library items found
  ///
  /// In en, this message translates to:
  /// **'No library items found.'**
  String get noLibraryItemsFound;

  /// Label for licenses section
  ///
  /// In en, this message translates to:
  /// **'Licenses'**
  String get licenses;

  /// Label for lost mode message field
  ///
  /// In en, this message translates to:
  /// **'Lost Mode Message'**
  String get lostModeMessage;

  /// Label for lost mode phone number field
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get lostModePhone;

  /// Footnote explaining lost mode message and phone fields
  ///
  /// In en, this message translates to:
  /// **'Optional message and phone number shown on device'**
  String get lostModeFootnote;

  /// Label for supervised device status
  ///
  /// In en, this message translates to:
  /// **'Supervised'**
  String get supervised;

  /// Label for unsupervised device status
  ///
  /// In en, this message translates to:
  /// **'Unsupervised'**
  String get unsupervised;

  /// Filter chip label for supervised devices
  ///
  /// In en, this message translates to:
  /// **'Supervised'**
  String get filterSupervised;

  /// Filter chip label for unsupervised devices
  ///
  /// In en, this message translates to:
  /// **'Unsupervised'**
  String get filterUnsupervised;

  /// Label for language setting
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// Label for system default language option
  ///
  /// In en, this message translates to:
  /// **'System Default'**
  String get languageSystem;

  /// Device action: disable lost mode
  ///
  /// In en, this message translates to:
  /// **'Disable Lost Mode'**
  String get actionDisableLostMode;

  /// Device action: clear passcode
  ///
  /// In en, this message translates to:
  /// **'Clear Passcode'**
  String get actionClearPasscode;

  /// Filter chip label for devices in lost mode
  ///
  /// In en, this message translates to:
  /// **'Lost Mode'**
  String get filterLostMode;

  /// Label for lost mode status badge
  ///
  /// In en, this message translates to:
  /// **'Lost Mode'**
  String get lostMode;

  /// Section title for device management info
  ///
  /// In en, this message translates to:
  /// **'Management'**
  String get sectionManagement;

  /// Section title for device status indicators
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get sectionStatus;

  /// Status label for missing device
  ///
  /// In en, this message translates to:
  /// **'Missing'**
  String get statusMissing;

  /// Status label for removed device
  ///
  /// In en, this message translates to:
  /// **'Removed'**
  String get statusRemoved;

  /// Label for device agent version
  ///
  /// In en, this message translates to:
  /// **'Agent'**
  String get agent;

  /// Label for hardware model identifier
  ///
  /// In en, this message translates to:
  /// **'Identifier'**
  String get identifier;

  /// Label for device processor
  ///
  /// In en, this message translates to:
  /// **'Processor'**
  String get processor;

  /// Label for hardware UUID
  ///
  /// In en, this message translates to:
  /// **'Hardware UUID'**
  String get hardwareUuid;

  /// Label for device posture security status
  ///
  /// In en, this message translates to:
  /// **'Device Posture'**
  String get devicePosture;

  /// Fallback name for a device with no name
  ///
  /// In en, this message translates to:
  /// **'Unknown Device'**
  String get unknownDevice;

  /// Title for app lock section in security settings
  ///
  /// In en, this message translates to:
  /// **'App Lock'**
  String get securityAppLock;

  /// Description for app lock feature
  ///
  /// In en, this message translates to:
  /// **'Set a 6-digit PIN to protect the app. Biometric authentication can be enabled after setting a PIN.'**
  String get securityAppLockDescription;

  /// Subtitle when app lock is active
  ///
  /// In en, this message translates to:
  /// **'App lock enabled'**
  String get securityAppLockActive;

  /// Subtitle when app lock is not configured
  ///
  /// In en, this message translates to:
  /// **'No app lock configured'**
  String get securityAppLockInactive;

  /// Button label to set a new PIN
  ///
  /// In en, this message translates to:
  /// **'Set PIN'**
  String get securitySetPin;

  /// Button label to change existing PIN
  ///
  /// In en, this message translates to:
  /// **'Change PIN'**
  String get securityChangePin;

  /// Button label to remove PIN
  ///
  /// In en, this message translates to:
  /// **'Remove PIN'**
  String get securityRemovePin;

  /// Dialog title for entering current PIN
  ///
  /// In en, this message translates to:
  /// **'Current PIN'**
  String get securityCurrentPin;

  /// Dialog title for entering new PIN
  ///
  /// In en, this message translates to:
  /// **'New PIN'**
  String get securityNewPin;

  /// Label for PIN confirmation step
  ///
  /// In en, this message translates to:
  /// **'Enter the PIN again to confirm.'**
  String get securityConfirmPin;

  /// Error when PIN is not 6 digits
  ///
  /// In en, this message translates to:
  /// **'PIN must be 6 digits.'**
  String get securityPinLength;

  /// Error when confirmation PIN does not match
  ///
  /// In en, this message translates to:
  /// **'PINs do not match.'**
  String get securityPinMismatch;

  /// Error when entered PIN is wrong
  ///
  /// In en, this message translates to:
  /// **'Incorrect PIN.'**
  String get securityPinWrong;

  /// Snackbar after PIN is set
  ///
  /// In en, this message translates to:
  /// **'PIN has been set.'**
  String get securityPinSet;

  /// Snackbar after PIN is changed
  ///
  /// In en, this message translates to:
  /// **'PIN has been changed.'**
  String get securityPinChanged;

  /// Snackbar after PIN is removed
  ///
  /// In en, this message translates to:
  /// **'PIN and app lock have been removed.'**
  String get securityPinRemoved;

  /// Title for biometric section
  ///
  /// In en, this message translates to:
  /// **'Biometric'**
  String get securityBiometric;

  /// Description for biometric feature
  ///
  /// In en, this message translates to:
  /// **'Use fingerprint or face recognition to unlock the app instead of entering the PIN.'**
  String get securityBiometricDescription;

  /// Toggle label for biometric unlock
  ///
  /// In en, this message translates to:
  /// **'Biometric Unlock'**
  String get securityBiometricEnable;

  /// Subtitle when biometric is active
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get securityBiometricActive;

  /// Subtitle when biometric is inactive
  ///
  /// In en, this message translates to:
  /// **'Inactive'**
  String get securityBiometricInactive;

  /// Error when biometric is not available
  ///
  /// In en, this message translates to:
  /// **'Biometric authentication is not available on this device.'**
  String get securityBiometricUnavailable;

  /// Button label for next step in PIN setup
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get securityNext;

  /// Device action: renew MDM profile
  ///
  /// In en, this message translates to:
  /// **'Renew MDM Profile'**
  String get actionRenewMdm;

  /// Device action: set device name
  ///
  /// In en, this message translates to:
  /// **'Set Device Name'**
  String get actionSetName;

  /// Hint for set device name input
  ///
  /// In en, this message translates to:
  /// **'Enter new device name'**
  String get actionSetNameHint;

  /// Device action: delete user from Mac
  ///
  /// In en, this message translates to:
  /// **'Delete User'**
  String get actionDeleteUser;

  /// Label for username field in delete user dialog
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get actionDeleteUserName;

  /// Checkbox label for deleting all users
  ///
  /// In en, this message translates to:
  /// **'Delete all users'**
  String get actionDeleteAllUsers;

  /// Checkbox label for forcing user deletion
  ///
  /// In en, this message translates to:
  /// **'Force deletion'**
  String get actionForceDeletion;

  /// Device action: unlock user account on Mac
  ///
  /// In en, this message translates to:
  /// **'Unlock Account'**
  String get actionUnlockAccount;

  /// Device action: play sound on lost device
  ///
  /// In en, this message translates to:
  /// **'Play Lost Mode Sound'**
  String get actionPlayLostModeSound;

  /// Device action: update device location
  ///
  /// In en, this message translates to:
  /// **'Update Location'**
  String get actionUpdateLocation;

  /// Label for erase PIN field
  ///
  /// In en, this message translates to:
  /// **'6-Digit PIN'**
  String get erasePin;

  /// Hint for erase PIN
  ///
  /// In en, this message translates to:
  /// **'Required for mobile devices'**
  String get erasePinHint;

  /// Checkbox label for preserving cellular data plan
  ///
  /// In en, this message translates to:
  /// **'Preserve data plan'**
  String get erasePreserveDataPlan;

  /// Checkbox label for disallowing proximity setup
  ///
  /// In en, this message translates to:
  /// **'Disallow proximity setup'**
  String get eraseDisallowProximitySetup;

  /// Checkbox label for return to service after erase
  ///
  /// In en, this message translates to:
  /// **'Return to service'**
  String get eraseReturnToService;

  /// Label for lock message field in bulk lock dialog
  ///
  /// In en, this message translates to:
  /// **'Lock message (optional)'**
  String get lockMessage;

  /// Label for lock screen phone number
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get lockPhone;

  /// Checkbox label for rebuilding kernel cache on restart
  ///
  /// In en, this message translates to:
  /// **'Rebuild kernel cache'**
  String get restartRebuildKernelCache;

  /// Checkbox label for notifying user before restart
  ///
  /// In en, this message translates to:
  /// **'Notify user'**
  String get restartNotifyUser;

  /// Device action: toggle remote desktop
  ///
  /// In en, this message translates to:
  /// **'Remote Desktop'**
  String get actionRemoteDesktop;

  /// Tab label for device notes
  ///
  /// In en, this message translates to:
  /// **'Notes'**
  String get tabNotes;

  /// Empty state when no notes found
  ///
  /// In en, this message translates to:
  /// **'No notes yet'**
  String get noNotesFound;

  /// Button label to add a new note
  ///
  /// In en, this message translates to:
  /// **'Add Note'**
  String get addNote;

  /// Title for editing a note
  ///
  /// In en, this message translates to:
  /// **'Edit Note'**
  String get editNote;

  /// Action label for deleting a note
  ///
  /// In en, this message translates to:
  /// **'Delete Note'**
  String get deleteNote;

  /// Confirmation message for note deletion
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this note?'**
  String get deleteNoteConfirm;

  /// Hint for note content field
  ///
  /// In en, this message translates to:
  /// **'Note content'**
  String get noteContent;

  /// Snackbar after note is saved
  ///
  /// In en, this message translates to:
  /// **'Note saved.'**
  String get noteSaved;

  /// Snackbar after note is deleted
  ///
  /// In en, this message translates to:
  /// **'Note deleted.'**
  String get noteDeleted;

  /// Title for edit device dialog
  ///
  /// In en, this message translates to:
  /// **'Edit Device'**
  String get editDevice;

  /// Snackbar after device is updated
  ///
  /// In en, this message translates to:
  /// **'Device updated.'**
  String get deviceUpdated;

  /// Action label for deleting a device from MDM
  ///
  /// In en, this message translates to:
  /// **'Delete Device'**
  String get deleteDevice;

  /// Confirmation message for device deletion
  ///
  /// In en, this message translates to:
  /// **'This will permanently remove the device from MDM. This action cannot be undone.'**
  String get deleteDeviceConfirm;

  /// Snackbar after device is deleted
  ///
  /// In en, this message translates to:
  /// **'Device deleted.'**
  String get deviceDeleted;

  /// Action label for cancelling stuck lost mode
  ///
  /// In en, this message translates to:
  /// **'Cancel Lost Mode'**
  String get cancelLostMode;

  /// Confirmation message for cancelling lost mode
  ///
  /// In en, this message translates to:
  /// **'Cancel the pending lost mode request?'**
  String get cancelLostModeConfirm;

  /// Snackbar after lost mode is cancelled
  ///
  /// In en, this message translates to:
  /// **'Lost mode cancelled.'**
  String get lostModeCancelled;

  /// Label for tags
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get tags;

  /// Empty state when no tags
  ///
  /// In en, this message translates to:
  /// **'No tags'**
  String get noTags;

  /// Button label to add a tag
  ///
  /// In en, this message translates to:
  /// **'Add Tag'**
  String get addTag;

  /// Label for tag name field
  ///
  /// In en, this message translates to:
  /// **'Tag name'**
  String get tagName;

  /// Title for tag management
  ///
  /// In en, this message translates to:
  /// **'Manage Tags'**
  String get manageTags;

  /// Title for audit log page
  ///
  /// In en, this message translates to:
  /// **'Audit Log'**
  String get auditLog;

  /// Empty state when no audit events
  ///
  /// In en, this message translates to:
  /// **'No audit events found'**
  String get noAuditEvents;

  /// Device action: daily check-in and CSP sync
  ///
  /// In en, this message translates to:
  /// **'Daily Check-in'**
  String get actionDailyCheckIn;

  /// Title for licensing section
  ///
  /// In en, this message translates to:
  /// **'Licensing'**
  String get licensing;

  /// Label for device limit
  ///
  /// In en, this message translates to:
  /// **'Device Limit'**
  String get deviceLimit;

  /// Label for devices used count
  ///
  /// In en, this message translates to:
  /// **'Devices Used'**
  String get devicesUsed;

  /// Label for license type
  ///
  /// In en, this message translates to:
  /// **'License Type'**
  String get licenseType;

  /// Label for Apple device count
  ///
  /// In en, this message translates to:
  /// **'Apple Devices'**
  String get appleDevices;

  /// Action label for deleting a user
  ///
  /// In en, this message translates to:
  /// **'Delete User'**
  String get deleteUser;

  /// Confirmation message for user deletion
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this user? This action cannot be undone.'**
  String get deleteUserConfirm;

  /// Snackbar after user is deleted
  ///
  /// In en, this message translates to:
  /// **'User deleted.'**
  String get userDeleted;

  /// Title for creating a blueprint
  ///
  /// In en, this message translates to:
  /// **'Create Blueprint'**
  String get createBlueprint;

  /// Title for editing a blueprint
  ///
  /// In en, this message translates to:
  /// **'Edit Blueprint'**
  String get editBlueprint;

  /// Action label for deleting a blueprint
  ///
  /// In en, this message translates to:
  /// **'Delete Blueprint'**
  String get deleteBlueprint;

  /// Confirmation message for blueprint deletion
  ///
  /// In en, this message translates to:
  /// **'Deleting this blueprint will unenroll all assigned devices. This action cannot be undone.'**
  String get deleteBlueprintConfirm;

  /// Snackbar after blueprint is created
  ///
  /// In en, this message translates to:
  /// **'Blueprint created.'**
  String get blueprintCreated;

  /// Snackbar after blueprint is updated
  ///
  /// In en, this message translates to:
  /// **'Blueprint updated.'**
  String get blueprintUpdated;

  /// Snackbar after blueprint is deleted
  ///
  /// In en, this message translates to:
  /// **'Blueprint deleted.'**
  String get blueprintDeleted;

  /// Label for blueprint name field
  ///
  /// In en, this message translates to:
  /// **'Blueprint Name'**
  String get blueprintName;

  /// Label for blueprint description field
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get blueprintDescription;

  /// Label for enrollment code toggle
  ///
  /// In en, this message translates to:
  /// **'Enrollment Code'**
  String get enrollmentCode;

  /// Title for assigning library item to blueprint
  ///
  /// In en, this message translates to:
  /// **'Assign Library Item'**
  String get assignLibraryItem;

  /// Action label for removing library item from blueprint
  ///
  /// In en, this message translates to:
  /// **'Remove Library Item'**
  String get removeLibraryItem;

  /// Snackbar after library item is assigned
  ///
  /// In en, this message translates to:
  /// **'Library item assigned.'**
  String get libraryItemAssigned;

  /// Snackbar after library item is removed
  ///
  /// In en, this message translates to:
  /// **'Library item removed.'**
  String get libraryItemRemoved;

  /// Title for lost mode details section
  ///
  /// In en, this message translates to:
  /// **'Lost Mode Details'**
  String get lostModeDetails;

  /// Label for who enabled lost mode
  ///
  /// In en, this message translates to:
  /// **'Enabled By'**
  String get lostModeEnabledBy;

  /// Label for when lost mode was enabled
  ///
  /// In en, this message translates to:
  /// **'Enabled At'**
  String get lostModeEnabledAt;

  /// No description provided for @searchBlueprints.
  ///
  /// In en, this message translates to:
  /// **'Search blueprints...'**
  String get searchBlueprints;

  /// No description provided for @searchVulnerabilities.
  ///
  /// In en, this message translates to:
  /// **'Search vulnerabilities...'**
  String get searchVulnerabilities;

  /// No description provided for @searchThreats.
  ///
  /// In en, this message translates to:
  /// **'Search threats...'**
  String get searchThreats;

  /// No description provided for @searchAuditLog.
  ///
  /// In en, this message translates to:
  /// **'Search audit log...'**
  String get searchAuditLog;

  /// No description provided for @filterCritical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get filterCritical;

  /// No description provided for @filterHigh.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get filterHigh;

  /// No description provided for @filterMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get filterMedium;

  /// No description provided for @filterLow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get filterLow;

  /// No description provided for @filterClearAll.
  ///
  /// In en, this message translates to:
  /// **'Clear All'**
  String get filterClearAll;

  /// No description provided for @filterTitle.
  ///
  /// In en, this message translates to:
  /// **'Filters'**
  String get filterTitle;

  /// No description provided for @filterApply.
  ///
  /// In en, this message translates to:
  /// **'Apply'**
  String get filterApply;

  /// No description provided for @filterPlatform.
  ///
  /// In en, this message translates to:
  /// **'Platform'**
  String get filterPlatform;

  /// No description provided for @filterSupervision.
  ///
  /// In en, this message translates to:
  /// **'Supervision'**
  String get filterSupervision;

  /// No description provided for @filterStatus.
  ///
  /// In en, this message translates to:
  /// **'Status'**
  String get filterStatus;

  /// No description provided for @adeIntegrations.
  ///
  /// In en, this message translates to:
  /// **'ADE Integrations'**
  String get adeIntegrations;

  /// No description provided for @noAdeIntegrations.
  ///
  /// In en, this message translates to:
  /// **'No ADE integrations found.'**
  String get noAdeIntegrations;

  /// No description provided for @adeDevices.
  ///
  /// In en, this message translates to:
  /// **'ADE Devices'**
  String get adeDevices;

  /// No description provided for @noAdeDevices.
  ///
  /// In en, this message translates to:
  /// **'No ADE devices found.'**
  String get noAdeDevices;

  /// No description provided for @tokenExpiry.
  ///
  /// In en, this message translates to:
  /// **'Token Expiry'**
  String get tokenExpiry;

  /// No description provided for @tokenValid.
  ///
  /// In en, this message translates to:
  /// **'Token Valid'**
  String get tokenValid;

  /// No description provided for @tokenExpired.
  ///
  /// In en, this message translates to:
  /// **'Token Expired'**
  String get tokenExpired;

  /// No description provided for @orgName.
  ///
  /// In en, this message translates to:
  /// **'Organization'**
  String get orgName;

  /// No description provided for @defaultBlueprint.
  ///
  /// In en, this message translates to:
  /// **'Default Blueprint'**
  String get defaultBlueprint;

  /// No description provided for @renewToken.
  ///
  /// In en, this message translates to:
  /// **'Renew Token'**
  String get renewToken;

  /// No description provided for @publicKey.
  ///
  /// In en, this message translates to:
  /// **'Public Key'**
  String get publicKey;

  /// No description provided for @vulnerabilityDetections.
  ///
  /// In en, this message translates to:
  /// **'Vulnerability Detections'**
  String get vulnerabilityDetections;

  /// No description provided for @noDetectionsFound.
  ///
  /// In en, this message translates to:
  /// **'No detections found.'**
  String get noDetectionsFound;

  /// No description provided for @behavioralDetections.
  ///
  /// In en, this message translates to:
  /// **'Behavioral Detections'**
  String get behavioralDetections;

  /// No description provided for @noBehavioralDetections.
  ///
  /// In en, this message translates to:
  /// **'No behavioral detections found.'**
  String get noBehavioralDetections;

  /// No description provided for @searchBehavioralDetections.
  ///
  /// In en, this message translates to:
  /// **'Search detections...'**
  String get searchBehavioralDetections;

  /// No description provided for @affectedDevices.
  ///
  /// In en, this message translates to:
  /// **'Affected Devices'**
  String get affectedDevices;

  /// No description provided for @noAffectedDevices.
  ///
  /// In en, this message translates to:
  /// **'No affected devices found. Previously affected devices may have been removed.'**
  String get noAffectedDevices;

  /// No description provided for @affectedSoftware.
  ///
  /// In en, this message translates to:
  /// **'Affected Software'**
  String get affectedSoftware;

  /// No description provided for @blueprintTemplates.
  ///
  /// In en, this message translates to:
  /// **'Blueprint Templates'**
  String get blueprintTemplates;

  /// No description provided for @noTemplatesFound.
  ///
  /// In en, this message translates to:
  /// **'No templates found.'**
  String get noTemplatesFound;

  /// No description provided for @otaEnrollmentProfile.
  ///
  /// In en, this message translates to:
  /// **'OTA Enrollment Profile'**
  String get otaEnrollmentProfile;

  /// No description provided for @libraryItemActivity.
  ///
  /// In en, this message translates to:
  /// **'Activity'**
  String get libraryItemActivity;

  /// No description provided for @libraryItemDeploymentStatus.
  ///
  /// In en, this message translates to:
  /// **'Deployment Status'**
  String get libraryItemDeploymentStatus;

  /// No description provided for @noActivityFound2.
  ///
  /// In en, this message translates to:
  /// **'No activity found.'**
  String get noActivityFound2;

  /// No description provided for @noStatusFound.
  ///
  /// In en, this message translates to:
  /// **'No deployment status found.'**
  String get noStatusFound;

  /// No description provided for @detectionCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No detections} =1{1 detection} other{{count} detections}}'**
  String detectionCount(int count);

  /// No description provided for @integrationCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No integrations} =1{1 integration} other{{count} integrations}}'**
  String integrationCount(int count);

  /// No description provided for @vulnerabilityDetail.
  ///
  /// In en, this message translates to:
  /// **'Vulnerability Detail'**
  String get vulnerabilityDetail;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @firstDetected.
  ///
  /// In en, this message translates to:
  /// **'First Detected'**
  String get firstDetected;

  /// No description provided for @lastDetected.
  ///
  /// In en, this message translates to:
  /// **'Last Detected'**
  String get lastDetected;

  /// No description provided for @softwareCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No software} =1{1 software} other{{count} software}}'**
  String softwareCount(int count);

  /// No description provided for @editIntegration.
  ///
  /// In en, this message translates to:
  /// **'Edit Integration'**
  String get editIntegration;

  /// No description provided for @deleteIntegration.
  ///
  /// In en, this message translates to:
  /// **'Delete Integration'**
  String get deleteIntegration;

  /// No description provided for @deleteIntegrationConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this ADE integration? This cannot be undone.'**
  String get deleteIntegrationConfirm;

  /// No description provided for @integrationDeleted.
  ///
  /// In en, this message translates to:
  /// **'Integration deleted.'**
  String get integrationDeleted;

  /// No description provided for @integrationUpdated.
  ///
  /// In en, this message translates to:
  /// **'Integration updated.'**
  String get integrationUpdated;

  /// No description provided for @defaultBlueprintId.
  ///
  /// In en, this message translates to:
  /// **'Default Blueprint ID'**
  String get defaultBlueprintId;

  /// No description provided for @phone.
  ///
  /// In en, this message translates to:
  /// **'Phone'**
  String get phone;

  /// No description provided for @downloadOtaProfile.
  ///
  /// In en, this message translates to:
  /// **'Download Enrollment Profile'**
  String get downloadOtaProfile;

  /// No description provided for @otaProfileCopied.
  ///
  /// In en, this message translates to:
  /// **'Enrollment profile copied to clipboard.'**
  String get otaProfileCopied;

  /// No description provided for @noOtaProfile.
  ///
  /// In en, this message translates to:
  /// **'No enrollment profile available.'**
  String get noOtaProfile;

  /// No description provided for @createTag.
  ///
  /// In en, this message translates to:
  /// **'Create Tag'**
  String get createTag;

  /// No description provided for @editTag.
  ///
  /// In en, this message translates to:
  /// **'Edit Tag'**
  String get editTag;

  /// No description provided for @deleteTag.
  ///
  /// In en, this message translates to:
  /// **'Delete Tag'**
  String get deleteTag;

  /// No description provided for @deleteTagConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this tag?'**
  String get deleteTagConfirm;

  /// No description provided for @tagColor.
  ///
  /// In en, this message translates to:
  /// **'Color'**
  String get tagColor;

  /// No description provided for @tagCreated.
  ///
  /// In en, this message translates to:
  /// **'Tag created.'**
  String get tagCreated;

  /// No description provided for @tagUpdated.
  ///
  /// In en, this message translates to:
  /// **'Tag updated.'**
  String get tagUpdated;

  /// No description provided for @tagDeleted.
  ///
  /// In en, this message translates to:
  /// **'Tag deleted.'**
  String get tagDeleted;

  /// No description provided for @noTagsFound.
  ///
  /// In en, this message translates to:
  /// **'No tags found.'**
  String get noTagsFound;

  /// No description provided for @libraryItemDetail.
  ///
  /// In en, this message translates to:
  /// **'Library Item'**
  String get libraryItemDetail;

  /// No description provided for @viewActivity.
  ///
  /// In en, this message translates to:
  /// **'View Activity'**
  String get viewActivity;

  /// No description provided for @viewStatus.
  ///
  /// In en, this message translates to:
  /// **'View Status'**
  String get viewStatus;

  /// No description provided for @installations.
  ///
  /// In en, this message translates to:
  /// **'Installations'**
  String get installations;

  /// No description provided for @createAdeIntegration.
  ///
  /// In en, this message translates to:
  /// **'Create ADE Integration'**
  String get createAdeIntegration;

  /// No description provided for @adeCreateDescription.
  ///
  /// In en, this message translates to:
  /// **'Upload a server token file (.p7m) from Apple Business Manager to create a new ADE integration.'**
  String get adeCreateDescription;

  /// No description provided for @selectTokenFile.
  ///
  /// In en, this message translates to:
  /// **'Select Token File'**
  String get selectTokenFile;

  /// No description provided for @tokenFileSelected.
  ///
  /// In en, this message translates to:
  /// **'Token file: {name}'**
  String tokenFileSelected(String name);

  /// No description provided for @noTokenFileSelected.
  ///
  /// In en, this message translates to:
  /// **'No token file selected'**
  String get noTokenFileSelected;

  /// No description provided for @integrationCreated.
  ///
  /// In en, this message translates to:
  /// **'Integration created.'**
  String get integrationCreated;

  /// No description provided for @create.
  ///
  /// In en, this message translates to:
  /// **'Create'**
  String get create;

  /// No description provided for @step1GetPublicKey.
  ///
  /// In en, this message translates to:
  /// **'Step 1: Download Public Key'**
  String get step1GetPublicKey;

  /// No description provided for @step1Description.
  ///
  /// In en, this message translates to:
  /// **'Copy the public key and upload it to Apple Business Manager.'**
  String get step1Description;

  /// No description provided for @step2UploadToken.
  ///
  /// In en, this message translates to:
  /// **'Step 2: Upload Server Token'**
  String get step2UploadToken;

  /// No description provided for @step2Description.
  ///
  /// In en, this message translates to:
  /// **'Select the .p7m token file downloaded from Apple.'**
  String get step2Description;

  /// No description provided for @step3Configure.
  ///
  /// In en, this message translates to:
  /// **'Step 3: Configure'**
  String get step3Configure;

  /// No description provided for @publicKeyCopied.
  ///
  /// In en, this message translates to:
  /// **'Public key copied to clipboard.'**
  String get publicKeyCopied;

  /// No description provided for @renewTokenDescription.
  ///
  /// In en, this message translates to:
  /// **'Upload a new .p7m token file to renew this integration\'s token.'**
  String get renewTokenDescription;

  /// No description provided for @tokenRenewed.
  ///
  /// In en, this message translates to:
  /// **'Token renewed.'**
  String get tokenRenewed;

  /// No description provided for @aboutLinks.
  ///
  /// In en, this message translates to:
  /// **'Links'**
  String get aboutLinks;

  /// No description provided for @aboutWebsite.
  ///
  /// In en, this message translates to:
  /// **'Website'**
  String get aboutWebsite;

  /// No description provided for @aboutWebsiteDomain.
  ///
  /// In en, this message translates to:
  /// **'kiefer-networks.de'**
  String get aboutWebsiteDomain;

  /// No description provided for @aboutSourceCode.
  ///
  /// In en, this message translates to:
  /// **'Source Code'**
  String get aboutSourceCode;

  /// No description provided for @aboutGitHub.
  ///
  /// In en, this message translates to:
  /// **'GitHub'**
  String get aboutGitHub;

  /// No description provided for @aboutTechStack.
  ///
  /// In en, this message translates to:
  /// **'Tech Stack'**
  String get aboutTechStack;

  /// No description provided for @aboutFramework.
  ///
  /// In en, this message translates to:
  /// **'Framework'**
  String get aboutFramework;

  /// No description provided for @aboutStateManagement.
  ///
  /// In en, this message translates to:
  /// **'State Management'**
  String get aboutStateManagement;

  /// No description provided for @aboutArchitecture.
  ///
  /// In en, this message translates to:
  /// **'Architecture'**
  String get aboutArchitecture;

  /// No description provided for @aboutApi.
  ///
  /// In en, this message translates to:
  /// **'API'**
  String get aboutApi;

  /// No description provided for @aboutDataClasses.
  ///
  /// In en, this message translates to:
  /// **'Data Classes'**
  String get aboutDataClasses;

  /// No description provided for @aboutNavigationLabel.
  ///
  /// In en, this message translates to:
  /// **'Navigation'**
  String get aboutNavigationLabel;

  /// No description provided for @aboutOpenSourceLicenses.
  ///
  /// In en, this message translates to:
  /// **'Open Source Licenses'**
  String get aboutOpenSourceLicenses;

  /// No description provided for @aboutShowHide.
  ///
  /// In en, this message translates to:
  /// **'Toggle visibility'**
  String get aboutShowHide;

  /// No description provided for @editProfileTitle.
  ///
  /// In en, this message translates to:
  /// **'Edit Connection'**
  String get editProfileTitle;

  /// No description provided for @editProfileSubtitle.
  ///
  /// In en, this message translates to:
  /// **'Update your tenant connection settings.'**
  String get editProfileSubtitle;

  /// No description provided for @apiTokenHintEdit.
  ///
  /// In en, this message translates to:
  /// **'Leave empty to keep existing token'**
  String get apiTokenHintEdit;

  /// No description provided for @profileUpdated.
  ///
  /// In en, this message translates to:
  /// **'Profile updated.'**
  String get profileUpdated;

  /// Snackbar message after switching profile
  ///
  /// In en, this message translates to:
  /// **'Switched to {name}.'**
  String profileSwitched(String name);

  /// Title for session auto-lock timeout setting
  ///
  /// In en, this message translates to:
  /// **'Auto-Lock'**
  String get securityAutoLock;

  /// Description for auto-lock feature
  ///
  /// In en, this message translates to:
  /// **'Automatically require authentication after the app has been in the background.'**
  String get securityAutoLockDescription;

  /// Lock timeout option: immediately on background
  ///
  /// In en, this message translates to:
  /// **'Immediately'**
  String get timeoutImmediately;

  /// Lock timeout option: 30 seconds
  ///
  /// In en, this message translates to:
  /// **'After 30 seconds'**
  String get timeoutSeconds30;

  /// Lock timeout option: 60 seconds
  ///
  /// In en, this message translates to:
  /// **'After 1 minute'**
  String get timeoutSeconds60;

  /// Lock timeout option: 120 seconds
  ///
  /// In en, this message translates to:
  /// **'After 2 minutes'**
  String get timeoutSeconds120;

  /// Lock timeout option: 5 minutes
  ///
  /// In en, this message translates to:
  /// **'After 5 minutes'**
  String get timeoutMinutes5;

  /// No description provided for @filterBlueprint.
  ///
  /// In en, this message translates to:
  /// **'Blueprint'**
  String get filterBlueprint;

  /// No description provided for @noBlueprint.
  ///
  /// In en, this message translates to:
  /// **'No Blueprint'**
  String get noBlueprint;

  /// Action label to save current filter as a preset
  ///
  /// In en, this message translates to:
  /// **'Save Filter Preset'**
  String get presetSaveFilter;

  /// Action label to load a saved filter preset
  ///
  /// In en, this message translates to:
  /// **'Load Preset'**
  String get presetLoad;

  /// Label for the preset name input field
  ///
  /// In en, this message translates to:
  /// **'Preset Name'**
  String get presetName;

  /// Hint text for preset name input
  ///
  /// In en, this message translates to:
  /// **'e.g. Unsupervised Macs'**
  String get presetNameHint;

  /// Snackbar message after preset is saved
  ///
  /// In en, this message translates to:
  /// **'Filter preset saved.'**
  String get presetSaved;

  /// Snackbar message after preset is deleted
  ///
  /// In en, this message translates to:
  /// **'Filter preset deleted.'**
  String get presetDeleted;

  /// Snackbar message after preset is applied
  ///
  /// In en, this message translates to:
  /// **'Preset \"{name}\" applied.'**
  String presetApplied(String name);

  /// Empty state when no presets exist
  ///
  /// In en, this message translates to:
  /// **'No saved presets'**
  String get presetNoPresets;

  /// Empty state message when no presets exist
  ///
  /// In en, this message translates to:
  /// **'Save your current filters as a preset for quick access.'**
  String get presetNoPresetsMessage;

  /// Confirmation message for preset deletion
  ///
  /// In en, this message translates to:
  /// **'Delete this preset?'**
  String get presetDeleteConfirm;

  /// Validation error when preset name is empty
  ///
  /// In en, this message translates to:
  /// **'Please enter a preset name.'**
  String get presetNameRequired;

  /// Number of selected devices in selection mode
  ///
  /// In en, this message translates to:
  /// **'{count} selected'**
  String selectedCount(int count);

  /// Tooltip for select all button
  ///
  /// In en, this message translates to:
  /// **'Select all'**
  String get selectAll;

  /// Tooltip for deselect all button
  ///
  /// In en, this message translates to:
  /// **'Deselect all'**
  String get deselectAll;

  /// Label for bulk actions FAB
  ///
  /// In en, this message translates to:
  /// **'Actions'**
  String get bulkActions;

  /// Title of bulk action bottom sheet
  ///
  /// In en, this message translates to:
  /// **'Actions for {count} devices'**
  String bulkActionsTitle(int count);

  /// Bulk action: assign a tag
  ///
  /// In en, this message translates to:
  /// **'Assign Tag'**
  String get bulkActionAssignTag;

  /// Description for bulk tag assignment
  ///
  /// In en, this message translates to:
  /// **'Add a tag to all selected devices'**
  String get bulkActionAssignTagDescription;

  /// Bulk action: assign a blueprint
  ///
  /// In en, this message translates to:
  /// **'Assign Blueprint'**
  String get bulkActionAssignBlueprint;

  /// Description for bulk blueprint assignment
  ///
  /// In en, this message translates to:
  /// **'Move selected devices to a blueprint'**
  String get bulkActionAssignBlueprintDescription;

  /// Bulk action: lock devices
  ///
  /// In en, this message translates to:
  /// **'Lock Devices'**
  String get bulkActionLock;

  /// Description for bulk lock action
  ///
  /// In en, this message translates to:
  /// **'Lock all selected devices remotely'**
  String get bulkActionLockDescription;

  /// Bulk action: restart devices
  ///
  /// In en, this message translates to:
  /// **'Restart Devices'**
  String get bulkActionRestart;

  /// Description for bulk restart action
  ///
  /// In en, this message translates to:
  /// **'Restart all selected devices'**
  String get bulkActionRestartDescription;

  /// Confirmation message for bulk restart
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to restart {count} devices?'**
  String bulkRestartConfirmMessage(int count);

  /// Snackbar message when all bulk actions succeed
  ///
  /// In en, this message translates to:
  /// **'Successfully completed action on {count} devices.'**
  String bulkActionSuccess(int count);

  /// Snackbar message when some bulk actions fail
  ///
  /// In en, this message translates to:
  /// **'Completed on {success} devices, {failed} failed.'**
  String bulkActionPartialSuccess(int success, int failed);

  /// Progress label during bulk operation
  ///
  /// In en, this message translates to:
  /// **'{completed} of {total} completed'**
  String bulkProgressStatus(int completed, int total);

  /// Biometric prompt reason for bulk actions
  ///
  /// In en, this message translates to:
  /// **'Authenticate to perform bulk action'**
  String get biometricReasonBulkAction;

  /// Label for lock PIN field in bulk lock dialog
  ///
  /// In en, this message translates to:
  /// **'Lock PIN (optional)'**
  String get lockPin;

  /// Empty state when no tags exist for picker
  ///
  /// In en, this message translates to:
  /// **'No tags available. Create tags in the MDM web console.'**
  String get noTagsAvailable;

  /// Empty state when no blueprints exist for picker
  ///
  /// In en, this message translates to:
  /// **'No blueprints available.'**
  String get noBlueprintsAvailable;

  /// Placeholder shown in detail pane when no device is selected
  ///
  /// In en, this message translates to:
  /// **'Select a device'**
  String get selectADevice;

  /// Placeholder shown in detail pane when no blueprint is selected
  ///
  /// In en, this message translates to:
  /// **'Select a blueprint'**
  String get selectABlueprint;

  /// No description provided for @clearSearch.
  ///
  /// In en, this message translates to:
  /// **'Clear search'**
  String get clearSearch;

  /// No description provided for @refresh.
  ///
  /// In en, this message translates to:
  /// **'Refresh'**
  String get refresh;

  /// No description provided for @moreActions.
  ///
  /// In en, this message translates to:
  /// **'More actions'**
  String get moreActions;

  /// No description provided for @close.
  ///
  /// In en, this message translates to:
  /// **'Close'**
  String get close;

  /// Button to skip onboarding
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get onboardingSkip;

  /// Button to go to next onboarding page
  ///
  /// In en, this message translates to:
  /// **'Next'**
  String get onboardingNext;

  /// Button to finish onboarding and go to profile setup
  ///
  /// In en, this message translates to:
  /// **'Get Started'**
  String get onboardingGetStarted;

  /// Title on the first onboarding page
  ///
  /// In en, this message translates to:
  /// **'Welcome to FleetPilot'**
  String get onboardingWelcomeTitle;

  /// Subtitle on the first onboarding page
  ///
  /// In en, this message translates to:
  /// **'Your mobile command center for Apple device fleet management. Monitor, manage, and secure your entire fleet from anywhere.'**
  String get onboardingWelcomeSubtitle;

  /// Title on the device management onboarding page
  ///
  /// In en, this message translates to:
  /// **'Device Management'**
  String get onboardingDevicesTitle;

  /// Subtitle on the device management onboarding page
  ///
  /// In en, this message translates to:
  /// **'Full visibility and control over every device in your fleet.'**
  String get onboardingDevicesSubtitle;

  /// First device management feature
  ///
  /// In en, this message translates to:
  /// **'View all enrolled iPhones, iPads, Macs, and Apple TVs'**
  String get onboardingDevicesFeature1;

  /// Second device management feature
  ///
  /// In en, this message translates to:
  /// **'Send remote commands: lock, restart, erase, and more'**
  String get onboardingDevicesFeature2;

  /// Third device management feature
  ///
  /// In en, this message translates to:
  /// **'Track blueprints, apps, and compliance status'**
  String get onboardingDevicesFeature3;

  /// Title on the security onboarding page
  ///
  /// In en, this message translates to:
  /// **'Built for Security'**
  String get onboardingSecurityTitle;

  /// Subtitle on the security onboarding page
  ///
  /// In en, this message translates to:
  /// **'Your fleet data stays protected with multiple layers of security.'**
  String get onboardingSecuritySubtitle;

  /// First security feature
  ///
  /// In en, this message translates to:
  /// **'Biometric authentication with Face ID or fingerprint'**
  String get onboardingSecurityFeature1;

  /// Second security feature
  ///
  /// In en, this message translates to:
  /// **'6-digit PIN lock for app access'**
  String get onboardingSecurityFeature2;

  /// Third security feature
  ///
  /// In en, this message translates to:
  /// **'Automatic session lock after timeout'**
  String get onboardingSecurityFeature3;

  /// Title on the final onboarding page
  ///
  /// In en, this message translates to:
  /// **'Ready to Go'**
  String get onboardingReadyTitle;

  /// Subtitle on the final onboarding page
  ///
  /// In en, this message translates to:
  /// **'Connect your MDM tenant to start managing your Apple device fleet. You\'ll set up your API connection and security PIN next.'**
  String get onboardingReadySubtitle;

  /// No description provided for @searchTags.
  ///
  /// In en, this message translates to:
  /// **'Search tags'**
  String get searchTags;

  /// No description provided for @tagDeviceCount.
  ///
  /// In en, this message translates to:
  /// **'{count} devices'**
  String tagDeviceCount(int count);

  /// No description provided for @sortTitle.
  ///
  /// In en, this message translates to:
  /// **'Sort'**
  String get sortTitle;

  /// No description provided for @sortDirection.
  ///
  /// In en, this message translates to:
  /// **'Sort Direction'**
  String get sortDirection;

  /// No description provided for @ascending.
  ///
  /// In en, this message translates to:
  /// **'Ascending'**
  String get ascending;

  /// No description provided for @descending.
  ///
  /// In en, this message translates to:
  /// **'Descending'**
  String get descending;

  /// No description provided for @filterSeverity.
  ///
  /// In en, this message translates to:
  /// **'Severity'**
  String get filterSeverity;

  /// No description provided for @filterSort.
  ///
  /// In en, this message translates to:
  /// **'Filter & Sort'**
  String get filterSort;

  /// No description provided for @statusQuarantined.
  ///
  /// In en, this message translates to:
  /// **'Quarantined'**
  String get statusQuarantined;

  /// No description provided for @statusNotQuarantined.
  ///
  /// In en, this message translates to:
  /// **'Not Quarantined'**
  String get statusNotQuarantined;

  /// No description provided for @statusDetected.
  ///
  /// In en, this message translates to:
  /// **'Detected'**
  String get statusDetected;

  /// No description provided for @statusReleased.
  ///
  /// In en, this message translates to:
  /// **'Released'**
  String get statusReleased;

  /// No description provided for @severityCritical.
  ///
  /// In en, this message translates to:
  /// **'Critical'**
  String get severityCritical;

  /// No description provided for @severityHigh.
  ///
  /// In en, this message translates to:
  /// **'High'**
  String get severityHigh;

  /// No description provided for @severityMedium.
  ///
  /// In en, this message translates to:
  /// **'Medium'**
  String get severityMedium;

  /// No description provided for @severityLow.
  ///
  /// In en, this message translates to:
  /// **'Low'**
  String get severityLow;

  /// No description provided for @threatCount.
  ///
  /// In en, this message translates to:
  /// **'{count} threats'**
  String threatCount(int count);

  /// No description provided for @behavioralDetectionCount.
  ///
  /// In en, this message translates to:
  /// **'{count} detections'**
  String behavioralDetectionCount(int count);

  /// No description provided for @downloadPublicKey.
  ///
  /// In en, this message translates to:
  /// **'Download'**
  String get downloadPublicKey;

  /// No description provided for @publicKeySaved.
  ///
  /// In en, this message translates to:
  /// **'Public key saved'**
  String get publicKeySaved;

  /// No description provided for @sortBy.
  ///
  /// In en, this message translates to:
  /// **'Sort by'**
  String get sortBy;

  /// No description provided for @sortByCvss.
  ///
  /// In en, this message translates to:
  /// **'CVSS Score'**
  String get sortByCvss;

  /// No description provided for @sortByDeviceCount.
  ///
  /// In en, this message translates to:
  /// **'Affected devices'**
  String get sortByDeviceCount;

  /// No description provided for @sortByCveId.
  ///
  /// In en, this message translates to:
  /// **'CVE ID'**
  String get sortByCveId;

  /// No description provided for @vulnCount.
  ///
  /// In en, this message translates to:
  /// **'{count} vulnerabilities'**
  String vulnCount(int count);

  /// No description provided for @assignTags.
  ///
  /// In en, this message translates to:
  /// **'Tags'**
  String get assignTags;

  /// No description provided for @noTagsAvailableMessage.
  ///
  /// In en, this message translates to:
  /// **'No tags available. Create tags first.'**
  String get noTagsAvailableMessage;

  /// No description provided for @failedToLoadTags.
  ///
  /// In en, this message translates to:
  /// **'Failed to load tags'**
  String get failedToLoadTags;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @searchLibraryItems.
  ///
  /// In en, this message translates to:
  /// **'Search library items...'**
  String get searchLibraryItems;

  /// No description provided for @categoryCustomScript.
  ///
  /// In en, this message translates to:
  /// **'Custom Script'**
  String get categoryCustomScript;

  /// No description provided for @categoryCustomApp.
  ///
  /// In en, this message translates to:
  /// **'Custom App'**
  String get categoryCustomApp;

  /// No description provided for @categoryCustomProfile.
  ///
  /// In en, this message translates to:
  /// **'Custom Profile'**
  String get categoryCustomProfile;

  /// No description provided for @categoryInHouseApp.
  ///
  /// In en, this message translates to:
  /// **'In-House App'**
  String get categoryInHouseApp;

  /// No description provided for @categoryBuiltIn.
  ///
  /// In en, this message translates to:
  /// **'Built-in'**
  String get categoryBuiltIn;

  /// No description provided for @categoryVppApps.
  ///
  /// In en, this message translates to:
  /// **'VPP / App Store Apps'**
  String get categoryVppApps;

  /// No description provided for @categoryManagedProfiles.
  ///
  /// In en, this message translates to:
  /// **'Managed Profiles'**
  String get categoryManagedProfiles;

  /// No description provided for @categoryKandjiSetup.
  ///
  /// In en, this message translates to:
  /// **'MDM Setup'**
  String get categoryKandjiSetup;

  /// No description provided for @categoryMacosRelease.
  ///
  /// In en, this message translates to:
  /// **'macOS Updates'**
  String get categoryMacosRelease;

  /// No description provided for @categoryThreatPolicy.
  ///
  /// In en, this message translates to:
  /// **'Security Policies'**
  String get categoryThreatPolicy;

  /// No description provided for @inBlueprints.
  ///
  /// In en, this message translates to:
  /// **'In {count, plural, =1{1 blueprint} other{{count} blueprints}}'**
  String inBlueprints(int count);

  /// No description provided for @executionFrequencyOnce.
  ///
  /// In en, this message translates to:
  /// **'Once'**
  String get executionFrequencyOnce;

  /// No description provided for @executionFrequencyEvery15Min.
  ///
  /// In en, this message translates to:
  /// **'Every 15 minutes'**
  String get executionFrequencyEvery15Min;

  /// No description provided for @executionFrequencyEveryDay.
  ///
  /// In en, this message translates to:
  /// **'Daily'**
  String get executionFrequencyEveryDay;

  /// No description provided for @executionFrequencyNoEnforcement.
  ///
  /// In en, this message translates to:
  /// **'No enforcement'**
  String get executionFrequencyNoEnforcement;

  /// No description provided for @scriptBody.
  ///
  /// In en, this message translates to:
  /// **'Script'**
  String get scriptBody;

  /// No description provided for @remediationScript.
  ///
  /// In en, this message translates to:
  /// **'Remediation Script'**
  String get remediationScript;

  /// No description provided for @allProperties.
  ///
  /// In en, this message translates to:
  /// **'All Properties'**
  String get allProperties;

  /// No description provided for @builtInLibraryItem.
  ///
  /// In en, this message translates to:
  /// **'Built-in library item'**
  String get builtInLibraryItem;

  /// No description provided for @builtInDetailsHint.
  ///
  /// In en, this message translates to:
  /// **'Details available on Status tab'**
  String get builtInDetailsHint;

  /// No description provided for @active.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get active;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @no.
  ///
  /// In en, this message translates to:
  /// **'No'**
  String get no;

  /// No description provided for @execution.
  ///
  /// In en, this message translates to:
  /// **'Execution'**
  String get execution;

  /// No description provided for @restart.
  ///
  /// In en, this message translates to:
  /// **'Restart'**
  String get restart;

  /// No description provided for @selfService.
  ///
  /// In en, this message translates to:
  /// **'Self Service'**
  String get selfService;

  /// No description provided for @installType.
  ///
  /// In en, this message translates to:
  /// **'Install Type'**
  String get installType;

  /// No description provided for @enforcement.
  ///
  /// In en, this message translates to:
  /// **'Enforcement'**
  String get enforcement;

  /// No description provided for @runsOnMac.
  ///
  /// In en, this message translates to:
  /// **'Runs on Mac'**
  String get runsOnMac;

  /// No description provided for @runsOnIphone.
  ///
  /// In en, this message translates to:
  /// **'Runs on iPhone'**
  String get runsOnIphone;

  /// No description provided for @runsOnIpad.
  ///
  /// In en, this message translates to:
  /// **'Runs on iPad'**
  String get runsOnIpad;

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'App Name'**
  String get appName;

  /// No description provided for @appVersion.
  ///
  /// In en, this message translates to:
  /// **'App Version'**
  String get appVersion;

  /// No description provided for @minOsVersion.
  ///
  /// In en, this message translates to:
  /// **'Min OS Version'**
  String get minOsVersion;

  /// No description provided for @created.
  ///
  /// In en, this message translates to:
  /// **'Created'**
  String get created;

  /// No description provided for @updated.
  ///
  /// In en, this message translates to:
  /// **'Updated'**
  String get updated;

  /// No description provided for @libraryItemCount.
  ///
  /// In en, this message translates to:
  /// **'{count, plural, =0{No items} =1{1 item} other{{count} items}}'**
  String libraryItemCount(num count);

  /// No description provided for @statusResolved.
  ///
  /// In en, this message translates to:
  /// **'Resolved'**
  String get statusResolved;

  /// No description provided for @severityInformational.
  ///
  /// In en, this message translates to:
  /// **'Informational'**
  String get severityInformational;

  /// No description provided for @managementState.
  ///
  /// In en, this message translates to:
  /// **'Management State'**
  String get managementState;

  /// No description provided for @managementStateOpen.
  ///
  /// In en, this message translates to:
  /// **'Open'**
  String get managementStateOpen;

  /// No description provided for @managementStateClosed.
  ///
  /// In en, this message translates to:
  /// **'Closed'**
  String get managementStateClosed;

  /// No description provided for @classificationMalware.
  ///
  /// In en, this message translates to:
  /// **'Malware'**
  String get classificationMalware;

  /// No description provided for @classificationPup.
  ///
  /// In en, this message translates to:
  /// **'PUP'**
  String get classificationPup;

  /// No description provided for @classificationSus.
  ///
  /// In en, this message translates to:
  /// **'Suspicious'**
  String get classificationSus;

  /// No description provided for @classificationMal.
  ///
  /// In en, this message translates to:
  /// **'Malicious'**
  String get classificationMal;

  /// No description provided for @blueprintRouting.
  ///
  /// In en, this message translates to:
  /// **'Blueprint Routing'**
  String get blueprintRouting;

  /// No description provided for @blueprintRoutingDesc.
  ///
  /// In en, this message translates to:
  /// **'Enrollment code and routing for Manual / Android Work Profile enrollment'**
  String get blueprintRoutingDesc;

  /// No description provided for @blueprintRoutingNotConfigured.
  ///
  /// In en, this message translates to:
  /// **'Blueprint Routing is not configured for this tenant.'**
  String get blueprintRoutingNotConfigured;

  /// No description provided for @enrollmentCodeActive.
  ///
  /// In en, this message translates to:
  /// **'Active'**
  String get enrollmentCodeActive;

  /// No description provided for @enrollmentCodeInactive.
  ///
  /// In en, this message translates to:
  /// **'Inactive'**
  String get enrollmentCodeInactive;

  /// No description provided for @routingActivity.
  ///
  /// In en, this message translates to:
  /// **'Routing Activity'**
  String get routingActivity;

  /// No description provided for @noRoutingActivity.
  ///
  /// In en, this message translates to:
  /// **'No routing activity found.'**
  String get noRoutingActivity;

  /// No description provided for @selfServiceCategories.
  ///
  /// In en, this message translates to:
  /// **'Self Service Categories'**
  String get selfServiceCategories;

  /// No description provided for @selfServiceDesc.
  ///
  /// In en, this message translates to:
  /// **'Manage Self Service categories for your users'**
  String get selfServiceDesc;

  /// No description provided for @addCategory.
  ///
  /// In en, this message translates to:
  /// **'Add Category'**
  String get addCategory;

  /// No description provided for @categoryName.
  ///
  /// In en, this message translates to:
  /// **'Category Name'**
  String get categoryName;

  /// No description provided for @deleteCategory.
  ///
  /// In en, this message translates to:
  /// **'Delete Category'**
  String get deleteCategory;

  /// No description provided for @deleteCategoryConfirm.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to delete this category?'**
  String get deleteCategoryConfirm;

  /// No description provided for @noCategoriesFound.
  ///
  /// In en, this message translates to:
  /// **'No categories found.'**
  String get noCategoriesFound;

  /// No description provided for @categoryCreated.
  ///
  /// In en, this message translates to:
  /// **'Category created'**
  String get categoryCreated;

  /// No description provided for @categoryDeleted.
  ///
  /// In en, this message translates to:
  /// **'Category deleted'**
  String get categoryDeleted;

  /// No description provided for @profileBody.
  ///
  /// In en, this message translates to:
  /// **'Profile XML'**
  String get profileBody;

  /// No description provided for @customProfile.
  ///
  /// In en, this message translates to:
  /// **'Custom Profile'**
  String get customProfile;

  /// No description provided for @classification.
  ///
  /// In en, this message translates to:
  /// **'Classification'**
  String get classification;

  /// No description provided for @mdmEnabled.
  ///
  /// In en, this message translates to:
  /// **'MDM Enabled'**
  String get mdmEnabled;

  /// No description provided for @enrolledViaDep.
  ///
  /// In en, this message translates to:
  /// **'Enrolled via DEP'**
  String get enrolledViaDep;

  /// No description provided for @userApprovedMdm.
  ///
  /// In en, this message translates to:
  /// **'User-Approved MDM'**
  String get userApprovedMdm;

  /// No description provided for @network.
  ///
  /// In en, this message translates to:
  /// **'Network'**
  String get network;

  /// No description provided for @ipAddress.
  ///
  /// In en, this message translates to:
  /// **'IP Address'**
  String get ipAddress;

  /// No description provided for @wifiNetwork.
  ///
  /// In en, this message translates to:
  /// **'WiFi Network'**
  String get wifiNetwork;

  /// No description provided for @bluetoothMac.
  ///
  /// In en, this message translates to:
  /// **'Bluetooth MAC'**
  String get bluetoothMac;

  /// No description provided for @activationLock.
  ///
  /// In en, this message translates to:
  /// **'Activation Lock'**
  String get activationLock;

  /// No description provided for @googlePlayProtect.
  ///
  /// In en, this message translates to:
  /// **'Google Play Protect'**
  String get googlePlayProtect;

  /// No description provided for @developerMode.
  ///
  /// In en, this message translates to:
  /// **'Developer Mode'**
  String get developerMode;

  /// No description provided for @adbEnabled.
  ///
  /// In en, this message translates to:
  /// **'ADB Enabled'**
  String get adbEnabled;

  /// No description provided for @unknownSources.
  ///
  /// In en, this message translates to:
  /// **'Unknown Sources'**
  String get unknownSources;

  /// No description provided for @securityPatch.
  ///
  /// In en, this message translates to:
  /// **'Security Patch'**
  String get securityPatch;

  /// No description provided for @provisioningUdid.
  ///
  /// In en, this message translates to:
  /// **'Provisioning UDID'**
  String get provisioningUdid;

  /// No description provided for @meid.
  ///
  /// In en, this message translates to:
  /// **'MEID'**
  String get meid;

  /// No description provided for @mdmInfo.
  ///
  /// In en, this message translates to:
  /// **'MDM Info'**
  String get mdmInfo;

  /// No description provided for @lastEnrollment.
  ///
  /// In en, this message translates to:
  /// **'Last Enrollment'**
  String get lastEnrollment;

  /// No description provided for @enterpriseId.
  ///
  /// In en, this message translates to:
  /// **'Enterprise ID'**
  String get enterpriseId;

  /// No description provided for @manufacturer.
  ///
  /// In en, this message translates to:
  /// **'Manufacturer'**
  String get manufacturer;

  /// No description provided for @generalStatus.
  ///
  /// In en, this message translates to:
  /// **'General Status'**
  String get generalStatus;

  /// No description provided for @apiLevel.
  ///
  /// In en, this message translates to:
  /// **'API Level'**
  String get apiLevel;

  /// No description provided for @userApprovedEnrollment.
  ///
  /// In en, this message translates to:
  /// **'User-Approved Enrollment'**
  String get userApprovedEnrollment;

  /// No description provided for @hostname.
  ///
  /// In en, this message translates to:
  /// **'Hostname'**
  String get hostname;

  /// No description provided for @macAddress.
  ///
  /// In en, this message translates to:
  /// **'MAC Address'**
  String get macAddress;

  /// No description provided for @publicIp.
  ///
  /// In en, this message translates to:
  /// **'Public IP'**
  String get publicIp;

  /// No description provided for @volumes.
  ///
  /// In en, this message translates to:
  /// **'Volumes'**
  String get volumes;

  /// No description provided for @volumeUsed.
  ///
  /// In en, this message translates to:
  /// **'{percent}% used'**
  String volumeUsed(String percent);

  /// No description provided for @volumeAvailable.
  ///
  /// In en, this message translates to:
  /// **'{available} available of {total}'**
  String volumeAvailable(String available, String total);

  /// No description provided for @encrypted.
  ///
  /// In en, this message translates to:
  /// **'Encrypted'**
  String get encrypted;

  /// No description provided for @cpuInfo.
  ///
  /// In en, this message translates to:
  /// **'CPU'**
  String get cpuInfo;

  /// No description provided for @processorCores.
  ///
  /// In en, this message translates to:
  /// **'{cores} Cores'**
  String processorCores(String cores);

  /// No description provided for @processors.
  ///
  /// In en, this message translates to:
  /// **'{count} Processors'**
  String processors(String count);

  /// No description provided for @batteryLevel.
  ///
  /// In en, this message translates to:
  /// **'Battery Level'**
  String get batteryLevel;

  /// No description provided for @lastUser.
  ///
  /// In en, this message translates to:
  /// **'Last User'**
  String get lastUser;

  /// No description provided for @bootVolume.
  ///
  /// In en, this message translates to:
  /// **'Boot Volume'**
  String get bootVolume;

  /// No description provided for @localUsers.
  ///
  /// In en, this message translates to:
  /// **'Local Users'**
  String get localUsers;

  /// No description provided for @regularUsers.
  ///
  /// In en, this message translates to:
  /// **'Regular Users'**
  String get regularUsers;

  /// No description provided for @systemUsers.
  ///
  /// In en, this message translates to:
  /// **'System Users'**
  String get systemUsers;

  /// No description provided for @admin.
  ///
  /// In en, this message translates to:
  /// **'Admin'**
  String get admin;

  /// No description provided for @assignToBlueprint.
  ///
  /// In en, this message translates to:
  /// **'Assign to Blueprint'**
  String get assignToBlueprint;

  /// No description provided for @installOnDevice.
  ///
  /// In en, this message translates to:
  /// **'Install on Device'**
  String get installOnDevice;

  /// No description provided for @selectBlueprint.
  ///
  /// In en, this message translates to:
  /// **'Select Blueprint'**
  String get selectBlueprint;

  /// No description provided for @selectDevice.
  ///
  /// In en, this message translates to:
  /// **'Select Device'**
  String get selectDevice;

  /// No description provided for @selfServiceEnabled.
  ///
  /// In en, this message translates to:
  /// **'Self-Service'**
  String get selfServiceEnabled;

  /// No description provided for @vppLicenses.
  ///
  /// In en, this message translates to:
  /// **'VPP Licenses'**
  String get vppLicenses;

  /// No description provided for @fileName.
  ///
  /// In en, this message translates to:
  /// **'File Name'**
  String get fileName;

  /// No description provided for @navPrism.
  ///
  /// In en, this message translates to:
  /// **'Prism'**
  String get navPrism;

  /// No description provided for @prismTitle.
  ///
  /// In en, this message translates to:
  /// **'Device Intelligence'**
  String get prismTitle;

  /// No description provided for @prismCategoryActivationLock.
  ///
  /// In en, this message translates to:
  /// **'Activation Lock'**
  String get prismCategoryActivationLock;

  /// No description provided for @prismCategoryApps.
  ///
  /// In en, this message translates to:
  /// **'Applications'**
  String get prismCategoryApps;

  /// No description provided for @prismCategoryApplicationFirewall.
  ///
  /// In en, this message translates to:
  /// **'Application Firewall'**
  String get prismCategoryApplicationFirewall;

  /// No description provided for @prismCategoryCellular.
  ///
  /// In en, this message translates to:
  /// **'Cellular'**
  String get prismCategoryCellular;

  /// No description provided for @prismCategoryCertificates.
  ///
  /// In en, this message translates to:
  /// **'Certificates'**
  String get prismCategoryCertificates;

  /// No description provided for @prismCategoryDesktopAndScreensaver.
  ///
  /// In en, this message translates to:
  /// **'Desktop & Screensaver'**
  String get prismCategoryDesktopAndScreensaver;

  /// No description provided for @prismCategoryDeviceInformation.
  ///
  /// In en, this message translates to:
  /// **'Device Information'**
  String get prismCategoryDeviceInformation;

  /// No description provided for @prismCategoryFilevault.
  ///
  /// In en, this message translates to:
  /// **'FileVault'**
  String get prismCategoryFilevault;

  /// No description provided for @prismCategoryGatekeeperAndXprotect.
  ///
  /// In en, this message translates to:
  /// **'Gatekeeper & XProtect'**
  String get prismCategoryGatekeeperAndXprotect;

  /// No description provided for @prismCategoryInstalledProfiles.
  ///
  /// In en, this message translates to:
  /// **'Installed Profiles'**
  String get prismCategoryInstalledProfiles;

  /// No description provided for @prismCategoryKernelExtensions.
  ///
  /// In en, this message translates to:
  /// **'Kernel Extensions'**
  String get prismCategoryKernelExtensions;

  /// No description provided for @prismCategoryLaunchAgentsAndDaemons.
  ///
  /// In en, this message translates to:
  /// **'Launch Agents & Daemons'**
  String get prismCategoryLaunchAgentsAndDaemons;

  /// No description provided for @prismCategoryLocalUsers.
  ///
  /// In en, this message translates to:
  /// **'Local Users'**
  String get prismCategoryLocalUsers;

  /// No description provided for @prismCategoryStartupSettings.
  ///
  /// In en, this message translates to:
  /// **'Startup Settings'**
  String get prismCategoryStartupSettings;

  /// No description provided for @prismCategorySystemExtensions.
  ///
  /// In en, this message translates to:
  /// **'System Extensions'**
  String get prismCategorySystemExtensions;

  /// No description provided for @prismCategoryTransparencyDatabase.
  ///
  /// In en, this message translates to:
  /// **'Transparency Database'**
  String get prismCategoryTransparencyDatabase;

  /// No description provided for @prismRecords.
  ///
  /// In en, this message translates to:
  /// **'{count} records'**
  String prismRecords(int count);

  /// No description provided for @prismNoData.
  ///
  /// In en, this message translates to:
  /// **'No data available for this category.'**
  String get prismNoData;

  /// No description provided for @prismExport.
  ///
  /// In en, this message translates to:
  /// **'Export CSV'**
  String get prismExport;

  /// No description provided for @prismExportRequested.
  ///
  /// In en, this message translates to:
  /// **'Export requested. Check back shortly for the download link.'**
  String get prismExportRequested;

  /// No description provided for @prismFilterByFamily.
  ///
  /// In en, this message translates to:
  /// **'Device Family'**
  String get prismFilterByFamily;

  /// No description provided for @prismAllFamilies.
  ///
  /// In en, this message translates to:
  /// **'All Families'**
  String get prismAllFamilies;

  /// Settings section title for appearance/theme
  ///
  /// In en, this message translates to:
  /// **'Appearance'**
  String get appearance;

  /// Label for theme mode setting
  ///
  /// In en, this message translates to:
  /// **'Theme'**
  String get themeMode;

  /// Theme follows system setting
  ///
  /// In en, this message translates to:
  /// **'System'**
  String get themeModeSystem;

  /// Light theme
  ///
  /// In en, this message translates to:
  /// **'Light'**
  String get themeModeLight;

  /// Dark theme
  ///
  /// In en, this message translates to:
  /// **'Dark'**
  String get themeModeDark;

  /// No description provided for @shortTypeScript.
  ///
  /// In en, this message translates to:
  /// **'Script'**
  String get shortTypeScript;

  /// No description provided for @shortTypeCustom.
  ///
  /// In en, this message translates to:
  /// **'Custom'**
  String get shortTypeCustom;

  /// No description provided for @shortTypeProfile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get shortTypeProfile;

  /// No description provided for @shortTypeInHouse.
  ///
  /// In en, this message translates to:
  /// **'In-House'**
  String get shortTypeInHouse;

  /// No description provided for @shortTypeVpp.
  ///
  /// In en, this message translates to:
  /// **'VPP'**
  String get shortTypeVpp;

  /// No description provided for @shortTypeManaged.
  ///
  /// In en, this message translates to:
  /// **'Managed'**
  String get shortTypeManaged;

  /// No description provided for @shortTypeKandji.
  ///
  /// In en, this message translates to:
  /// **'Kandji'**
  String get shortTypeKandji;

  /// No description provided for @shortTypeMacos.
  ///
  /// In en, this message translates to:
  /// **'macOS'**
  String get shortTypeMacos;

  /// No description provided for @shortTypeOs.
  ///
  /// In en, this message translates to:
  /// **'OS'**
  String get shortTypeOs;

  /// No description provided for @shortTypeSecurity.
  ///
  /// In en, this message translates to:
  /// **'Security'**
  String get shortTypeSecurity;

  /// No description provided for @shortTypeAuto.
  ///
  /// In en, this message translates to:
  /// **'Auto'**
  String get shortTypeAuto;

  /// No description provided for @categoryOsUpdates.
  ///
  /// In en, this message translates to:
  /// **'OS Updates'**
  String get categoryOsUpdates;

  /// No description provided for @categoryAutoApps.
  ///
  /// In en, this message translates to:
  /// **'Auto Apps'**
  String get categoryAutoApps;

  /// No description provided for @autoApp.
  ///
  /// In en, this message translates to:
  /// **'Auto App'**
  String get autoApp;

  /// No description provided for @fileSize.
  ///
  /// In en, this message translates to:
  /// **'File Size'**
  String get fileSize;

  /// No description provided for @unzipLocation.
  ///
  /// In en, this message translates to:
  /// **'Unzip Location'**
  String get unzipLocation;

  /// No description provided for @sha256Label.
  ///
  /// In en, this message translates to:
  /// **'SHA-256'**
  String get sha256Label;

  /// No description provided for @fileUpdated.
  ///
  /// In en, this message translates to:
  /// **'File Updated'**
  String get fileUpdated;

  /// No description provided for @mdmIdentifier.
  ///
  /// In en, this message translates to:
  /// **'MDM Identifier'**
  String get mdmIdentifier;

  /// No description provided for @bundleId.
  ///
  /// In en, this message translates to:
  /// **'Bundle ID'**
  String get bundleId;

  /// No description provided for @appleTV.
  ///
  /// In en, this message translates to:
  /// **'Apple TV'**
  String get appleTV;

  /// No description provided for @appleVision.
  ///
  /// In en, this message translates to:
  /// **'Apple Vision'**
  String get appleVision;

  /// No description provided for @appleWatch.
  ///
  /// In en, this message translates to:
  /// **'Apple Watch'**
  String get appleWatch;

  /// No description provided for @iPodLabel.
  ///
  /// In en, this message translates to:
  /// **'iPod'**
  String get iPodLabel;

  /// No description provided for @typeLabel.
  ///
  /// In en, this message translates to:
  /// **'Type'**
  String get typeLabel;

  /// No description provided for @languageEnglish.
  ///
  /// In en, this message translates to:
  /// **'English'**
  String get languageEnglish;

  /// No description provided for @languageGerman.
  ///
  /// In en, this message translates to:
  /// **'Deutsch'**
  String get languageGerman;

  /// No description provided for @languageSpanish.
  ///
  /// In en, this message translates to:
  /// **'Español'**
  String get languageSpanish;

  /// No description provided for @languageFrench.
  ///
  /// In en, this message translates to:
  /// **'Français'**
  String get languageFrench;

  /// No description provided for @languagePortuguese.
  ///
  /// In en, this message translates to:
  /// **'Português'**
  String get languagePortuguese;

  /// No description provided for @languageItalian.
  ///
  /// In en, this message translates to:
  /// **'Italiano'**
  String get languageItalian;

  /// No description provided for @languagePolish.
  ///
  /// In en, this message translates to:
  /// **'Polski'**
  String get languagePolish;

  /// No description provided for @languageCroatian.
  ///
  /// In en, this message translates to:
  /// **'Hrvatski'**
  String get languageCroatian;

  /// No description provided for @languageRussian.
  ///
  /// In en, this message translates to:
  /// **'Русский'**
  String get languageRussian;

  /// No description provided for @languageUkrainian.
  ///
  /// In en, this message translates to:
  /// **'Українська'**
  String get languageUkrainian;

  /// No description provided for @languageArabic.
  ///
  /// In en, this message translates to:
  /// **'العربية'**
  String get languageArabic;

  /// No description provided for @languageHindi.
  ///
  /// In en, this message translates to:
  /// **'हिन्दी'**
  String get languageHindi;

  /// No description provided for @languageChinese.
  ///
  /// In en, this message translates to:
  /// **'中文'**
  String get languageChinese;

  /// No description provided for @languageJapanese.
  ///
  /// In en, this message translates to:
  /// **'日本語'**
  String get languageJapanese;

  /// No description provided for @languageKorean.
  ///
  /// In en, this message translates to:
  /// **'한국어'**
  String get languageKorean;

  /// No description provided for @languageTurkish.
  ///
  /// In en, this message translates to:
  /// **'Türkçe'**
  String get languageTurkish;

  /// No description provided for @languageDutch.
  ///
  /// In en, this message translates to:
  /// **'Nederlands'**
  String get languageDutch;

  /// No description provided for @languageSwedish.
  ///
  /// In en, this message translates to:
  /// **'Svenska'**
  String get languageSwedish;

  /// No description provided for @languageCzech.
  ///
  /// In en, this message translates to:
  /// **'Čeština'**
  String get languageCzech;

  /// No description provided for @languageRomanian.
  ///
  /// In en, this message translates to:
  /// **'Română'**
  String get languageRomanian;

  /// No description provided for @languageThai.
  ///
  /// In en, this message translates to:
  /// **'ไทย'**
  String get languageThai;

  /// No description provided for @languageDanish.
  ///
  /// In en, this message translates to:
  /// **'Dansk'**
  String get languageDanish;

  /// No description provided for @languageNorwegian.
  ///
  /// In en, this message translates to:
  /// **'Norsk'**
  String get languageNorwegian;

  /// No description provided for @languageIndonesian.
  ///
  /// In en, this message translates to:
  /// **'Bahasa Indonesia'**
  String get languageIndonesian;

  /// No description provided for @languageVietnamese.
  ///
  /// In en, this message translates to:
  /// **'Tiếng Việt'**
  String get languageVietnamese;
}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>[
    'ar',
    'cs',
    'da',
    'de',
    'en',
    'es',
    'fr',
    'hi',
    'hr',
    'id',
    'it',
    'ja',
    'ko',
    'nb',
    'nl',
    'pl',
    'pt',
    'ro',
    'ru',
    'sv',
    'th',
    'tr',
    'uk',
    'vi',
    'zh',
  ].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {
  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar':
      return AppLocalizationsAr();
    case 'cs':
      return AppLocalizationsCs();
    case 'da':
      return AppLocalizationsDa();
    case 'de':
      return AppLocalizationsDe();
    case 'en':
      return AppLocalizationsEn();
    case 'es':
      return AppLocalizationsEs();
    case 'fr':
      return AppLocalizationsFr();
    case 'hi':
      return AppLocalizationsHi();
    case 'hr':
      return AppLocalizationsHr();
    case 'id':
      return AppLocalizationsId();
    case 'it':
      return AppLocalizationsIt();
    case 'ja':
      return AppLocalizationsJa();
    case 'ko':
      return AppLocalizationsKo();
    case 'nb':
      return AppLocalizationsNb();
    case 'nl':
      return AppLocalizationsNl();
    case 'pl':
      return AppLocalizationsPl();
    case 'pt':
      return AppLocalizationsPt();
    case 'ro':
      return AppLocalizationsRo();
    case 'ru':
      return AppLocalizationsRu();
    case 'sv':
      return AppLocalizationsSv();
    case 'th':
      return AppLocalizationsTh();
    case 'tr':
      return AppLocalizationsTr();
    case 'uk':
      return AppLocalizationsUk();
    case 'vi':
      return AppLocalizationsVi();
    case 'zh':
      return AppLocalizationsZh();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.',
  );
}
