// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Swedish (`sv`).
class AppLocalizationsSv extends AppLocalizations {
  AppLocalizationsSv([String locale = 'sv']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Enheter';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Användare';

  @override
  String get navSettings => 'Inställningar';

  @override
  String get welcomeTitle => 'Välkommen till FleetPilot';

  @override
  String get welcomeSubtitle => 'Hantera din Apple-enhetsflotta var du än är.';

  @override
  String get addProfile => 'Lägg till profil';

  @override
  String get editProfile => 'Redigera profil';

  @override
  String get displayName => 'Visningsnamn';

  @override
  String get displayNameHint => 't.ex. Acme Corp — Prod';

  @override
  String get region => 'Region';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Subdomän';

  @override
  String get subdomainHint => 'din-tenant';

  @override
  String get apiToken => 'API-token';

  @override
  String get apiTokenHint => 'Klistra in API-token här';

  @override
  String urlPreview(String url) {
    return 'API-URL: $url';
  }

  @override
  String get verifyAndSave => 'Verifiera & Spara';

  @override
  String get verifying => 'Verifierar anslutning...';

  @override
  String get connectionSuccess => 'Anslutningen har verifierats!';

  @override
  String get errorInvalidToken =>
      'Ogiltig API-token. Kontrollera din token i webbkonsolen.';

  @override
  String get errorInsufficientPermissions =>
      'Otillräckliga behörigheter. Se till att token har läsbehörighet för enheter.';

  @override
  String get errorNetworkUnreachable =>
      'API:et är inte nåbart. Kontrollera din internetanslutning och subdomän.';

  @override
  String get errorNotFound => 'Den begärda resursen hittades inte.';

  @override
  String get errorValidation =>
      'Begäran innehöll ogiltiga data. Kontrollera din inmatning.';

  @override
  String get errorRateLimit =>
      'För många förfrågningar. Vänta en stund och försök igen.';

  @override
  String get errorServer => 'Servern stötte på ett fel. Försök igen senare.';

  @override
  String get errorUnexpected => 'Ett oväntat fel inträffade. Försök igen.';

  @override
  String get retry => 'Försök igen';

  @override
  String get cancel => 'Avbryt';

  @override
  String get delete => 'Radera';

  @override
  String get save => 'Spara';

  @override
  String get search => 'Sök';

  @override
  String get searchDevices => 'Sök enheter...';

  @override
  String get filterAll => 'Alla';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Alla Blueprints';

  @override
  String loadingDevices(int count) {
    return '$count enheter laddas...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count enheter',
      one: '1 enhet',
      zero: 'Inga enheter',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Inga enheter hittades';

  @override
  String get noDevicesFoundMessage => 'Justera din sökning eller dina filter.';

  @override
  String lastCheckIn(String time) {
    return 'Senaste incheckning: $time';
  }

  @override
  String get compliancePass => 'Godkänd';

  @override
  String get complianceFail => 'Underkänd';

  @override
  String get compliancePending => 'Väntande';

  @override
  String get deviceDetails => 'Enhetsdetaljer';

  @override
  String get serialNumber => 'Serienummer';

  @override
  String get model => 'Modell';

  @override
  String get osVersion => 'OS-version';

  @override
  String get assetTag => 'Tillgångstagg';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Registrerad';

  @override
  String get assignedUser => 'Tilldelad användare';

  @override
  String get actions => 'Åtgärder';

  @override
  String get actionLock => 'Lås';

  @override
  String get actionRestart => 'Starta om';

  @override
  String get actionShutdown => 'Stäng av';

  @override
  String get actionErase => 'Radera';

  @override
  String get actionBlankPush => 'Skicka Blank Push';

  @override
  String get actionReinstallAgent => 'Installera om agent';

  @override
  String get actionUpdateInventory => 'Uppdatera inventering';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Aktivera Remote Desktop';

  @override
  String get actionRemoteDesktopDisable => 'Inaktivera Remote Desktop';

  @override
  String get actionLostMode => 'Aktivera Borttappat-läge';

  @override
  String get destructiveActionTitle => 'Bekräfta destruktiv åtgärd';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Denna åtgärd kan inte ångras. Ange \"$deviceName\" för att bekräfta.';
  }

  @override
  String get destructiveActionHint => 'Ange enhetsnamn för att bekräfta';

  @override
  String get confirm => 'Bekräfta';

  @override
  String get actionSuccess => 'Åtgärden utfördes.';

  @override
  String get actionFailed => 'Åtgärden misslyckades. Försök igen.';

  @override
  String get biometricReason => 'Autentisera dig för FleetPilot';

  @override
  String get biometricReasonSecrets =>
      'Autentisera dig för att visa känsliga uppgifter';

  @override
  String get biometricReasonDestructive =>
      'Autentisera dig för att utföra denna åtgärd';

  @override
  String get biometricFailed => 'Autentiseringen misslyckades. Försök igen.';

  @override
  String get profiles => 'Profiler';

  @override
  String activeProfile(String name) {
    return 'Aktiv: $name';
  }

  @override
  String get switchProfile => 'Byt profil';

  @override
  String get deleteProfile => 'Radera profil';

  @override
  String get deleteProfileConfirm =>
      'Vill du verkligen radera denna profil? Denna åtgärd kan inte ångras.';

  @override
  String get noProfiles => 'Inga profiler konfigurerade';

  @override
  String get settings => 'Inställningar';

  @override
  String get about => 'Om';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get validationRequired => 'Detta fält är obligatoriskt.';

  @override
  String get validationSubdomain =>
      'Endast bokstäver, siffror och bindestreck tillåtna. Inga inledande eller avslutande bindestreck.';

  @override
  String get validationToken =>
      'Ogiltigt tokenformat. 20–500 tecken, endast alfanumeriska och vanliga avgränsare.';

  @override
  String pinLockedOut(int seconds) {
    return 'För många misslyckade försök. Försök igen om $seconds sekunder.';
  }

  @override
  String get complianceStatus => 'Efterlevnadsstatus';

  @override
  String get platform => 'Plattform';

  @override
  String get deviceName => 'Enhetsnamn';

  @override
  String get searchUsers => 'Sök användare...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count användare',
      one: '1 användare',
      zero: 'Inga användare',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Inga användare hittades';

  @override
  String get noUsersFoundMessage => 'Justera din sökning eller dina filter.';

  @override
  String get showArchived => 'Visa arkiverade';

  @override
  String get archived => 'Arkiverad';

  @override
  String get email => 'E-post';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprints',
      one: '1 Blueprint',
      zero: 'Inga Blueprints',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Inga Blueprints hittades';

  @override
  String get noBlueprintsFoundMessage =>
      'Inga Blueprints har konfigurerats ännu.';

  @override
  String get enrollmentActive => 'Registrering aktiv';

  @override
  String get enrollmentInactive => 'Registrering inaktiv';

  @override
  String get tabOverview => 'Översikt';

  @override
  String get tabApps => 'Appar';

  @override
  String get tabStatus => 'Status';

  @override
  String get tabActivity => 'Aktivitet';

  @override
  String get tabCommands => 'Kommandon';

  @override
  String get hardware => 'Hårdvara';

  @override
  String get security => 'Säkerhet';

  @override
  String get totalStorage => 'Totalt lagringsutrymme';

  @override
  String get availableStorage => 'Tillgängligt lagringsutrymme';

  @override
  String get totalRam => 'Totalt RAM';

  @override
  String get wifiMac => 'WiFi MAC-adress';

  @override
  String get encryption => 'Kryptering';

  @override
  String get passcode => 'Lösenkod';

  @override
  String get noAppsFound => 'Inga appar hittades';

  @override
  String get noActivityFound => 'Ingen aktivitet hittades';

  @override
  String get noCommandsFound => 'Inga kommandon hittades';

  @override
  String get libraryItems => 'Biblioteksobjekt';

  @override
  String get parameters => 'Parametrar';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'OS-build';

  @override
  String get cellular => 'Mobilnät';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count appar',
      one: '1 app',
      zero: 'Inga appar',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Ö';

  @override
  String get sortZA => 'Ö → A';

  @override
  String get userDetails => 'Användardetaljer';

  @override
  String get jobTitle => 'Jobbtitel';

  @override
  String get department => 'Avdelning';

  @override
  String get createdAt => 'Skapad';

  @override
  String get updatedAt => 'Uppdaterad';

  @override
  String get assignedDevices => 'Tilldelade enheter';

  @override
  String get noAssignedDevices =>
      'Inga enheter har tilldelats denna användare.';

  @override
  String get userInfo => 'Användarinfo';

  @override
  String get navMore => 'Mer';

  @override
  String get tabSecrets => 'Hemligheter';

  @override
  String get filevaultKey => 'FileVault-återställningsnyckel';

  @override
  String get unlockPin => 'Upplåsnings-PIN';

  @override
  String get recoveryPassword => 'Recovery Lock-lösenord';

  @override
  String get bypassCode => 'Aktiveringslås-förbikopplingskod';

  @override
  String get noSecretsFound => 'Inga hemligheter tillgängliga för denna enhet.';

  @override
  String get secretCopied => 'Hemlighet kopierad till urklipp';

  @override
  String get threats => 'Hot';

  @override
  String get noThreatsFound => 'Inga hot upptäckta.';

  @override
  String get vulnerabilities => 'Sårbarheter';

  @override
  String get noVulnerabilitiesFound => 'Inga sårbarheter upptäckta.';

  @override
  String get aboutApp => 'Om FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot är en MDM-hanteringsapp med öppen källkod för Apple-enhetsflottor.';

  @override
  String get tapToCopy => 'Tryck för att kopiera';

  @override
  String get devices => 'Enheter';

  @override
  String get severity => 'Allvarlighetsgrad';

  @override
  String get tabLocation => 'Plats';

  @override
  String get locationNotAvailable =>
      'Platsdata är inte tillgänglig för denna enhet.';

  @override
  String get enableLostModeHint =>
      'Aktivera Borttappat-läge för att lokalisera denna enhet.';

  @override
  String get lostModeEnabled => 'Borttappat-läge aktiverat';

  @override
  String get noLibraryItemsFound => 'Inga biblioteksobjekt hittades.';

  @override
  String get licenses => 'Licenser';

  @override
  String get lostModeMessage => 'Meddelande för Borttappat-läge';

  @override
  String get lostModePhone => 'Telefonnummer';

  @override
  String get lostModeFootnote =>
      'Valfritt meddelande och telefonnummer som visas på enheten';

  @override
  String get supervised => 'Övervakad';

  @override
  String get unsupervised => 'Inte övervakad';

  @override
  String get filterSupervised => 'Övervakad';

  @override
  String get filterUnsupervised => 'Inte övervakad';

  @override
  String get language => 'Språk';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get actionDisableLostMode => 'Inaktivera Borttappat-läge';

  @override
  String get actionClearPasscode => 'Rensa lösenkod';

  @override
  String get filterLostMode => 'Borttappat-läge';

  @override
  String get lostMode => 'Borttappat-läge';

  @override
  String get sectionManagement => 'Hantering';

  @override
  String get sectionStatus => 'Status';

  @override
  String get statusMissing => 'Saknad';

  @override
  String get statusRemoved => 'Borttagen';

  @override
  String get agent => 'Agent';

  @override
  String get identifier => 'Identifierare';

  @override
  String get processor => 'Processor';

  @override
  String get hardwareUuid => 'Hårdvaru-UUID';

  @override
  String get devicePosture => 'Enhetsstatus';

  @override
  String get unknownDevice => 'Okänd enhet';

  @override
  String get securityAppLock => 'Applås';

  @override
  String get securityAppLockDescription =>
      'Ställ in en 6-siffrig PIN-kod för att skydda appen. Biometrisk autentisering kan aktiveras efter att en PIN-kod har ställts in.';

  @override
  String get securityAppLockActive => 'Applås aktiverat';

  @override
  String get securityAppLockInactive => 'Inget applås konfigurerat';

  @override
  String get securitySetPin => 'Ställ in PIN';

  @override
  String get securityChangePin => 'Ändra PIN';

  @override
  String get securityRemovePin => 'Ta bort PIN';

  @override
  String get securityCurrentPin => 'Nuvarande PIN';

  @override
  String get securityNewPin => 'Ny PIN';

  @override
  String get securityConfirmPin => 'Ange PIN igen för att bekräfta.';

  @override
  String get securityPinLength => 'PIN måste vara 6 siffror.';

  @override
  String get securityPinMismatch => 'PIN-koderna matchar inte.';

  @override
  String get securityPinWrong => 'Fel PIN.';

  @override
  String get securityPinSet => 'PIN har ställts in.';

  @override
  String get securityPinChanged => 'PIN har ändrats.';

  @override
  String get securityPinRemoved => 'PIN och applås har tagits bort.';

  @override
  String get securityBiometric => 'Biometri';

  @override
  String get securityBiometricDescription =>
      'Använd fingeravtryck eller ansiktsigenkänning för att låsa upp appen istället för PIN-kod.';

  @override
  String get securityBiometricEnable => 'Biometrisk upplåsning';

  @override
  String get securityBiometricActive => 'Aktiv';

  @override
  String get securityBiometricInactive => 'Inaktiv';

  @override
  String get securityBiometricUnavailable =>
      'Biometrisk autentisering är inte tillgänglig på denna enhet.';

  @override
  String get securityNext => 'Nästa';

  @override
  String get actionRenewMdm => 'Förnya MDM-profil';

  @override
  String get actionSetName => 'Ange enhetsnamn';

  @override
  String get actionSetNameHint => 'Ange nytt enhetsnamn';

  @override
  String get actionDeleteUser => 'Radera användare';

  @override
  String get actionDeleteUserName => 'Användarnamn';

  @override
  String get actionDeleteAllUsers => 'Radera alla användare';

  @override
  String get actionForceDeletion => 'Tvinga radering';

  @override
  String get actionUnlockAccount => 'Lås upp konto';

  @override
  String get actionPlayLostModeSound => 'Spela upp ljud för Borttappat-läge';

  @override
  String get actionUpdateLocation => 'Uppdatera plats';

  @override
  String get erasePin => '6-siffrig PIN';

  @override
  String get erasePinHint => 'Krävs för mobila enheter';

  @override
  String get erasePreserveDataPlan => 'Behåll dataplan';

  @override
  String get eraseDisallowProximitySetup => 'Förbjud Proximity Setup';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Låsmeddelande (valfritt)';

  @override
  String get lockPhone => 'Telefonnummer';

  @override
  String get restartRebuildKernelCache => 'Bygg om kernel-cache';

  @override
  String get restartNotifyUser => 'Meddela användaren';

  @override
  String get actionRemoteDesktop => 'Remote Desktop';

  @override
  String get tabNotes => 'Anteckningar';

  @override
  String get noNotesFound => 'Inga anteckningar ännu';

  @override
  String get addNote => 'Lägg till anteckning';

  @override
  String get editNote => 'Redigera anteckning';

  @override
  String get deleteNote => 'Radera anteckning';

  @override
  String get deleteNoteConfirm => 'Vill du verkligen radera denna anteckning?';

  @override
  String get noteContent => 'Anteckningsinnehåll';

  @override
  String get noteSaved => 'Anteckning sparad.';

  @override
  String get noteDeleted => 'Anteckning raderad.';

  @override
  String get editDevice => 'Redigera enhet';

  @override
  String get deviceUpdated => 'Enhet uppdaterad.';

  @override
  String get deleteDevice => 'Radera enhet';

  @override
  String get deleteDeviceConfirm =>
      'Enheten kommer att permanent tas bort från MDM. Denna åtgärd kan inte ångras.';

  @override
  String get deviceDeleted => 'Enhet raderad.';

  @override
  String get cancelLostMode => 'Avbryt Borttappat-läge';

  @override
  String get cancelLostModeConfirm =>
      'Avbryta den väntande begäran om Borttappat-läge?';

  @override
  String get lostModeCancelled => 'Borttappat-läge avbrutet.';

  @override
  String get tags => 'Taggar';

  @override
  String get noTags => 'Inga taggar';

  @override
  String get addTag => 'Lägg till tagg';

  @override
  String get tagName => 'Taggnamn';

  @override
  String get manageTags => 'Hantera taggar';

  @override
  String get auditLog => 'Revisionslogg';

  @override
  String get noAuditEvents => 'Inga revisionshändelser hittades';

  @override
  String get actionDailyCheckIn => 'Daglig incheckning';

  @override
  String get licensing => 'Licensiering';

  @override
  String get deviceLimit => 'Enhetsgräns';

  @override
  String get devicesUsed => 'Enheter använda';

  @override
  String get licenseType => 'Licenstyp';

  @override
  String get appleDevices => 'Apple-enheter';

  @override
  String get deleteUser => 'Radera användare';

  @override
  String get deleteUserConfirm =>
      'Vill du verkligen radera denna användare? Denna åtgärd kan inte ångras.';

  @override
  String get userDeleted => 'Användare raderad.';

  @override
  String get createBlueprint => 'Skapa Blueprint';

  @override
  String get editBlueprint => 'Redigera Blueprint';

  @override
  String get deleteBlueprint => 'Radera Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Att radera detta Blueprint kommer att avregistrera alla tilldelade enheter. Denna åtgärd kan inte ångras.';

  @override
  String get blueprintCreated => 'Blueprint skapat.';

  @override
  String get blueprintUpdated => 'Blueprint uppdaterat.';

  @override
  String get blueprintDeleted => 'Blueprint raderat.';

  @override
  String get blueprintName => 'Blueprint-namn';

  @override
  String get blueprintDescription => 'Beskrivning';

  @override
  String get enrollmentCode => 'Registreringskod';

  @override
  String get assignLibraryItem => 'Tilldela biblioteksobjekt';

  @override
  String get removeLibraryItem => 'Ta bort biblioteksobjekt';

  @override
  String get libraryItemAssigned => 'Biblioteksobjekt tilldelat.';

  @override
  String get libraryItemRemoved => 'Biblioteksobjekt borttaget.';

  @override
  String get lostModeDetails => 'Detaljer för Borttappat-läge';

  @override
  String get lostModeEnabledBy => 'Aktiverat av';

  @override
  String get lostModeEnabledAt => 'Aktiverat den';

  @override
  String get searchBlueprints => 'Sök Blueprints...';

  @override
  String get searchVulnerabilities => 'Sök sårbarheter...';

  @override
  String get searchThreats => 'Sök hot...';

  @override
  String get searchAuditLog => 'Sök revisionslogg...';

  @override
  String get filterCritical => 'Kritisk';

  @override
  String get filterHigh => 'Hög';

  @override
  String get filterMedium => 'Medel';

  @override
  String get filterLow => 'Låg';

  @override
  String get filterClearAll => 'Rensa alla';

  @override
  String get filterTitle => 'Filter';

  @override
  String get filterApply => 'Tillämpa';

  @override
  String get filterPlatform => 'Plattform';

  @override
  String get filterSupervision => 'Övervakning';

  @override
  String get filterStatus => 'Status';

  @override
  String get adeIntegrations => 'ADE-integrationer';

  @override
  String get noAdeIntegrations => 'Inga ADE-integrationer hittades.';

  @override
  String get adeDevices => 'ADE-enheter';

  @override
  String get noAdeDevices => 'Inga ADE-enheter hittades.';

  @override
  String get tokenExpiry => 'Token-utgång';

  @override
  String get tokenValid => 'Token giltig';

  @override
  String get tokenExpired => 'Token utgången';

  @override
  String get orgName => 'Organisation';

  @override
  String get defaultBlueprint => 'Standard-Blueprint';

  @override
  String get renewToken => 'Förnya token';

  @override
  String get publicKey => 'Offentlig nyckel';

  @override
  String get vulnerabilityDetections => 'Sårbarhetsdetektioner';

  @override
  String get noDetectionsFound => 'Inga detektioner hittades.';

  @override
  String get behavioralDetections => 'Beteendedetektioner';

  @override
  String get noBehavioralDetections => 'Inga beteendedetektioner hittades.';

  @override
  String get searchBehavioralDetections => 'Sök detektioner...';

  @override
  String get affectedDevices => 'Berörda enheter';

  @override
  String get noAffectedDevices =>
      'Inga berörda enheter hittades. Tidigare berörda enheter kan ha tagits bort.';

  @override
  String get affectedSoftware => 'Berörd programvara';

  @override
  String get blueprintTemplates => 'Blueprint-mallar';

  @override
  String get noTemplatesFound => 'Inga mallar hittades.';

  @override
  String get otaEnrollmentProfile => 'OTA-registreringsprofil';

  @override
  String get libraryItemActivity => 'Aktivitet';

  @override
  String get libraryItemDeploymentStatus => 'Distributionsstatus';

  @override
  String get noActivityFound2 => 'Ingen aktivitet hittades.';

  @override
  String get noStatusFound => 'Ingen distributionsstatus hittades.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detektioner',
      one: '1 detektion',
      zero: 'Inga detektioner',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count integrationer',
      one: '1 integration',
      zero: 'Inga integrationer',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Sårbarhetsdetaljer';

  @override
  String get description => 'Beskrivning';

  @override
  String get firstDetected => 'Första detektion';

  @override
  String get lastDetected => 'Senaste detektion';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count programvaror',
      one: '1 programvara',
      zero: 'Ingen programvara',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Redigera integration';

  @override
  String get deleteIntegration => 'Radera integration';

  @override
  String get deleteIntegrationConfirm =>
      'Är du säker på att du vill radera denna ADE-integration? Detta kan inte ångras.';

  @override
  String get integrationDeleted => 'Integration raderad.';

  @override
  String get integrationUpdated => 'Integration uppdaterad.';

  @override
  String get defaultBlueprintId => 'Standard-Blueprint-ID';

  @override
  String get phone => 'Telefon';

  @override
  String get downloadOtaProfile => 'Ladda ner registreringsprofil';

  @override
  String get otaProfileCopied => 'Registreringsprofil kopierad till urklipp.';

  @override
  String get noOtaProfile => 'Ingen registreringsprofil tillgänglig.';

  @override
  String get createTag => 'Skapa tagg';

  @override
  String get editTag => 'Redigera tagg';

  @override
  String get deleteTag => 'Radera tagg';

  @override
  String get deleteTagConfirm =>
      'Är du säker på att du vill radera denna tagg?';

  @override
  String get tagColor => 'Färg';

  @override
  String get tagCreated => 'Tagg skapad.';

  @override
  String get tagUpdated => 'Tagg uppdaterad.';

  @override
  String get tagDeleted => 'Tagg raderad.';

  @override
  String get noTagsFound => 'Inga taggar hittades.';

  @override
  String get libraryItemDetail => 'Biblioteksobjekt';

  @override
  String get viewActivity => 'Visa aktivitet';

  @override
  String get viewStatus => 'Visa status';

  @override
  String get installations => 'Installationer';

  @override
  String get createAdeIntegration => 'Skapa ADE-integration';

  @override
  String get adeCreateDescription =>
      'Ladda upp en server-tokenfil (.p7m) från Apple Business Manager för att skapa en ny ADE-integration.';

  @override
  String get selectTokenFile => 'Välj tokenfil';

  @override
  String tokenFileSelected(String name) {
    return 'Tokenfil: $name';
  }

  @override
  String get noTokenFileSelected => 'Ingen tokenfil vald';

  @override
  String get integrationCreated => 'Integration skapad.';

  @override
  String get create => 'Skapa';

  @override
  String get step1GetPublicKey => 'Steg 1: Ladda ner offentlig nyckel';

  @override
  String get step1Description =>
      'Kopiera den offentliga nyckeln och ladda upp den i Apple Business Manager.';

  @override
  String get step2UploadToken => 'Steg 2: Ladda upp server-token';

  @override
  String get step2Description =>
      'Välj .p7m-tokenfilen som du laddade ner från Apple.';

  @override
  String get step3Configure => 'Steg 3: Konfigurera';

  @override
  String get publicKeyCopied => 'Offentlig nyckel kopierad till urklipp.';

  @override
  String get renewTokenDescription =>
      'Ladda upp en ny .p7m-tokenfil för att förnya token för denna integration.';

  @override
  String get tokenRenewed => 'Token förnyad.';

  @override
  String get aboutLinks => 'Länkar';

  @override
  String get aboutWebsite => 'Webbplats';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Källkod';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Teknik';

  @override
  String get aboutFramework => 'Ramverk';

  @override
  String get aboutStateManagement => 'State Management';

  @override
  String get aboutArchitecture => 'Arkitektur';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Dataklasser';

  @override
  String get aboutNavigationLabel => 'Navigering';

  @override
  String get aboutOpenSourceLicenses => 'Licenser för öppen källkod';

  @override
  String get aboutShowHide => 'Växla synlighet';

  @override
  String get editProfileTitle => 'Redigera anslutning';

  @override
  String get editProfileSubtitle =>
      'Uppdatera dina tenant-anslutningsinställningar.';

  @override
  String get apiTokenHintEdit => 'Lämna tomt för att behålla befintlig token';

  @override
  String get profileUpdated => 'Profil uppdaterad.';

  @override
  String profileSwitched(String name) {
    return 'Bytt till $name.';
  }

  @override
  String get securityAutoLock => 'Automatiskt lås';

  @override
  String get securityAutoLockDescription =>
      'Kräv autentisering automatiskt efter att appen har varit i bakgrunden.';

  @override
  String get timeoutImmediately => 'Omedelbart';

  @override
  String get timeoutSeconds30 => 'Efter 30 sekunder';

  @override
  String get timeoutSeconds60 => 'Efter 1 minut';

  @override
  String get timeoutSeconds120 => 'Efter 2 minuter';

  @override
  String get timeoutMinutes5 => 'Efter 5 minuter';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Inget Blueprint';

  @override
  String get presetSaveFilter => 'Spara filterförinställning';

  @override
  String get presetLoad => 'Ladda förinställning';

  @override
  String get presetName => 'Förinställningsnamn';

  @override
  String get presetNameHint => 't.ex. Ej övervakade Macar';

  @override
  String get presetSaved => 'Filterförinställning sparad.';

  @override
  String get presetDeleted => 'Filterförinställning raderad.';

  @override
  String presetApplied(String name) {
    return 'Förinställning \"$name\" tillämpad.';
  }

  @override
  String get presetNoPresets => 'Inga sparade förinställningar';

  @override
  String get presetNoPresetsMessage =>
      'Spara dina nuvarande filter som en förinställning för snabb åtkomst.';

  @override
  String get presetDeleteConfirm => 'Radera denna förinställning?';

  @override
  String get presetNameRequired => 'Ange ett namn för förinställningen.';

  @override
  String selectedCount(int count) {
    return '$count valda';
  }

  @override
  String get selectAll => 'Markera alla';

  @override
  String get deselectAll => 'Avmarkera alla';

  @override
  String get bulkActions => 'Åtgärder';

  @override
  String bulkActionsTitle(int count) {
    return 'Åtgärder för $count enheter';
  }

  @override
  String get bulkActionAssignTag => 'Tilldela tagg';

  @override
  String get bulkActionAssignTagDescription =>
      'Lägg till en tagg på alla valda enheter';

  @override
  String get bulkActionAssignBlueprint => 'Tilldela Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Flytta valda enheter till ett Blueprint';

  @override
  String get bulkActionLock => 'Lås enheter';

  @override
  String get bulkActionLockDescription => 'Fjärrlås alla valda enheter';

  @override
  String get bulkActionRestart => 'Starta om enheter';

  @override
  String get bulkActionRestartDescription => 'Starta om alla valda enheter';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Vill du verkligen starta om $count enheter?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Åtgärden slutfördes på $count enheter.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Slutförd på $success enheter, $failed misslyckades.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed av $total slutförda';
  }

  @override
  String get biometricReasonBulkAction =>
      'Autentisera dig för att utföra massåtgärden';

  @override
  String get lockPin => 'Lås-PIN (valfri)';

  @override
  String get noTagsAvailable =>
      'Inga taggar tillgängliga. Skapa taggar i MDM-webbkonsolen.';

  @override
  String get noBlueprintsAvailable => 'Inga Blueprints tillgängliga.';

  @override
  String get selectADevice => 'Välj enhet';

  @override
  String get selectABlueprint => 'Välj Blueprint';

  @override
  String get clearSearch => 'Rensa sökning';

  @override
  String get refresh => 'Uppdatera';

  @override
  String get moreActions => 'Fler åtgärder';

  @override
  String get close => 'Stäng';

  @override
  String get onboardingSkip => 'Hoppa över';

  @override
  String get onboardingNext => 'Nästa';

  @override
  String get onboardingGetStarted => 'Kom igång';

  @override
  String get onboardingWelcomeTitle => 'Välkommen till FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Ditt mobila kommandocenter för hantering av Apple-enhetsflottor. Övervaka, hantera och säkra hela din flotta var du än är.';

  @override
  String get onboardingDevicesTitle => 'Enhetshantering';

  @override
  String get onboardingDevicesSubtitle =>
      'Full insyn och kontroll över varje enhet i din flotta.';

  @override
  String get onboardingDevicesFeature1 =>
      'Visa alla registrerade iPhones, iPads, Macar och Apple TV:ar';

  @override
  String get onboardingDevicesFeature2 =>
      'Skicka fjärrkommandon: Lås, Starta om, Radera och mer';

  @override
  String get onboardingDevicesFeature3 =>
      'Följ Blueprints, appar och efterlevnadsstatus';

  @override
  String get onboardingSecurityTitle => 'Byggd för säkerhet';

  @override
  String get onboardingSecuritySubtitle =>
      'Din flottdata skyddas med flera säkerhetslager.';

  @override
  String get onboardingSecurityFeature1 =>
      'Biometrisk autentisering med Face ID eller fingeravtryck';

  @override
  String get onboardingSecurityFeature2 =>
      '6-siffrig PIN-kodslås för appåtkomst';

  @override
  String get onboardingSecurityFeature3 =>
      'Automatiskt sessionslås vid timeout';

  @override
  String get onboardingReadyTitle => 'Redo att börja';

  @override
  String get onboardingReadySubtitle =>
      'Anslut din MDM-tenant för att börja hantera din Apple-enhetsflotta. Nästa steg är att konfigurera din API-anslutning och säkerhets-PIN.';

  @override
  String get searchTags => 'Sök taggar';

  @override
  String tagDeviceCount(int count) {
    return '$count enheter';
  }

  @override
  String get sortTitle => 'Sortering';

  @override
  String get sortDirection => 'Sorteringsriktning';

  @override
  String get ascending => 'Stigande';

  @override
  String get descending => 'Fallande';

  @override
  String get filterSeverity => 'Allvarlighetsgrad';

  @override
  String get filterSort => 'Filtrera & Sortera';

  @override
  String get statusQuarantined => 'Karantän';

  @override
  String get statusNotQuarantined => 'Ej isolerad';

  @override
  String get statusDetected => 'Upptäckt';

  @override
  String get statusReleased => 'Frigiven';

  @override
  String get severityCritical => 'Kritisk';

  @override
  String get severityHigh => 'Hög';

  @override
  String get severityMedium => 'Medel';

  @override
  String get severityLow => 'Låg';

  @override
  String threatCount(int count) {
    return '$count hot';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count detektioner';
  }

  @override
  String get downloadPublicKey => 'Ladda ner';

  @override
  String get publicKeySaved => 'Offentlig nyckel sparad';

  @override
  String get sortBy => 'Sortera efter';

  @override
  String get sortByCvss => 'CVSS-poäng';

  @override
  String get sortByDeviceCount => 'Berörda enheter';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count sårbarheter';
  }

  @override
  String get assignTags => 'Taggar';

  @override
  String get noTagsAvailableMessage =>
      'Inga taggar tillgängliga. Skapa taggar först.';

  @override
  String get failedToLoadTags => 'Kunde inte ladda taggar';

  @override
  String get details => 'Detaljer';

  @override
  String get searchLibraryItems => 'Sök biblioteksobjekt...';

  @override
  String get categoryCustomScript => 'Anpassat skript';

  @override
  String get categoryCustomApp => 'Anpassad app';

  @override
  String get categoryCustomProfile => 'Anpassad profil';

  @override
  String get categoryInHouseApp => 'In-House-app';

  @override
  String get categoryBuiltIn => 'Inbyggd';

  @override
  String get categoryVppApps => 'VPP / App Store-appar';

  @override
  String get categoryManagedProfiles => 'Hanterade profiler';

  @override
  String get categoryKandjiSetup => 'MDM-konfiguration';

  @override
  String get categoryMacosRelease => 'macOS-uppdateringar';

  @override
  String get categoryThreatPolicy => 'Säkerhetspolicyer';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprints',
      one: '1 Blueprint',
    );
    return 'I $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'En gång';

  @override
  String get executionFrequencyEvery15Min => 'Var 15:e minut';

  @override
  String get executionFrequencyEveryDay => 'Dagligen';

  @override
  String get executionFrequencyNoEnforcement => 'Ingen tillämpning';

  @override
  String get scriptBody => 'Skript';

  @override
  String get remediationScript => 'Korrigeringsskript';

  @override
  String get allProperties => 'Alla egenskaper';

  @override
  String get builtInLibraryItem => 'Inbyggt biblioteksobjekt';

  @override
  String get builtInDetailsHint => 'Detaljer tillgängliga under statusfliken';

  @override
  String get active => 'Aktiv';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nej';

  @override
  String get execution => 'Körning';

  @override
  String get restart => 'Omstart';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Installationstyp';

  @override
  String get enforcement => 'Tillämpning';

  @override
  String get runsOnMac => 'Körs på Mac';

  @override
  String get runsOnIphone => 'Körs på iPhone';

  @override
  String get runsOnIpad => 'Körs på iPad';

  @override
  String get appName => 'Appnamn';

  @override
  String get appVersion => 'Appversion';

  @override
  String get minOsVersion => 'Lägsta OS-version';

  @override
  String get created => 'Skapad';

  @override
  String get updated => 'Uppdaterad';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count objekt',
      one: '1 objekt',
      zero: 'Inga objekt',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Löst';

  @override
  String get severityInformational => 'Informativ';

  @override
  String get managementState => 'Hanteringsstatus';

  @override
  String get managementStateOpen => 'Öppen';

  @override
  String get managementStateClosed => 'Stängd';

  @override
  String get classificationMalware => 'Skadlig kod';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Misstänkt';

  @override
  String get classificationMal => 'Skadlig';

  @override
  String get blueprintRouting => 'Blueprint-routing';

  @override
  String get blueprintRoutingDesc =>
      'Registreringskod och routing för manuell / Android Work Profile-registrering';

  @override
  String get blueprintRoutingNotConfigured =>
      'Blueprint-routing är inte konfigurerad för denna tenant.';

  @override
  String get enrollmentCodeActive => 'Aktiv';

  @override
  String get enrollmentCodeInactive => 'Inaktiv';

  @override
  String get routingActivity => 'Routingaktivitet';

  @override
  String get noRoutingActivity => 'Ingen routingaktivitet hittades.';

  @override
  String get selfServiceCategories => 'Self-Service-kategorier';

  @override
  String get selfServiceDesc =>
      'Hantera Self-Service-kategorier för dina användare';

  @override
  String get addCategory => 'Lägg till kategori';

  @override
  String get categoryName => 'Kategorinamn';

  @override
  String get deleteCategory => 'Radera kategori';

  @override
  String get deleteCategoryConfirm =>
      'Vill du verkligen radera denna kategori?';

  @override
  String get noCategoriesFound => 'Inga kategorier hittades.';

  @override
  String get categoryCreated => 'Kategori skapad';

  @override
  String get categoryDeleted => 'Kategori raderad';

  @override
  String get profileBody => 'Profil-XML';

  @override
  String get customProfile => 'Anpassad profil';

  @override
  String get classification => 'Klassificering';

  @override
  String get mdmEnabled => 'MDM aktiverat';

  @override
  String get enrolledViaDep => 'Registrerad via DEP';

  @override
  String get userApprovedMdm => 'Användargodkänt MDM';

  @override
  String get network => 'Nätverk';

  @override
  String get ipAddress => 'IP-adress';

  @override
  String get wifiNetwork => 'WiFi-nätverk';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Aktiveringslås';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Utvecklarläge';

  @override
  String get adbEnabled => 'ADB aktiverat';

  @override
  String get unknownSources => 'Okända källor';

  @override
  String get securityPatch => 'Säkerhetsuppdatering';

  @override
  String get provisioningUdid => 'Provisioning UDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM-info';

  @override
  String get lastEnrollment => 'Senaste registrering';

  @override
  String get enterpriseId => 'Enterprise-ID';

  @override
  String get manufacturer => 'Tillverkare';

  @override
  String get generalStatus => 'Allmän status';

  @override
  String get apiLevel => 'API-nivå';

  @override
  String get userApprovedEnrollment => 'Användargodkänd registrering';

  @override
  String get hostname => 'Värdnamn';

  @override
  String get macAddress => 'MAC-adress';

  @override
  String get publicIp => 'Offentlig IP';

  @override
  String get volumes => 'Volymer';

  @override
  String volumeUsed(String percent) {
    return '$percent% använt';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available ledigt av $total';
  }

  @override
  String get encrypted => 'Krypterad';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores kärnor';
  }

  @override
  String processors(String count) {
    return '$count processorer';
  }

  @override
  String get batteryLevel => 'Batterinivå';

  @override
  String get lastUser => 'Senaste användare';

  @override
  String get bootVolume => 'Startvolym';

  @override
  String get localUsers => 'Lokala användare';

  @override
  String get regularUsers => 'Standardanvändare';

  @override
  String get systemUsers => 'Systemanvändare';

  @override
  String get admin => 'Admin';

  @override
  String get assignToBlueprint => 'Tilldela Blueprint';

  @override
  String get installOnDevice => 'Installera på enhet';

  @override
  String get selectBlueprint => 'Välj Blueprint';

  @override
  String get selectDevice => 'Välj enhet';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'VPP-licenser';

  @override
  String get fileName => 'Filnamn';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Aktiveringslås';

  @override
  String get prismCategoryApps => 'Applikationer';

  @override
  String get prismCategoryApplicationFirewall => 'Applikationsbrandvägg';

  @override
  String get prismCategoryCellular => 'Mobilnät';

  @override
  String get prismCategoryCertificates => 'Certifikat';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Skrivbord & Skärmsläckare';

  @override
  String get prismCategoryDeviceInformation => 'Enhetsinformation';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper & XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Installerade profiler';

  @override
  String get prismCategoryKernelExtensions => 'Kernel Extensions';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents & Daemons';

  @override
  String get prismCategoryLocalUsers => 'Lokala användare';

  @override
  String get prismCategoryStartupSettings => 'Startinställningar';

  @override
  String get prismCategorySystemExtensions => 'Systemtillägg';

  @override
  String get prismCategoryTransparencyDatabase => 'Transparensdatabas';

  @override
  String prismRecords(int count) {
    return '$count poster';
  }

  @override
  String get prismNoData => 'Ingen data tillgänglig för denna kategori.';

  @override
  String get prismExport => 'Exportera CSV';

  @override
  String get prismExportRequested =>
      'Export begärd. Nedladdningslänken blir snart tillgänglig.';

  @override
  String get prismFilterByFamily => 'Enhetsfamilj';

  @override
  String get prismAllFamilies => 'Alla familjer';

  @override
  String get appearance => 'Utseende';

  @override
  String get themeMode => 'Tema';

  @override
  String get themeModeSystem => 'System';

  @override
  String get themeModeLight => 'Ljust';

  @override
  String get themeModeDark => 'Mörkt';

  @override
  String get shortTypeScript => 'Skript';

  @override
  String get shortTypeCustom => 'Anpassad';

  @override
  String get shortTypeProfile => 'Profil';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Hanterad';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Säkerhet';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'OS-uppdateringar';

  @override
  String get categoryAutoApps => 'Autoappar';

  @override
  String get autoApp => 'Autoapp';

  @override
  String get fileSize => 'Filstorlek';

  @override
  String get unzipLocation => 'Uppackningsplats';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Fil uppdaterad';

  @override
  String get mdmIdentifier => 'MDM-identifierare';

  @override
  String get bundleId => 'Bundle-ID';

  @override
  String get appleTV => 'Apple TV';

  @override
  String get appleVision => 'Apple Vision';

  @override
  String get appleWatch => 'Apple Watch';

  @override
  String get iPodLabel => 'iPod';

  @override
  String get typeLabel => 'Typ';

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
