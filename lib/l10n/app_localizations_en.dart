// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Devices';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Users';

  @override
  String get navSettings => 'Settings';

  @override
  String get welcomeTitle => 'Welcome to FleetPilot';

  @override
  String get welcomeSubtitle => 'Manage your Apple device fleet from anywhere.';

  @override
  String get addProfile => 'Add Profile';

  @override
  String get editProfile => 'Edit Profile';

  @override
  String get displayName => 'Display Name';

  @override
  String get displayNameHint => 'e.g. Acme Corp — Prod';

  @override
  String get region => 'Region';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Subdomain';

  @override
  String get subdomainHint => 'your-tenant';

  @override
  String get apiToken => 'API Token';

  @override
  String get apiTokenHint => 'Paste your API token here';

  @override
  String urlPreview(String url) {
    return 'API URL: $url';
  }

  @override
  String get verifyAndSave => 'Verify & Save';

  @override
  String get verifying => 'Verifying connection...';

  @override
  String get connectionSuccess => 'Connection verified successfully!';

  @override
  String get errorInvalidToken =>
      'Invalid API token. Please check your token in the web console.';

  @override
  String get errorInsufficientPermissions =>
      'Token lacks required permissions. Ensure the token has read access to Devices.';

  @override
  String get errorNetworkUnreachable =>
      'Could not reach the API. Check your internet connection and subdomain.';

  @override
  String get errorNotFound => 'The requested resource was not found.';

  @override
  String get errorValidation =>
      'The request contained invalid data. Please check your input.';

  @override
  String get errorRateLimit =>
      'Too many requests. Please wait a moment and try again.';

  @override
  String get errorServer =>
      'The server encountered an error. Please try again later.';

  @override
  String get errorUnexpected =>
      'An unexpected error occurred. Please try again.';

  @override
  String get retry => 'Retry';

  @override
  String get cancel => 'Cancel';

  @override
  String get delete => 'Delete';

  @override
  String get save => 'Save';

  @override
  String get search => 'Search';

  @override
  String get searchDevices => 'Search devices...';

  @override
  String get filterAll => 'All';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'All Blueprints';

  @override
  String loadingDevices(int count) {
    return 'Loading $count devices...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count devices',
      one: '1 device',
      zero: 'No devices',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'No devices found';

  @override
  String get noDevicesFoundMessage => 'Try adjusting your search or filters.';

  @override
  String lastCheckIn(String time) {
    return 'Last check-in: $time';
  }

  @override
  String get compliancePass => 'Pass';

  @override
  String get complianceFail => 'Fail';

  @override
  String get compliancePending => 'Pending';

  @override
  String get deviceDetails => 'Device Details';

  @override
  String get serialNumber => 'Serial Number';

  @override
  String get model => 'Model';

  @override
  String get osVersion => 'OS Version';

  @override
  String get assetTag => 'Asset Tag';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Enrolled';

  @override
  String get assignedUser => 'Assigned User';

  @override
  String get actions => 'Actions';

  @override
  String get actionLock => 'Lock';

  @override
  String get actionRestart => 'Restart';

  @override
  String get actionShutdown => 'Shutdown';

  @override
  String get actionErase => 'Erase';

  @override
  String get actionBlankPush => 'Send Blank Push';

  @override
  String get actionReinstallAgent => 'Reinstall Agent';

  @override
  String get actionUpdateInventory => 'Update Inventory';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Enable Remote Desktop';

  @override
  String get actionRemoteDesktopDisable => 'Disable Remote Desktop';

  @override
  String get actionLostMode => 'Enable Lost Mode';

  @override
  String get destructiveActionTitle => 'Confirm Destructive Action';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'This action cannot be undone. Type \"$deviceName\" to confirm.';
  }

  @override
  String get destructiveActionHint => 'Type device name to confirm';

  @override
  String get confirm => 'Confirm';

  @override
  String get actionSuccess => 'Action completed successfully.';

  @override
  String get actionFailed => 'Action failed. Please try again.';

  @override
  String get biometricReason => 'Authenticate to access FleetPilot';

  @override
  String get biometricReasonSecrets => 'Authenticate to view sensitive data';

  @override
  String get biometricReasonDestructive =>
      'Authenticate to perform this action';

  @override
  String get biometricFailed => 'Authentication failed. Please try again.';

  @override
  String get profiles => 'Profiles';

  @override
  String activeProfile(String name) {
    return 'Active: $name';
  }

  @override
  String get switchProfile => 'Switch Profile';

  @override
  String get deleteProfile => 'Delete Profile';

  @override
  String get deleteProfileConfirm =>
      'Are you sure you want to delete this profile? This action cannot be undone.';

  @override
  String get noProfiles => 'No profiles configured';

  @override
  String get settings => 'Settings';

  @override
  String get about => 'About';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get validationRequired => 'This field is required.';

  @override
  String get validationSubdomain =>
      'Only letters, numbers, and hyphens allowed. No leading or trailing hyphens.';

  @override
  String get validationToken =>
      'Invalid token format. Must be 20–500 characters, alphanumeric and common delimiters only.';

  @override
  String pinLockedOut(int seconds) {
    return 'Too many failed attempts. Try again in $seconds seconds.';
  }

  @override
  String get complianceStatus => 'Compliance Status';

  @override
  String get platform => 'Platform';

  @override
  String get deviceName => 'Device Name';

  @override
  String get searchUsers => 'Search users...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count users',
      one: '1 user',
      zero: 'No users',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'No users found';

  @override
  String get noUsersFoundMessage => 'Try adjusting your search or filters.';

  @override
  String get showArchived => 'Show Archived';

  @override
  String get archived => 'Archived';

  @override
  String get email => 'Email';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprints',
      one: '1 blueprint',
      zero: 'No blueprints',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'No blueprints found';

  @override
  String get noBlueprintsFoundMessage =>
      'No blueprints have been configured yet.';

  @override
  String get enrollmentActive => 'Enrollment Active';

  @override
  String get enrollmentInactive => 'Enrollment Inactive';

  @override
  String get tabOverview => 'Overview';

  @override
  String get tabApps => 'Apps';

  @override
  String get tabStatus => 'Status';

  @override
  String get tabActivity => 'Activity';

  @override
  String get tabCommands => 'Commands';

  @override
  String get hardware => 'Hardware';

  @override
  String get security => 'Security';

  @override
  String get totalStorage => 'Total Storage';

  @override
  String get availableStorage => 'Available Storage';

  @override
  String get totalRam => 'Total RAM';

  @override
  String get wifiMac => 'Wi-Fi MAC Address';

  @override
  String get encryption => 'Encryption';

  @override
  String get passcode => 'Passcode';

  @override
  String get noAppsFound => 'No apps found';

  @override
  String get noActivityFound => 'No activity found';

  @override
  String get noCommandsFound => 'No commands found';

  @override
  String get libraryItems => 'Library Items';

  @override
  String get parameters => 'Parameters';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'OS Build';

  @override
  String get cellular => 'Cellular';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '1 app',
      zero: 'No apps',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'User Details';

  @override
  String get jobTitle => 'Job Title';

  @override
  String get department => 'Department';

  @override
  String get createdAt => 'Created';

  @override
  String get updatedAt => 'Updated';

  @override
  String get assignedDevices => 'Assigned Devices';

  @override
  String get noAssignedDevices => 'No devices assigned to this user.';

  @override
  String get userInfo => 'User Info';

  @override
  String get navMore => 'More';

  @override
  String get tabSecrets => 'Secrets';

  @override
  String get filevaultKey => 'FileVault Recovery Key';

  @override
  String get unlockPin => 'Unlock PIN';

  @override
  String get recoveryPassword => 'Recovery Lock Password';

  @override
  String get bypassCode => 'Activation Lock Bypass Code';

  @override
  String get noSecretsFound => 'No secrets available for this device.';

  @override
  String get secretCopied => 'Secret copied to clipboard';

  @override
  String get threats => 'Threats';

  @override
  String get noThreatsFound => 'No threats detected.';

  @override
  String get vulnerabilities => 'Vulnerabilities';

  @override
  String get noVulnerabilitiesFound => 'No vulnerabilities detected.';

  @override
  String get aboutApp => 'About FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot is an open-source mobile MDM management app for Apple device fleets.';

  @override
  String get tapToCopy => 'Tap to copy';

  @override
  String get devices => 'Devices';

  @override
  String get severity => 'Severity';

  @override
  String get tabLocation => 'Location';

  @override
  String get locationNotAvailable =>
      'Location data is not available for this device.';

  @override
  String get enableLostModeHint => 'Enable Lost Mode to track this device.';

  @override
  String get lostModeEnabled => 'Lost Mode Enabled';

  @override
  String get noLibraryItemsFound => 'No library items found.';

  @override
  String get licenses => 'Licenses';

  @override
  String get lostModeMessage => 'Lost Mode Message';

  @override
  String get lostModePhone => 'Phone Number';

  @override
  String get lostModeFootnote =>
      'Optional message and phone number shown on device';

  @override
  String get supervised => 'Supervised';

  @override
  String get unsupervised => 'Unsupervised';

  @override
  String get filterSupervised => 'Supervised';

  @override
  String get filterUnsupervised => 'Unsupervised';

  @override
  String get language => 'Language';

  @override
  String get languageSystem => 'System Default';

  @override
  String get actionDisableLostMode => 'Disable Lost Mode';

  @override
  String get actionClearPasscode => 'Clear Passcode';

  @override
  String get filterLostMode => 'Lost Mode';

  @override
  String get lostMode => 'Lost Mode';

  @override
  String get sectionManagement => 'Management';

  @override
  String get sectionStatus => 'Status';

  @override
  String get statusMissing => 'Missing';

  @override
  String get statusRemoved => 'Removed';

  @override
  String get agent => 'Agent';

  @override
  String get identifier => 'Identifier';

  @override
  String get processor => 'Processor';

  @override
  String get hardwareUuid => 'Hardware UUID';

  @override
  String get devicePosture => 'Device Posture';

  @override
  String get unknownDevice => 'Unknown Device';

  @override
  String get securityAppLock => 'App Lock';

  @override
  String get securityAppLockDescription =>
      'Set a 6-digit PIN to protect the app. Biometric authentication can be enabled after setting a PIN.';

  @override
  String get securityAppLockActive => 'App lock enabled';

  @override
  String get securityAppLockInactive => 'No app lock configured';

  @override
  String get securitySetPin => 'Set PIN';

  @override
  String get securityChangePin => 'Change PIN';

  @override
  String get securityRemovePin => 'Remove PIN';

  @override
  String get securityCurrentPin => 'Current PIN';

  @override
  String get securityNewPin => 'New PIN';

  @override
  String get securityConfirmPin => 'Enter the PIN again to confirm.';

  @override
  String get securityPinLength => 'PIN must be 6 digits.';

  @override
  String get securityPinMismatch => 'PINs do not match.';

  @override
  String get securityPinWrong => 'Incorrect PIN.';

  @override
  String get securityPinSet => 'PIN has been set.';

  @override
  String get securityPinChanged => 'PIN has been changed.';

  @override
  String get securityPinRemoved => 'PIN and app lock have been removed.';

  @override
  String get securityBiometric => 'Biometric';

  @override
  String get securityBiometricDescription =>
      'Use fingerprint or face recognition to unlock the app instead of entering the PIN.';

  @override
  String get securityBiometricEnable => 'Biometric Unlock';

  @override
  String get securityBiometricActive => 'Active';

  @override
  String get securityBiometricInactive => 'Inactive';

  @override
  String get securityBiometricUnavailable =>
      'Biometric authentication is not available on this device.';

  @override
  String get securityNext => 'Next';

  @override
  String get actionRenewMdm => 'Renew MDM Profile';

  @override
  String get actionSetName => 'Set Device Name';

  @override
  String get actionSetNameHint => 'Enter new device name';

  @override
  String get actionDeleteUser => 'Delete User';

  @override
  String get actionDeleteUserName => 'Username';

  @override
  String get actionDeleteAllUsers => 'Delete all users';

  @override
  String get actionForceDeletion => 'Force deletion';

  @override
  String get actionUnlockAccount => 'Unlock Account';

  @override
  String get actionPlayLostModeSound => 'Play Lost Mode Sound';

  @override
  String get actionUpdateLocation => 'Update Location';

  @override
  String get erasePin => '6-Digit PIN';

  @override
  String get erasePinHint => 'Required for mobile devices';

  @override
  String get erasePreserveDataPlan => 'Preserve data plan';

  @override
  String get eraseDisallowProximitySetup => 'Disallow proximity setup';

  @override
  String get eraseReturnToService => 'Return to service';

  @override
  String get lockMessage => 'Lock message (optional)';

  @override
  String get lockPhone => 'Phone Number';

  @override
  String get restartRebuildKernelCache => 'Rebuild kernel cache';

  @override
  String get restartNotifyUser => 'Notify user';

  @override
  String get actionRemoteDesktop => 'Remote Desktop';

  @override
  String get tabNotes => 'Notes';

  @override
  String get noNotesFound => 'No notes yet';

  @override
  String get addNote => 'Add Note';

  @override
  String get editNote => 'Edit Note';

  @override
  String get deleteNote => 'Delete Note';

  @override
  String get deleteNoteConfirm => 'Are you sure you want to delete this note?';

  @override
  String get noteContent => 'Note content';

  @override
  String get noteSaved => 'Note saved.';

  @override
  String get noteDeleted => 'Note deleted.';

  @override
  String get editDevice => 'Edit Device';

  @override
  String get deviceUpdated => 'Device updated.';

  @override
  String get deleteDevice => 'Delete Device';

  @override
  String get deleteDeviceConfirm =>
      'This will permanently remove the device from MDM. This action cannot be undone.';

  @override
  String get deviceDeleted => 'Device deleted.';

  @override
  String get cancelLostMode => 'Cancel Lost Mode';

  @override
  String get cancelLostModeConfirm => 'Cancel the pending lost mode request?';

  @override
  String get lostModeCancelled => 'Lost mode cancelled.';

  @override
  String get tags => 'Tags';

  @override
  String get noTags => 'No tags';

  @override
  String get addTag => 'Add Tag';

  @override
  String get tagName => 'Tag name';

  @override
  String get manageTags => 'Manage Tags';

  @override
  String get auditLog => 'Audit Log';

  @override
  String get noAuditEvents => 'No audit events found';

  @override
  String get actionDailyCheckIn => 'Daily Check-in';

  @override
  String get licensing => 'Licensing';

  @override
  String get deviceLimit => 'Device Limit';

  @override
  String get devicesUsed => 'Devices Used';

  @override
  String get licenseType => 'License Type';

  @override
  String get appleDevices => 'Apple Devices';

  @override
  String get deleteUser => 'Delete User';

  @override
  String get deleteUserConfirm =>
      'Are you sure you want to delete this user? This action cannot be undone.';

  @override
  String get userDeleted => 'User deleted.';

  @override
  String get createBlueprint => 'Create Blueprint';

  @override
  String get editBlueprint => 'Edit Blueprint';

  @override
  String get deleteBlueprint => 'Delete Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Deleting this blueprint will unenroll all assigned devices. This action cannot be undone.';

  @override
  String get blueprintCreated => 'Blueprint created.';

  @override
  String get blueprintUpdated => 'Blueprint updated.';

  @override
  String get blueprintDeleted => 'Blueprint deleted.';

  @override
  String get blueprintName => 'Blueprint Name';

  @override
  String get blueprintDescription => 'Description';

  @override
  String get enrollmentCode => 'Enrollment Code';

  @override
  String get assignLibraryItem => 'Assign Library Item';

  @override
  String get removeLibraryItem => 'Remove Library Item';

  @override
  String get libraryItemAssigned => 'Library item assigned.';

  @override
  String get libraryItemRemoved => 'Library item removed.';

  @override
  String get lostModeDetails => 'Lost Mode Details';

  @override
  String get lostModeEnabledBy => 'Enabled By';

  @override
  String get lostModeEnabledAt => 'Enabled At';

  @override
  String get searchBlueprints => 'Search blueprints...';

  @override
  String get searchVulnerabilities => 'Search vulnerabilities...';

  @override
  String get searchThreats => 'Search threats...';

  @override
  String get searchAuditLog => 'Search audit log...';

  @override
  String get filterCritical => 'Critical';

  @override
  String get filterHigh => 'High';

  @override
  String get filterMedium => 'Medium';

  @override
  String get filterLow => 'Low';

  @override
  String get filterClearAll => 'Clear All';

  @override
  String get filterTitle => 'Filters';

  @override
  String get filterApply => 'Apply';

  @override
  String get filterPlatform => 'Platform';

  @override
  String get filterSupervision => 'Supervision';

  @override
  String get filterStatus => 'Status';

  @override
  String get adeIntegrations => 'ADE Integrations';

  @override
  String get noAdeIntegrations => 'No ADE integrations found.';

  @override
  String get adeDevices => 'ADE Devices';

  @override
  String get noAdeDevices => 'No ADE devices found.';

  @override
  String get tokenExpiry => 'Token Expiry';

  @override
  String get tokenValid => 'Token Valid';

  @override
  String get tokenExpired => 'Token Expired';

  @override
  String get orgName => 'Organization';

  @override
  String get defaultBlueprint => 'Default Blueprint';

  @override
  String get renewToken => 'Renew Token';

  @override
  String get publicKey => 'Public Key';

  @override
  String get vulnerabilityDetections => 'Vulnerability Detections';

  @override
  String get noDetectionsFound => 'No detections found.';

  @override
  String get behavioralDetections => 'Behavioral Detections';

  @override
  String get noBehavioralDetections => 'No behavioral detections found.';

  @override
  String get searchBehavioralDetections => 'Search detections...';

  @override
  String get affectedDevices => 'Affected Devices';

  @override
  String get noAffectedDevices =>
      'No affected devices found. Previously affected devices may have been removed.';

  @override
  String get affectedSoftware => 'Affected Software';

  @override
  String get blueprintTemplates => 'Blueprint Templates';

  @override
  String get noTemplatesFound => 'No templates found.';

  @override
  String get otaEnrollmentProfile => 'OTA Enrollment Profile';

  @override
  String get libraryItemActivity => 'Activity';

  @override
  String get libraryItemDeploymentStatus => 'Deployment Status';

  @override
  String get noActivityFound2 => 'No activity found.';

  @override
  String get noStatusFound => 'No deployment status found.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detections',
      one: '1 detection',
      zero: 'No detections',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count integrations',
      one: '1 integration',
      zero: 'No integrations',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Vulnerability Detail';

  @override
  String get description => 'Description';

  @override
  String get firstDetected => 'First Detected';

  @override
  String get lastDetected => 'Last Detected';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count software',
      one: '1 software',
      zero: 'No software',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Edit Integration';

  @override
  String get deleteIntegration => 'Delete Integration';

  @override
  String get deleteIntegrationConfirm =>
      'Are you sure you want to delete this ADE integration? This cannot be undone.';

  @override
  String get integrationDeleted => 'Integration deleted.';

  @override
  String get integrationUpdated => 'Integration updated.';

  @override
  String get defaultBlueprintId => 'Default Blueprint ID';

  @override
  String get phone => 'Phone';

  @override
  String get downloadOtaProfile => 'Download Enrollment Profile';

  @override
  String get otaProfileCopied => 'Enrollment profile copied to clipboard.';

  @override
  String get noOtaProfile => 'No enrollment profile available.';

  @override
  String get createTag => 'Create Tag';

  @override
  String get editTag => 'Edit Tag';

  @override
  String get deleteTag => 'Delete Tag';

  @override
  String get deleteTagConfirm => 'Are you sure you want to delete this tag?';

  @override
  String get tagColor => 'Color';

  @override
  String get tagCreated => 'Tag created.';

  @override
  String get tagUpdated => 'Tag updated.';

  @override
  String get tagDeleted => 'Tag deleted.';

  @override
  String get noTagsFound => 'No tags found.';

  @override
  String get libraryItemDetail => 'Library Item';

  @override
  String get viewActivity => 'View Activity';

  @override
  String get viewStatus => 'View Status';

  @override
  String get installations => 'Installations';

  @override
  String get createAdeIntegration => 'Create ADE Integration';

  @override
  String get adeCreateDescription =>
      'Upload a server token file (.p7m) from Apple Business Manager to create a new ADE integration.';

  @override
  String get selectTokenFile => 'Select Token File';

  @override
  String tokenFileSelected(String name) {
    return 'Token file: $name';
  }

  @override
  String get noTokenFileSelected => 'No token file selected';

  @override
  String get integrationCreated => 'Integration created.';

  @override
  String get create => 'Create';

  @override
  String get step1GetPublicKey => 'Step 1: Download Public Key';

  @override
  String get step1Description =>
      'Copy the public key and upload it to Apple Business Manager.';

  @override
  String get step2UploadToken => 'Step 2: Upload Server Token';

  @override
  String get step2Description =>
      'Select the .p7m token file downloaded from Apple.';

  @override
  String get step3Configure => 'Step 3: Configure';

  @override
  String get publicKeyCopied => 'Public key copied to clipboard.';

  @override
  String get renewTokenDescription =>
      'Upload a new .p7m token file to renew this integration\'s token.';

  @override
  String get tokenRenewed => 'Token renewed.';

  @override
  String get aboutLinks => 'Links';

  @override
  String get aboutWebsite => 'Website';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Source Code';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Tech Stack';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'State Management';

  @override
  String get aboutArchitecture => 'Architecture';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Data Classes';

  @override
  String get aboutNavigationLabel => 'Navigation';

  @override
  String get aboutOpenSourceLicenses => 'Open Source Licenses';

  @override
  String get aboutShowHide => 'Toggle visibility';

  @override
  String get editProfileTitle => 'Edit Connection';

  @override
  String get editProfileSubtitle => 'Update your tenant connection settings.';

  @override
  String get apiTokenHintEdit => 'Leave empty to keep existing token';

  @override
  String get profileUpdated => 'Profile updated.';

  @override
  String profileSwitched(String name) {
    return 'Switched to $name.';
  }

  @override
  String get securityAutoLock => 'Auto-Lock';

  @override
  String get securityAutoLockDescription =>
      'Automatically require authentication after the app has been in the background.';

  @override
  String get timeoutImmediately => 'Immediately';

  @override
  String get timeoutSeconds30 => 'After 30 seconds';

  @override
  String get timeoutSeconds60 => 'After 1 minute';

  @override
  String get timeoutSeconds120 => 'After 2 minutes';

  @override
  String get timeoutMinutes5 => 'After 5 minutes';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'No Blueprint';

  @override
  String get presetSaveFilter => 'Save Filter Preset';

  @override
  String get presetLoad => 'Load Preset';

  @override
  String get presetName => 'Preset Name';

  @override
  String get presetNameHint => 'e.g. Unsupervised Macs';

  @override
  String get presetSaved => 'Filter preset saved.';

  @override
  String get presetDeleted => 'Filter preset deleted.';

  @override
  String presetApplied(String name) {
    return 'Preset \"$name\" applied.';
  }

  @override
  String get presetNoPresets => 'No saved presets';

  @override
  String get presetNoPresetsMessage =>
      'Save your current filters as a preset for quick access.';

  @override
  String get presetDeleteConfirm => 'Delete this preset?';

  @override
  String get presetNameRequired => 'Please enter a preset name.';

  @override
  String selectedCount(int count) {
    return '$count selected';
  }

  @override
  String get selectAll => 'Select all';

  @override
  String get deselectAll => 'Deselect all';

  @override
  String get bulkActions => 'Actions';

  @override
  String bulkActionsTitle(int count) {
    return 'Actions for $count devices';
  }

  @override
  String get bulkActionAssignTag => 'Assign Tag';

  @override
  String get bulkActionAssignTagDescription =>
      'Add a tag to all selected devices';

  @override
  String get bulkActionAssignBlueprint => 'Assign Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Move selected devices to a blueprint';

  @override
  String get bulkActionLock => 'Lock Devices';

  @override
  String get bulkActionLockDescription => 'Lock all selected devices remotely';

  @override
  String get bulkActionRestart => 'Restart Devices';

  @override
  String get bulkActionRestartDescription => 'Restart all selected devices';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Are you sure you want to restart $count devices?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Successfully completed action on $count devices.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Completed on $success devices, $failed failed.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed of $total completed';
  }

  @override
  String get biometricReasonBulkAction => 'Authenticate to perform bulk action';

  @override
  String get lockPin => 'Lock PIN (optional)';

  @override
  String get noTagsAvailable =>
      'No tags available. Create tags in the MDM web console.';

  @override
  String get noBlueprintsAvailable => 'No blueprints available.';

  @override
  String get selectADevice => 'Select a device';

  @override
  String get selectABlueprint => 'Select a blueprint';

  @override
  String get clearSearch => 'Clear search';

  @override
  String get refresh => 'Refresh';

  @override
  String get moreActions => 'More actions';

  @override
  String get close => 'Close';

  @override
  String get onboardingSkip => 'Skip';

  @override
  String get onboardingNext => 'Next';

  @override
  String get onboardingGetStarted => 'Get Started';

  @override
  String get onboardingWelcomeTitle => 'Welcome to FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Your mobile command center for Apple device fleet management. Monitor, manage, and secure your entire fleet from anywhere.';

  @override
  String get onboardingDevicesTitle => 'Device Management';

  @override
  String get onboardingDevicesSubtitle =>
      'Full visibility and control over every device in your fleet.';

  @override
  String get onboardingDevicesFeature1 =>
      'View all enrolled iPhones, iPads, Macs, and Apple TVs';

  @override
  String get onboardingDevicesFeature2 =>
      'Send remote commands: lock, restart, erase, and more';

  @override
  String get onboardingDevicesFeature3 =>
      'Track blueprints, apps, and compliance status';

  @override
  String get onboardingSecurityTitle => 'Built for Security';

  @override
  String get onboardingSecuritySubtitle =>
      'Your fleet data stays protected with multiple layers of security.';

  @override
  String get onboardingSecurityFeature1 =>
      'Biometric authentication with Face ID or fingerprint';

  @override
  String get onboardingSecurityFeature2 => '6-digit PIN lock for app access';

  @override
  String get onboardingSecurityFeature3 =>
      'Automatic session lock after timeout';

  @override
  String get onboardingReadyTitle => 'Ready to Go';

  @override
  String get onboardingReadySubtitle =>
      'Connect your MDM tenant to start managing your Apple device fleet. You\'ll set up your API connection and security PIN next.';

  @override
  String get searchTags => 'Search tags';

  @override
  String tagDeviceCount(int count) {
    return '$count devices';
  }

  @override
  String get sortTitle => 'Sort';

  @override
  String get sortDirection => 'Sort Direction';

  @override
  String get ascending => 'Ascending';

  @override
  String get descending => 'Descending';

  @override
  String get filterSeverity => 'Severity';

  @override
  String get filterSort => 'Filter & Sort';

  @override
  String get statusQuarantined => 'Quarantined';

  @override
  String get statusNotQuarantined => 'Not Quarantined';

  @override
  String get statusDetected => 'Detected';

  @override
  String get statusReleased => 'Released';

  @override
  String get severityCritical => 'Critical';

  @override
  String get severityHigh => 'High';

  @override
  String get severityMedium => 'Medium';

  @override
  String get severityLow => 'Low';

  @override
  String threatCount(int count) {
    return '$count threats';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count detections';
  }

  @override
  String get downloadPublicKey => 'Download';

  @override
  String get publicKeySaved => 'Public key saved';

  @override
  String get sortBy => 'Sort by';

  @override
  String get sortByCvss => 'CVSS Score';

  @override
  String get sortByDeviceCount => 'Affected devices';

  @override
  String get sortByCveId => 'CVE ID';

  @override
  String vulnCount(int count) {
    return '$count vulnerabilities';
  }

  @override
  String get assignTags => 'Tags';

  @override
  String get noTagsAvailableMessage => 'No tags available. Create tags first.';

  @override
  String get failedToLoadTags => 'Failed to load tags';

  @override
  String get details => 'Details';

  @override
  String get searchLibraryItems => 'Search library items...';

  @override
  String get categoryCustomScript => 'Custom Script';

  @override
  String get categoryCustomApp => 'Custom App';

  @override
  String get categoryCustomProfile => 'Custom Profile';

  @override
  String get categoryInHouseApp => 'In-House App';

  @override
  String get categoryBuiltIn => 'Built-in';

  @override
  String get categoryVppApps => 'VPP / App Store Apps';

  @override
  String get categoryManagedProfiles => 'Managed Profiles';

  @override
  String get categoryKandjiSetup => 'MDM Setup';

  @override
  String get categoryMacosRelease => 'macOS Updates';

  @override
  String get categoryThreatPolicy => 'Security Policies';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprints',
      one: '1 blueprint',
    );
    return 'In $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Once';

  @override
  String get executionFrequencyEvery15Min => 'Every 15 minutes';

  @override
  String get executionFrequencyEveryDay => 'Daily';

  @override
  String get executionFrequencyNoEnforcement => 'No enforcement';

  @override
  String get scriptBody => 'Script';

  @override
  String get remediationScript => 'Remediation Script';

  @override
  String get allProperties => 'All Properties';

  @override
  String get builtInLibraryItem => 'Built-in library item';

  @override
  String get builtInDetailsHint => 'Details available on Status tab';

  @override
  String get active => 'Active';

  @override
  String get yes => 'Yes';

  @override
  String get no => 'No';

  @override
  String get execution => 'Execution';

  @override
  String get restart => 'Restart';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Install Type';

  @override
  String get enforcement => 'Enforcement';

  @override
  String get runsOnMac => 'Runs on Mac';

  @override
  String get runsOnIphone => 'Runs on iPhone';

  @override
  String get runsOnIpad => 'Runs on iPad';

  @override
  String get appName => 'App Name';

  @override
  String get appVersion => 'App Version';

  @override
  String get minOsVersion => 'Min OS Version';

  @override
  String get created => 'Created';

  @override
  String get updated => 'Updated';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count items',
      one: '1 item',
      zero: 'No items',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Resolved';

  @override
  String get severityInformational => 'Informational';

  @override
  String get managementState => 'Management State';

  @override
  String get managementStateOpen => 'Open';

  @override
  String get managementStateClosed => 'Closed';

  @override
  String get classificationMalware => 'Malware';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Suspicious';

  @override
  String get classificationMal => 'Malicious';

  @override
  String get blueprintRouting => 'Blueprint Routing';

  @override
  String get blueprintRoutingDesc =>
      'Enrollment code and routing for Manual / Android Work Profile enrollment';

  @override
  String get blueprintRoutingNotConfigured =>
      'Blueprint Routing is not configured for this tenant.';

  @override
  String get enrollmentCodeActive => 'Active';

  @override
  String get enrollmentCodeInactive => 'Inactive';

  @override
  String get routingActivity => 'Routing Activity';

  @override
  String get noRoutingActivity => 'No routing activity found.';

  @override
  String get selfServiceCategories => 'Self Service Categories';

  @override
  String get selfServiceDesc => 'Manage Self Service categories for your users';

  @override
  String get addCategory => 'Add Category';

  @override
  String get categoryName => 'Category Name';

  @override
  String get deleteCategory => 'Delete Category';

  @override
  String get deleteCategoryConfirm =>
      'Are you sure you want to delete this category?';

  @override
  String get noCategoriesFound => 'No categories found.';

  @override
  String get categoryCreated => 'Category created';

  @override
  String get categoryDeleted => 'Category deleted';

  @override
  String get profileBody => 'Profile XML';

  @override
  String get customProfile => 'Custom Profile';

  @override
  String get classification => 'Classification';

  @override
  String get mdmEnabled => 'MDM Enabled';

  @override
  String get enrolledViaDep => 'Enrolled via DEP';

  @override
  String get userApprovedMdm => 'User-Approved MDM';

  @override
  String get network => 'Network';

  @override
  String get ipAddress => 'IP Address';

  @override
  String get wifiNetwork => 'WiFi Network';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Activation Lock';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Developer Mode';

  @override
  String get adbEnabled => 'ADB Enabled';

  @override
  String get unknownSources => 'Unknown Sources';

  @override
  String get securityPatch => 'Security Patch';

  @override
  String get provisioningUdid => 'Provisioning UDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM Info';

  @override
  String get lastEnrollment => 'Last Enrollment';

  @override
  String get enterpriseId => 'Enterprise ID';

  @override
  String get manufacturer => 'Manufacturer';

  @override
  String get generalStatus => 'General Status';

  @override
  String get apiLevel => 'API Level';

  @override
  String get userApprovedEnrollment => 'User-Approved Enrollment';

  @override
  String get hostname => 'Hostname';

  @override
  String get macAddress => 'MAC Address';

  @override
  String get publicIp => 'Public IP';

  @override
  String get volumes => 'Volumes';

  @override
  String volumeUsed(String percent) {
    return '$percent% used';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available available of $total';
  }

  @override
  String get encrypted => 'Encrypted';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores Cores';
  }

  @override
  String processors(String count) {
    return '$count Processors';
  }

  @override
  String get batteryLevel => 'Battery Level';

  @override
  String get lastUser => 'Last User';

  @override
  String get bootVolume => 'Boot Volume';

  @override
  String get localUsers => 'Local Users';

  @override
  String get regularUsers => 'Regular Users';

  @override
  String get systemUsers => 'System Users';

  @override
  String get admin => 'Admin';

  @override
  String get assignToBlueprint => 'Assign to Blueprint';

  @override
  String get installOnDevice => 'Install on Device';

  @override
  String get selectBlueprint => 'Select Blueprint';

  @override
  String get selectDevice => 'Select Device';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'VPP Licenses';

  @override
  String get fileName => 'File Name';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Activation Lock';

  @override
  String get prismCategoryApps => 'Applications';

  @override
  String get prismCategoryApplicationFirewall => 'Application Firewall';

  @override
  String get prismCategoryCellular => 'Cellular';

  @override
  String get prismCategoryCertificates => 'Certificates';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Desktop & Screensaver';

  @override
  String get prismCategoryDeviceInformation => 'Device Information';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper & XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Installed Profiles';

  @override
  String get prismCategoryKernelExtensions => 'Kernel Extensions';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents & Daemons';

  @override
  String get prismCategoryLocalUsers => 'Local Users';

  @override
  String get prismCategoryStartupSettings => 'Startup Settings';

  @override
  String get prismCategorySystemExtensions => 'System Extensions';

  @override
  String get prismCategoryTransparencyDatabase => 'Transparency Database';

  @override
  String prismRecords(int count) {
    return '$count records';
  }

  @override
  String get prismNoData => 'No data available for this category.';

  @override
  String get prismExport => 'Export CSV';

  @override
  String get prismExportRequested =>
      'Export requested. Check back shortly for the download link.';

  @override
  String get prismFilterByFamily => 'Device Family';

  @override
  String get prismAllFamilies => 'All Families';

  @override
  String get appearance => 'Appearance';

  @override
  String get themeMode => 'Theme';

  @override
  String get themeModeSystem => 'System';

  @override
  String get themeModeLight => 'Light';

  @override
  String get themeModeDark => 'Dark';

  @override
  String get shortTypeScript => 'Script';

  @override
  String get shortTypeCustom => 'Custom';

  @override
  String get shortTypeProfile => 'Profile';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Managed';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Security';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'OS Updates';

  @override
  String get categoryAutoApps => 'Auto Apps';

  @override
  String get autoApp => 'Auto App';

  @override
  String get fileSize => 'File Size';

  @override
  String get unzipLocation => 'Unzip Location';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'File Updated';

  @override
  String get mdmIdentifier => 'MDM Identifier';

  @override
  String get bundleId => 'Bundle ID';

  @override
  String get appleTV => 'Apple TV';

  @override
  String get appleVision => 'Apple Vision';

  @override
  String get appleWatch => 'Apple Watch';

  @override
  String get iPodLabel => 'iPod';

  @override
  String get typeLabel => 'Type';

  @override
  String get languageEnglish => 'English';

  @override
  String get languageGerman => 'Deutsch';

  @override
  String get languageSpanish => 'Español';

  @override
  String get languageFrench => 'Français';

  @override
  String get languagePortuguese => 'Português';

  @override
  String get languageItalian => 'Italiano';

  @override
  String get languagePolish => 'Polski';

  @override
  String get languageCroatian => 'Hrvatski';

  @override
  String get languageRussian => 'Русский';

  @override
  String get languageUkrainian => 'Українська';

  @override
  String get languageArabic => 'العربية';

  @override
  String get languageHindi => 'हिन्दी';

  @override
  String get languageChinese => '中文';

  @override
  String get languageJapanese => '日本語';

  @override
  String get languageKorean => '한국어';

  @override
  String get languageTurkish => 'Türkçe';

  @override
  String get languageDutch => 'Nederlands';

  @override
  String get languageSwedish => 'Svenska';

  @override
  String get languageCzech => 'Čeština';

  @override
  String get languageRomanian => 'Română';

  @override
  String get languageThai => 'ไทย';

  @override
  String get languageDanish => 'Dansk';

  @override
  String get languageNorwegian => 'Norsk';

  @override
  String get languageIndonesian => 'Bahasa Indonesia';

  @override
  String get languageVietnamese => 'Tiếng Việt';
}
