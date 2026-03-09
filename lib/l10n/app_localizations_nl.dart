// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Dutch Flemish (`nl`).
class AppLocalizationsNl extends AppLocalizations {
  AppLocalizationsNl([String locale = 'nl']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Apparaten';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Gebruikers';

  @override
  String get navSettings => 'Instellingen';

  @override
  String get welcomeTitle => 'Welkom bij FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Beheer uw Apple-apparatenvloot vanaf elke locatie.';

  @override
  String get addProfile => 'Profiel toevoegen';

  @override
  String get editProfile => 'Profiel bewerken';

  @override
  String get displayName => 'Weergavenaam';

  @override
  String get displayNameHint => 'bijv. Acme Corp — Prod';

  @override
  String get region => 'Regio';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Subdomein';

  @override
  String get subdomainHint => 'uw-tenant';

  @override
  String get apiToken => 'API-token';

  @override
  String get apiTokenHint => 'API-token hier plakken';

  @override
  String urlPreview(String url) {
    return 'API-URL: $url';
  }

  @override
  String get verifyAndSave => 'Controleren & opslaan';

  @override
  String get verifying => 'Verbinding wordt gecontroleerd...';

  @override
  String get connectionSuccess => 'Verbinding succesvol geverifieerd!';

  @override
  String get errorInvalidToken =>
      'Ongeldig API-token. Controleer uw token in de webconsole.';

  @override
  String get errorInsufficientPermissions =>
      'Onvoldoende rechten. Zorg ervoor dat het token leestoegang tot apparaten heeft.';

  @override
  String get errorNetworkUnreachable =>
      'API niet bereikbaar. Controleer uw internetverbinding en subdomein.';

  @override
  String get errorNotFound => 'De gevraagde bron is niet gevonden.';

  @override
  String get errorValidation =>
      'Het verzoek bevatte ongeldige gegevens. Controleer uw invoer.';

  @override
  String get errorRateLimit =>
      'Te veel verzoeken. Wacht even en probeer het opnieuw.';

  @override
  String get errorServer =>
      'De server heeft een fout ondervonden. Probeer het later opnieuw.';

  @override
  String get errorUnexpected =>
      'Er is een onverwachte fout opgetreden. Probeer het opnieuw.';

  @override
  String get retry => 'Opnieuw proberen';

  @override
  String get cancel => 'Annuleren';

  @override
  String get delete => 'Verwijderen';

  @override
  String get save => 'Opslaan';

  @override
  String get search => 'Zoeken';

  @override
  String get searchDevices => 'Apparaten zoeken...';

  @override
  String get filterAll => 'Alle';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Alle blueprints';

  @override
  String loadingDevices(int count) {
    return '$count apparaten worden geladen...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apparaten',
      one: '1 apparaat',
      zero: 'Geen apparaten',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Geen apparaten gevonden';

  @override
  String get noDevicesFoundMessage => 'Pas uw zoekopdracht of filters aan.';

  @override
  String lastCheckIn(String time) {
    return 'Laatste check-in: $time';
  }

  @override
  String get compliancePass => 'Geslaagd';

  @override
  String get complianceFail => 'Niet geslaagd';

  @override
  String get compliancePending => 'In afwachting';

  @override
  String get deviceDetails => 'Apparaatdetails';

  @override
  String get serialNumber => 'Serienummer';

  @override
  String get model => 'Model';

  @override
  String get osVersion => 'OS-versie';

  @override
  String get assetTag => 'Asset-tag';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Geregistreerd';

  @override
  String get assignedUser => 'Toegewezen gebruiker';

  @override
  String get actions => 'Acties';

  @override
  String get actionLock => 'Vergrendelen';

  @override
  String get actionRestart => 'Herstarten';

  @override
  String get actionShutdown => 'Afsluiten';

  @override
  String get actionErase => 'Wissen';

  @override
  String get actionBlankPush => 'Blank push verzenden';

  @override
  String get actionReinstallAgent => 'Agent opnieuw installeren';

  @override
  String get actionUpdateInventory => 'Inventaris bijwerken';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Remote Desktop inschakelen';

  @override
  String get actionRemoteDesktopDisable => 'Remote Desktop uitschakelen';

  @override
  String get actionLostMode => 'Verloren-modus inschakelen';

  @override
  String get destructiveActionTitle => 'Destructieve actie bevestigen';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Deze actie kan niet ongedaan worden gemaakt. Voer \"$deviceName\" in ter bevestiging.';
  }

  @override
  String get destructiveActionHint => 'Apparaatnaam ter bevestiging invoeren';

  @override
  String get confirm => 'Bevestigen';

  @override
  String get actionSuccess => 'Actie succesvol uitgevoerd.';

  @override
  String get actionFailed => 'Actie mislukt. Probeer het opnieuw.';

  @override
  String get biometricReason => 'Authenticeer u voor FleetPilot';

  @override
  String get biometricReasonSecrets =>
      'Authenticeer u om gevoelige gegevens te bekijken';

  @override
  String get biometricReasonDestructive =>
      'Authenticeer u om deze actie uit te voeren';

  @override
  String get biometricFailed => 'Authenticatie mislukt. Probeer het opnieuw.';

  @override
  String get profiles => 'Profielen';

  @override
  String activeProfile(String name) {
    return 'Actief: $name';
  }

  @override
  String get switchProfile => 'Profiel wisselen';

  @override
  String get deleteProfile => 'Profiel verwijderen';

  @override
  String get deleteProfileConfirm =>
      'Weet u zeker dat u dit profiel wilt verwijderen? Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get noProfiles => 'Geen profielen geconfigureerd';

  @override
  String get settings => 'Instellingen';

  @override
  String get about => 'Over';

  @override
  String version(String version) {
    return 'Versie $version';
  }

  @override
  String get validationRequired => 'Dit veld is verplicht.';

  @override
  String get validationSubdomain =>
      'Alleen letters, cijfers en koppeltekens toegestaan. Geen voorloop- of nalooptekens.';

  @override
  String get validationToken =>
      'Ongeldig tokenformaat. 20–500 tekens, alleen alfanumeriek en gangbare scheidingstekens.';

  @override
  String pinLockedOut(int seconds) {
    return 'Te veel mislukte pogingen. Probeer het opnieuw over $seconds seconden.';
  }

  @override
  String get complianceStatus => 'Nalevingsstatus';

  @override
  String get platform => 'Platform';

  @override
  String get deviceName => 'Apparaatnaam';

  @override
  String get searchUsers => 'Gebruikers zoeken...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count gebruikers',
      one: '1 gebruiker',
      zero: 'Geen gebruikers',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Geen gebruikers gevonden';

  @override
  String get noUsersFoundMessage => 'Pas uw zoekopdracht of filters aan.';

  @override
  String get showArchived => 'Gearchiveerde tonen';

  @override
  String get archived => 'Gearchiveerd';

  @override
  String get email => 'E-mail';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprints',
      one: '1 blueprint',
      zero: 'Geen blueprints',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Geen blueprints gevonden';

  @override
  String get noBlueprintsFoundMessage =>
      'Er zijn nog geen blueprints geconfigureerd.';

  @override
  String get enrollmentActive => 'Registratie actief';

  @override
  String get enrollmentInactive => 'Registratie inactief';

  @override
  String get tabOverview => 'Overzicht';

  @override
  String get tabApps => 'Apps';

  @override
  String get tabStatus => 'Status';

  @override
  String get tabActivity => 'Activiteit';

  @override
  String get tabCommands => 'Opdrachten';

  @override
  String get hardware => 'Hardware';

  @override
  String get security => 'Beveiliging';

  @override
  String get totalStorage => 'Totale opslag';

  @override
  String get availableStorage => 'Beschikbare opslag';

  @override
  String get totalRam => 'Totaal RAM';

  @override
  String get wifiMac => 'Wifi-MAC-adres';

  @override
  String get encryption => 'Versleuteling';

  @override
  String get passcode => 'Toegangscode';

  @override
  String get noAppsFound => 'Geen apps gevonden';

  @override
  String get noActivityFound => 'Geen activiteit gevonden';

  @override
  String get noCommandsFound => 'Geen opdrachten gevonden';

  @override
  String get libraryItems => 'Bibliotheekelementen';

  @override
  String get parameters => 'Parameters';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'OS-build';

  @override
  String get cellular => 'Mobiel netwerk';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '1 app',
      zero: 'Geen apps',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Gebruikersdetails';

  @override
  String get jobTitle => 'Functie';

  @override
  String get department => 'Afdeling';

  @override
  String get createdAt => 'Aangemaakt';

  @override
  String get updatedAt => 'Bijgewerkt';

  @override
  String get assignedDevices => 'Toegewezen apparaten';

  @override
  String get noAssignedDevices =>
      'Er zijn geen apparaten toegewezen aan deze gebruiker.';

  @override
  String get userInfo => 'Gebruikersinformatie';

  @override
  String get navMore => 'Meer';

  @override
  String get tabSecrets => 'Secrets';

  @override
  String get filevaultKey => 'FileVault-herstelsleutel';

  @override
  String get unlockPin => 'Ontgrendel-PIN';

  @override
  String get recoveryPassword => 'Recovery Lock-wachtwoord';

  @override
  String get bypassCode => 'Omzeilingscode voor activeringsslot';

  @override
  String get noSecretsFound => 'Geen secrets beschikbaar voor dit apparaat.';

  @override
  String get secretCopied => 'Secret naar klembord gekopieerd';

  @override
  String get threats => 'Bedreigingen';

  @override
  String get noThreatsFound => 'Geen bedreigingen gedetecteerd.';

  @override
  String get vulnerabilities => 'Kwetsbaarheden';

  @override
  String get noVulnerabilitiesFound => 'Geen kwetsbaarheden gedetecteerd.';

  @override
  String get aboutApp => 'Over FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot is een open-source MDM-beheerapp voor Apple-apparatenvloten.';

  @override
  String get tapToCopy => 'Tik om te kopiëren';

  @override
  String get devices => 'Apparaten';

  @override
  String get severity => 'Ernst';

  @override
  String get tabLocation => 'Locatie';

  @override
  String get locationNotAvailable =>
      'Locatiegegevens zijn niet beschikbaar voor dit apparaat.';

  @override
  String get enableLostModeHint =>
      'Schakel de verloren-modus in om dit apparaat te lokaliseren.';

  @override
  String get lostModeEnabled => 'Verloren-modus ingeschakeld';

  @override
  String get noLibraryItemsFound => 'Geen bibliotheekelementen gevonden.';

  @override
  String get licenses => 'Licenties';

  @override
  String get lostModeMessage => 'Verloren-modus-bericht';

  @override
  String get lostModePhone => 'Telefoonnummer';

  @override
  String get lostModeFootnote =>
      'Optioneel bericht en telefoonnummer weergegeven op het apparaat';

  @override
  String get supervised => 'Onder toezicht';

  @override
  String get unsupervised => 'Niet onder toezicht';

  @override
  String get filterSupervised => 'Onder toezicht';

  @override
  String get filterUnsupervised => 'Niet onder toezicht';

  @override
  String get language => 'Taal';

  @override
  String get languageSystem => 'Systeemstandaard';

  @override
  String get actionDisableLostMode => 'Verloren-modus uitschakelen';

  @override
  String get actionClearPasscode => 'Toegangscode wissen';

  @override
  String get filterLostMode => 'Verloren-modus';

  @override
  String get lostMode => 'Verloren-modus';

  @override
  String get sectionManagement => 'Beheer';

  @override
  String get sectionStatus => 'Status';

  @override
  String get statusMissing => 'Vermist';

  @override
  String get statusRemoved => 'Verwijderd';

  @override
  String get agent => 'Agent';

  @override
  String get identifier => 'Identificatie';

  @override
  String get processor => 'Processor';

  @override
  String get hardwareUuid => 'Hardware-UUID';

  @override
  String get devicePosture => 'Apparaatstatus';

  @override
  String get unknownDevice => 'Onbekend apparaat';

  @override
  String get securityAppLock => 'App-vergrendeling';

  @override
  String get securityAppLockDescription =>
      'Stel een 6-cijferige PIN in om de app te beveiligen. Biometrische authenticatie kan worden ingeschakeld na het instellen van een PIN.';

  @override
  String get securityAppLockActive => 'App-vergrendeling ingeschakeld';

  @override
  String get securityAppLockInactive => 'Geen app-vergrendeling geconfigureerd';

  @override
  String get securitySetPin => 'PIN instellen';

  @override
  String get securityChangePin => 'PIN wijzigen';

  @override
  String get securityRemovePin => 'PIN verwijderen';

  @override
  String get securityCurrentPin => 'Huidige PIN';

  @override
  String get securityNewPin => 'Nieuwe PIN';

  @override
  String get securityConfirmPin => 'Voer de PIN opnieuw in ter bevestiging.';

  @override
  String get securityPinLength => 'PIN moet 6 cijfers lang zijn.';

  @override
  String get securityPinMismatch => 'PIN-codes komen niet overeen.';

  @override
  String get securityPinWrong => 'Onjuiste PIN.';

  @override
  String get securityPinSet => 'PIN is ingesteld.';

  @override
  String get securityPinChanged => 'PIN is gewijzigd.';

  @override
  String get securityPinRemoved => 'PIN en app-vergrendeling zijn verwijderd.';

  @override
  String get securityBiometric => 'Biometrie';

  @override
  String get securityBiometricDescription =>
      'Gebruik vingerafdruk of gezichtsherkenning om de app te ontgrendelen in plaats van de PIN.';

  @override
  String get securityBiometricEnable => 'Biometrische ontgrendeling';

  @override
  String get securityBiometricActive => 'Actief';

  @override
  String get securityBiometricInactive => 'Inactief';

  @override
  String get securityBiometricUnavailable =>
      'Biometrische authenticatie is niet beschikbaar op dit apparaat.';

  @override
  String get securityNext => 'Volgende';

  @override
  String get actionRenewMdm => 'MDM-profiel vernieuwen';

  @override
  String get actionSetName => 'Apparaatnaam instellen';

  @override
  String get actionSetNameHint => 'Nieuwe apparaatnaam invoeren';

  @override
  String get actionDeleteUser => 'Gebruiker verwijderen';

  @override
  String get actionDeleteUserName => 'Gebruikersnaam';

  @override
  String get actionDeleteAllUsers => 'Alle gebruikers verwijderen';

  @override
  String get actionForceDeletion => 'Verwijdering forceren';

  @override
  String get actionUnlockAccount => 'Account ontgrendelen';

  @override
  String get actionPlayLostModeSound => 'Verloren-modus-geluid afspelen';

  @override
  String get actionUpdateLocation => 'Locatie bijwerken';

  @override
  String get erasePin => '6-cijferige PIN';

  @override
  String get erasePinHint => 'Vereist voor mobiele apparaten';

  @override
  String get erasePreserveDataPlan => 'Databundel behouden';

  @override
  String get eraseDisallowProximitySetup => 'Proximity-setup weigeren';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Vergrendelingsbericht';

  @override
  String get lockPhone => 'Telefoonnummer';

  @override
  String get restartRebuildKernelCache => 'Kernelcache opnieuw opbouwen';

  @override
  String get restartNotifyUser => 'Gebruiker melden';

  @override
  String get actionRemoteDesktop => 'Remote Desktop';

  @override
  String get tabNotes => 'Notities';

  @override
  String get noNotesFound => 'Nog geen notities';

  @override
  String get addNote => 'Notitie toevoegen';

  @override
  String get editNote => 'Notitie bewerken';

  @override
  String get deleteNote => 'Notitie verwijderen';

  @override
  String get deleteNoteConfirm =>
      'Weet u zeker dat u deze notitie wilt verwijderen?';

  @override
  String get noteContent => 'Notitie-inhoud';

  @override
  String get noteSaved => 'Notitie opgeslagen.';

  @override
  String get noteDeleted => 'Notitie verwijderd.';

  @override
  String get editDevice => 'Apparaat bewerken';

  @override
  String get deviceUpdated => 'Apparaat bijgewerkt.';

  @override
  String get deleteDevice => 'Apparaat verwijderen';

  @override
  String get deleteDeviceConfirm =>
      'Het apparaat wordt permanent uit het MDM verwijderd. Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get deviceDeleted => 'Apparaat verwijderd.';

  @override
  String get cancelLostMode => 'Verloren-modus annuleren';

  @override
  String get cancelLostModeConfirm =>
      'Het lopende verloren-modusverzoek annuleren?';

  @override
  String get lostModeCancelled => 'Verloren-modus geannuleerd.';

  @override
  String get tags => 'Tags';

  @override
  String get noTags => 'Geen tags';

  @override
  String get addTag => 'Tag toevoegen';

  @override
  String get tagName => 'Tagnaam';

  @override
  String get manageTags => 'Tags beheren';

  @override
  String get auditLog => 'Auditlogboek';

  @override
  String get noAuditEvents => 'Geen auditgebeurtenissen gevonden';

  @override
  String get actionDailyCheckIn => 'Dagelijkse check-in';

  @override
  String get licensing => 'Licenties';

  @override
  String get deviceLimit => 'Apparaatlimiet';

  @override
  String get devicesUsed => 'Apparaten in gebruik';

  @override
  String get licenseType => 'Licentietype';

  @override
  String get appleDevices => 'Apple-apparaten';

  @override
  String get deleteUser => 'Gebruiker verwijderen';

  @override
  String get deleteUserConfirm =>
      'Weet u zeker dat u deze gebruiker wilt verwijderen? Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get userDeleted => 'Gebruiker verwijderd.';

  @override
  String get createBlueprint => 'Blueprint aanmaken';

  @override
  String get editBlueprint => 'Blueprint bewerken';

  @override
  String get deleteBlueprint => 'Blueprint verwijderen';

  @override
  String get deleteBlueprintConfirm =>
      'Het verwijderen van dit blueprint zal alle toegewezen apparaten uitschrijven. Deze actie kan niet ongedaan worden gemaakt.';

  @override
  String get blueprintCreated => 'Blueprint aangemaakt.';

  @override
  String get blueprintUpdated => 'Blueprint bijgewerkt.';

  @override
  String get blueprintDeleted => 'Blueprint verwijderd.';

  @override
  String get blueprintName => 'Blueprintnaam';

  @override
  String get blueprintDescription => 'Beschrijving';

  @override
  String get enrollmentCode => 'Registratiecode';

  @override
  String get assignLibraryItem => 'Bibliotheekelement toewijzen';

  @override
  String get removeLibraryItem => 'Bibliotheekelement verwijderen';

  @override
  String get libraryItemAssigned => 'Bibliotheekelement toegewezen.';

  @override
  String get libraryItemRemoved => 'Bibliotheekelement verwijderd.';

  @override
  String get lostModeDetails => 'Verloren-modusdetails';

  @override
  String get lostModeEnabledBy => 'Ingeschakeld door';

  @override
  String get lostModeEnabledAt => 'Ingeschakeld op';

  @override
  String get searchBlueprints => 'Blueprints zoeken...';

  @override
  String get searchVulnerabilities => 'Kwetsbaarheden zoeken...';

  @override
  String get searchThreats => 'Bedreigingen zoeken...';

  @override
  String get searchAuditLog => 'Auditlog zoeken...';

  @override
  String get filterCritical => 'Kritiek';

  @override
  String get filterHigh => 'Hoog';

  @override
  String get filterMedium => 'Gemiddeld';

  @override
  String get filterLow => 'Laag';

  @override
  String get filterClearAll => 'Alles wissen';

  @override
  String get filterTitle => 'Filter';

  @override
  String get filterApply => 'Toepassen';

  @override
  String get filterPlatform => 'Platform';

  @override
  String get filterSupervision => 'Toezicht';

  @override
  String get filterStatus => 'Status';

  @override
  String get adeIntegrations => 'ADE-integraties';

  @override
  String get noAdeIntegrations => 'Geen ADE-integraties gevonden.';

  @override
  String get adeDevices => 'ADE-apparaten';

  @override
  String get noAdeDevices => 'Geen ADE-apparaten gevonden.';

  @override
  String get tokenExpiry => 'Tokenverloop';

  @override
  String get tokenValid => 'Token geldig';

  @override
  String get tokenExpired => 'Token verlopen';

  @override
  String get orgName => 'Organisatie';

  @override
  String get defaultBlueprint => 'Standaard-blueprint';

  @override
  String get renewToken => 'Token vernieuwen';

  @override
  String get publicKey => 'Publieke sleutel';

  @override
  String get vulnerabilityDetections => 'Kwetsbaarheidsdetecties';

  @override
  String get noDetectionsFound => 'Geen detecties gevonden.';

  @override
  String get behavioralDetections => 'Gedragsdetecties';

  @override
  String get noBehavioralDetections => 'Geen gedragsdetecties gevonden.';

  @override
  String get searchBehavioralDetections => 'Detecties zoeken...';

  @override
  String get affectedDevices => 'Getroffen apparaten';

  @override
  String get noAffectedDevices =>
      'Geen getroffen apparaten gevonden. Eerder getroffen apparaten zijn mogelijk verwijderd.';

  @override
  String get affectedSoftware => 'Getroffen software';

  @override
  String get blueprintTemplates => 'Blueprintsjablonen';

  @override
  String get noTemplatesFound => 'Geen sjablonen gevonden.';

  @override
  String get otaEnrollmentProfile => 'OTA-registratieprofiel';

  @override
  String get libraryItemActivity => 'Activiteit';

  @override
  String get libraryItemDeploymentStatus => 'Implementatiestatus';

  @override
  String get noActivityFound2 => 'Geen activiteit gevonden.';

  @override
  String get noStatusFound => 'Geen implementatiestatus gevonden.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detecties',
      one: '1 detectie',
      zero: 'Geen detecties',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count integraties',
      one: '1 integratie',
      zero: 'Geen integraties',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Kwetsbaarheidsdetails';

  @override
  String get description => 'Beschrijving';

  @override
  String get firstDetected => 'Eerste detectie';

  @override
  String get lastDetected => 'Laatste detectie';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count software',
      one: '1 software',
      zero: 'Geen software',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Integratie bewerken';

  @override
  String get deleteIntegration => 'Integratie verwijderen';

  @override
  String get deleteIntegrationConfirm =>
      'Weet u zeker dat u deze ADE-integratie wilt verwijderen? Dit kan niet ongedaan worden gemaakt.';

  @override
  String get integrationDeleted => 'Integratie verwijderd.';

  @override
  String get integrationUpdated => 'Integratie bijgewerkt.';

  @override
  String get defaultBlueprintId => 'Standaard-blueprint-ID';

  @override
  String get phone => 'Telefoon';

  @override
  String get downloadOtaProfile => 'Registratieprofiel downloaden';

  @override
  String get otaProfileCopied => 'Registratieprofiel naar klembord gekopieerd.';

  @override
  String get noOtaProfile => 'Geen registratieprofiel beschikbaar.';

  @override
  String get createTag => 'Tag aanmaken';

  @override
  String get editTag => 'Tag bewerken';

  @override
  String get deleteTag => 'Tag verwijderen';

  @override
  String get deleteTagConfirm =>
      'Weet u zeker dat u deze tag wilt verwijderen?';

  @override
  String get tagColor => 'Kleur';

  @override
  String get tagCreated => 'Tag aangemaakt.';

  @override
  String get tagUpdated => 'Tag bijgewerkt.';

  @override
  String get tagDeleted => 'Tag verwijderd.';

  @override
  String get noTagsFound => 'Geen tags gevonden.';

  @override
  String get libraryItemDetail => 'Bibliotheekelement';

  @override
  String get viewActivity => 'Activiteit bekijken';

  @override
  String get viewStatus => 'Status bekijken';

  @override
  String get installations => 'Installaties';

  @override
  String get createAdeIntegration => 'ADE-integratie aanmaken';

  @override
  String get adeCreateDescription =>
      'Upload een servertokenbestand (.p7m) van Apple Business Manager om een nieuwe ADE-integratie aan te maken.';

  @override
  String get selectTokenFile => 'Tokenbestand selecteren';

  @override
  String tokenFileSelected(String name) {
    return 'Tokenbestand: $name';
  }

  @override
  String get noTokenFileSelected => 'Geen tokenbestand geselecteerd';

  @override
  String get integrationCreated => 'Integratie aangemaakt.';

  @override
  String get create => 'Aanmaken';

  @override
  String get step1GetPublicKey => 'Stap 1: Publieke sleutel downloaden';

  @override
  String get step1Description =>
      'Kopieer de publieke sleutel en upload deze in Apple Business Manager.';

  @override
  String get step2UploadToken => 'Stap 2: Servertoken uploaden';

  @override
  String get step2Description =>
      'Selecteer het .p7m tokenbestand dat u van Apple hebt gedownload.';

  @override
  String get step3Configure => 'Stap 3: Configureren';

  @override
  String get publicKeyCopied => 'Publieke sleutel naar klembord gekopieerd.';

  @override
  String get renewTokenDescription =>
      'Upload een nieuw .p7m tokenbestand om het token van deze integratie te vernieuwen.';

  @override
  String get tokenRenewed => 'Token vernieuwd.';

  @override
  String get aboutLinks => 'Links';

  @override
  String get aboutWebsite => 'Website';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Broncode';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Technologie';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'State Management';

  @override
  String get aboutArchitecture => 'Architectuur';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Dataklassen';

  @override
  String get aboutNavigationLabel => 'Navigatie';

  @override
  String get aboutOpenSourceLicenses => 'Open source-licenties';

  @override
  String get aboutShowHide => 'Zichtbaarheid wisselen';

  @override
  String get editProfileTitle => 'Verbinding bewerken';

  @override
  String get editProfileSubtitle =>
      'Werk uw tenantverbindingsinstellingen bij.';

  @override
  String get apiTokenHintEdit => 'Laat leeg om bestaand token te behouden';

  @override
  String get profileUpdated => 'Profiel bijgewerkt.';

  @override
  String profileSwitched(String name) {
    return 'Gewisseld naar $name.';
  }

  @override
  String get securityAutoLock => 'Automatische vergrendeling';

  @override
  String get securityAutoLockDescription =>
      'Automatisch authenticatie vereisen nadat de app op de achtergrond is geweest.';

  @override
  String get timeoutImmediately => 'Onmiddellijk';

  @override
  String get timeoutSeconds30 => 'Na 30 seconden';

  @override
  String get timeoutSeconds60 => 'Na 1 minuut';

  @override
  String get timeoutSeconds120 => 'Na 2 minuten';

  @override
  String get timeoutMinutes5 => 'Na 5 minuten';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Geen blueprint';

  @override
  String get presetSaveFilter => 'Filtervoorinstelling opslaan';

  @override
  String get presetLoad => 'Voorinstelling laden';

  @override
  String get presetName => 'Naam van voorinstelling';

  @override
  String get presetNameHint => 'bijv. Niet-beheerde Macs';

  @override
  String get presetSaved => 'Filtervoorinstelling opgeslagen.';

  @override
  String get presetDeleted => 'Filtervoorinstelling verwijderd.';

  @override
  String presetApplied(String name) {
    return 'Voorinstelling \"$name\" toegepast.';
  }

  @override
  String get presetNoPresets => 'Geen opgeslagen voorinstellingen';

  @override
  String get presetNoPresetsMessage =>
      'Sla uw huidige filters op als voorinstelling voor snelle toegang.';

  @override
  String get presetDeleteConfirm => 'Deze voorinstelling verwijderen?';

  @override
  String get presetNameRequired => 'Voer een naam in voor de voorinstelling.';

  @override
  String selectedCount(int count) {
    return '$count geselecteerd';
  }

  @override
  String get selectAll => 'Alles selecteren';

  @override
  String get deselectAll => 'Alles deselecteren';

  @override
  String get bulkActions => 'Acties';

  @override
  String bulkActionsTitle(int count) {
    return 'Acties voor $count apparaten';
  }

  @override
  String get bulkActionAssignTag => 'Tag toewijzen';

  @override
  String get bulkActionAssignTagDescription =>
      'Een tag toevoegen aan alle geselecteerde apparaten';

  @override
  String get bulkActionAssignBlueprint => 'Blueprint toewijzen';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Geselecteerde apparaten naar een blueprint verplaatsen';

  @override
  String get bulkActionLock => 'Apparaten vergrendelen';

  @override
  String get bulkActionLockDescription =>
      'Alle geselecteerde apparaten op afstand vergrendelen';

  @override
  String get bulkActionRestart => 'Apparaten herstarten';

  @override
  String get bulkActionRestartDescription =>
      'Alle geselecteerde apparaten herstarten';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Weet u zeker dat u $count apparaten wilt herstarten?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Actie op $count apparaten succesvol voltooid.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Op $success apparaten voltooid, $failed mislukt.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed van $total voltooid';
  }

  @override
  String get biometricReasonBulkAction =>
      'Authenticeer u om de bulkactie uit te voeren';

  @override
  String get lockPin => 'Vergrendelings-PIN (optioneel)';

  @override
  String get noTagsAvailable =>
      'Geen tags beschikbaar. Maak tags aan in de MDM-webconsole.';

  @override
  String get noBlueprintsAvailable => 'Geen blueprints beschikbaar.';

  @override
  String get selectADevice => 'Apparaat selecteren';

  @override
  String get selectABlueprint => 'Blueprint selecteren';

  @override
  String get clearSearch => 'Zoekopdracht wissen';

  @override
  String get refresh => 'Vernieuwen';

  @override
  String get moreActions => 'Meer acties';

  @override
  String get close => 'Sluiten';

  @override
  String get onboardingSkip => 'Overslaan';

  @override
  String get onboardingNext => 'Volgende';

  @override
  String get onboardingGetStarted => 'Aan de slag';

  @override
  String get onboardingWelcomeTitle => 'Welkom bij FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Uw mobiele commandocentrum voor Apple-apparatenvlootbeheer. Bewaken, beheren en beveiligen van uw gehele vloot vanaf elke locatie.';

  @override
  String get onboardingDevicesTitle => 'Apparaatbeheer';

  @override
  String get onboardingDevicesSubtitle =>
      'Volledig overzicht en controle over elk apparaat in uw vloot.';

  @override
  String get onboardingDevicesFeature1 =>
      'Alle geregistreerde iPhones, iPads, Macs en Apple TV\'s bekijken';

  @override
  String get onboardingDevicesFeature2 =>
      'Opdrachten op afstand verzenden: vergrendelen, herstarten, wissen en meer';

  @override
  String get onboardingDevicesFeature3 =>
      'Blueprints, apps en nalevingsstatus volgen';

  @override
  String get onboardingSecurityTitle => 'Gebouwd voor veiligheid';

  @override
  String get onboardingSecuritySubtitle =>
      'Uw vlootgegevens blijven beschermd met meerdere beveiligingslagen.';

  @override
  String get onboardingSecurityFeature1 =>
      'Biometrische authenticatie met Face ID of vingerafdruk';

  @override
  String get onboardingSecurityFeature2 =>
      '6-cijferige PIN-vergrendeling voor apptoegang';

  @override
  String get onboardingSecurityFeature3 =>
      'Automatische sessievergrendeling na time-out';

  @override
  String get onboardingReadyTitle => 'Klaar om te beginnen';

  @override
  String get onboardingReadySubtitle =>
      'Verbind uw MDM-tenant om te beginnen met het beheren van uw Apple-apparatenvloot. Stel vervolgens uw API-verbinding en beveiligings-PIN in.';

  @override
  String get searchTags => 'Tags zoeken';

  @override
  String tagDeviceCount(int count) {
    return '$count apparaten';
  }

  @override
  String get sortTitle => 'Sortering';

  @override
  String get sortDirection => 'Sorteerrichting';

  @override
  String get ascending => 'Oplopend';

  @override
  String get descending => 'Aflopend';

  @override
  String get filterSeverity => 'Ernst';

  @override
  String get filterSort => 'Filteren & sorteren';

  @override
  String get statusQuarantined => 'In quarantaine';

  @override
  String get statusNotQuarantined => 'Niet in quarantaine';

  @override
  String get statusDetected => 'Gedetecteerd';

  @override
  String get statusReleased => 'Vrijgegeven';

  @override
  String get severityCritical => 'Kritiek';

  @override
  String get severityHigh => 'Hoog';

  @override
  String get severityMedium => 'Gemiddeld';

  @override
  String get severityLow => 'Laag';

  @override
  String threatCount(int count) {
    return '$count bedreigingen';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count detecties';
  }

  @override
  String get downloadPublicKey => 'Downloaden';

  @override
  String get publicKeySaved => 'Publieke sleutel opgeslagen';

  @override
  String get sortBy => 'Sorteren op';

  @override
  String get sortByCvss => 'CVSS-score';

  @override
  String get sortByDeviceCount => 'Getroffen apparaten';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count kwetsbaarheden';
  }

  @override
  String get assignTags => 'Tags';

  @override
  String get noTagsAvailableMessage =>
      'Geen tags beschikbaar. Maak eerst tags aan.';

  @override
  String get failedToLoadTags => 'Tags konden niet worden geladen';

  @override
  String get details => 'Details';

  @override
  String get searchLibraryItems => 'Bibliotheekelementen zoeken...';

  @override
  String get categoryCustomScript => 'Aangepast script';

  @override
  String get categoryCustomApp => 'Aangepaste app';

  @override
  String get categoryCustomProfile => 'Aangepast profiel';

  @override
  String get categoryInHouseApp => 'In-house app';

  @override
  String get categoryBuiltIn => 'Ingebouwd';

  @override
  String get categoryVppApps => 'VPP / App Store-apps';

  @override
  String get categoryManagedProfiles => 'Beheerde profielen';

  @override
  String get categoryKandjiSetup => 'MDM-configuratie';

  @override
  String get categoryMacosRelease => 'macOS-updates';

  @override
  String get categoryThreatPolicy => 'Beveiligingsbeleid';

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
  String get executionFrequencyOnce => 'Eenmalig';

  @override
  String get executionFrequencyEvery15Min => 'Elke 15 minuten';

  @override
  String get executionFrequencyEveryDay => 'Dagelijks';

  @override
  String get executionFrequencyNoEnforcement => 'Geen afdwinging';

  @override
  String get scriptBody => 'Script';

  @override
  String get remediationScript => 'Herstelscript';

  @override
  String get allProperties => 'Alle eigenschappen';

  @override
  String get builtInLibraryItem => 'Ingebouwd bibliotheekelement';

  @override
  String get builtInDetailsHint => 'Details beschikbaar op het tabblad Status';

  @override
  String get active => 'Actief';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nee';

  @override
  String get execution => 'Uitvoering';

  @override
  String get restart => 'Herstart';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Installatietype';

  @override
  String get enforcement => 'Afdwinging';

  @override
  String get runsOnMac => 'Draait op Mac';

  @override
  String get runsOnIphone => 'Draait op iPhone';

  @override
  String get runsOnIpad => 'Draait op iPad';

  @override
  String get appName => 'App-naam';

  @override
  String get appVersion => 'App-versie';

  @override
  String get minOsVersion => 'Min. OS-versie';

  @override
  String get created => 'Aangemaakt';

  @override
  String get updated => 'Bijgewerkt';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementen',
      one: '1 element',
      zero: 'Geen elementen',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Opgelost';

  @override
  String get severityInformational => 'Informatief';

  @override
  String get managementState => 'Beheerstatus';

  @override
  String get managementStateOpen => 'Open';

  @override
  String get managementStateClosed => 'Gesloten';

  @override
  String get classificationMalware => 'Malware';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Verdacht';

  @override
  String get classificationMal => 'Schadelijk';

  @override
  String get blueprintRouting => 'Blueprint-routering';

  @override
  String get blueprintRoutingDesc =>
      'Registratiecode en routering voor handmatige / Android Work Profile-registratie';

  @override
  String get blueprintRoutingNotConfigured =>
      'Blueprint-routering is niet geconfigureerd voor deze tenant.';

  @override
  String get enrollmentCodeActive => 'Actief';

  @override
  String get enrollmentCodeInactive => 'Inactief';

  @override
  String get routingActivity => 'Routeringsactiviteit';

  @override
  String get noRoutingActivity => 'Geen routeringsactiviteit gevonden.';

  @override
  String get selfServiceCategories => 'Self-servicecategorieën';

  @override
  String get selfServiceDesc =>
      'Self-servicecategorieën voor uw gebruikers beheren';

  @override
  String get addCategory => 'Categorie toevoegen';

  @override
  String get categoryName => 'Categorienaam';

  @override
  String get deleteCategory => 'Categorie verwijderen';

  @override
  String get deleteCategoryConfirm =>
      'Weet u zeker dat u deze categorie wilt verwijderen?';

  @override
  String get noCategoriesFound => 'Geen categorieën gevonden.';

  @override
  String get categoryCreated => 'Categorie aangemaakt';

  @override
  String get categoryDeleted => 'Categorie verwijderd';

  @override
  String get profileBody => 'Profiel-XML';

  @override
  String get customProfile => 'Aangepast profiel';

  @override
  String get classification => 'Classificatie';

  @override
  String get mdmEnabled => 'MDM ingeschakeld';

  @override
  String get enrolledViaDep => 'Via DEP geregistreerd';

  @override
  String get userApprovedMdm => 'Door gebruiker goedgekeurd MDM';

  @override
  String get network => 'Netwerk';

  @override
  String get ipAddress => 'IP-adres';

  @override
  String get wifiNetwork => 'Wifi-netwerk';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Activeringsslot';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Ontwikkelaarsmodus';

  @override
  String get adbEnabled => 'ADB ingeschakeld';

  @override
  String get unknownSources => 'Onbekende bronnen';

  @override
  String get securityPatch => 'Beveiligingspatch';

  @override
  String get provisioningUdid => 'Provisioning UDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM-info';

  @override
  String get lastEnrollment => 'Laatste registratie';

  @override
  String get enterpriseId => 'Enterprise-ID';

  @override
  String get manufacturer => 'Fabrikant';

  @override
  String get generalStatus => 'Algemene status';

  @override
  String get apiLevel => 'API-niveau';

  @override
  String get userApprovedEnrollment =>
      'Door gebruiker goedgekeurde registratie';

  @override
  String get hostname => 'Hostnaam';

  @override
  String get macAddress => 'MAC-adres';

  @override
  String get publicIp => 'Openbaar IP';

  @override
  String get volumes => 'Volumes';

  @override
  String volumeUsed(String percent) {
    return '$percent% in gebruik';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available vrij van $total';
  }

  @override
  String get encrypted => 'Versleuteld';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores kernen';
  }

  @override
  String processors(String count) {
    return '$count processors';
  }

  @override
  String get batteryLevel => 'Accuniveau';

  @override
  String get lastUser => 'Laatste gebruiker';

  @override
  String get bootVolume => 'Opstartvolume';

  @override
  String get localUsers => 'Lokale gebruikers';

  @override
  String get regularUsers => 'Standaardgebruikers';

  @override
  String get systemUsers => 'Systeemgebruikers';

  @override
  String get admin => 'Beheerder';

  @override
  String get assignToBlueprint => 'Blueprint toewijzen';

  @override
  String get installOnDevice => 'Op apparaat installeren';

  @override
  String get selectBlueprint => 'Blueprint selecteren';

  @override
  String get selectDevice => 'Apparaat selecteren';

  @override
  String get selfServiceEnabled => 'Self Service';

  @override
  String get vppLicenses => 'VPP-licenties';

  @override
  String get fileName => 'Bestandsnaam';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Activeringsslot';

  @override
  String get prismCategoryApps => 'Toepassingen';

  @override
  String get prismCategoryApplicationFirewall => 'Toepassingsfirewall';

  @override
  String get prismCategoryCellular => 'Mobiel netwerk';

  @override
  String get prismCategoryCertificates => 'Certificaten';

  @override
  String get prismCategoryDesktopAndScreensaver =>
      'Bureaublad & schermbeveiliging';

  @override
  String get prismCategoryDeviceInformation => 'Apparaatinformatie';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper & XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Geïnstalleerde profielen';

  @override
  String get prismCategoryKernelExtensions => 'Kernel Extensions';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents & Daemons';

  @override
  String get prismCategoryLocalUsers => 'Lokale gebruikers';

  @override
  String get prismCategoryStartupSettings => 'Opstartinstellingen';

  @override
  String get prismCategorySystemExtensions => 'Systeemextensies';

  @override
  String get prismCategoryTransparencyDatabase => 'Transparantiedatabase';

  @override
  String prismRecords(int count) {
    return '$count records';
  }

  @override
  String get prismNoData => 'Geen gegevens beschikbaar voor deze categorie.';

  @override
  String get prismExport => 'CSV exporteren';

  @override
  String get prismExportRequested =>
      'Export aangevraagd. De downloadlink is binnenkort beschikbaar.';

  @override
  String get prismFilterByFamily => 'Apparaatfamilie';

  @override
  String get prismAllFamilies => 'Alle families';

  @override
  String get appearance => 'Weergave';

  @override
  String get themeMode => 'Thema';

  @override
  String get themeModeSystem => 'Systeem';

  @override
  String get themeModeLight => 'Licht';

  @override
  String get themeModeDark => 'Donker';

  @override
  String get shortTypeScript => 'Script';

  @override
  String get shortTypeCustom => 'Aangepast';

  @override
  String get shortTypeProfile => 'Profiel';

  @override
  String get shortTypeInHouse => 'In-house';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Beheerd';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Beveiliging';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'OS-updates';

  @override
  String get categoryAutoApps => 'Auto-apps';

  @override
  String get autoApp => 'Auto-app';

  @override
  String get fileSize => 'Bestandsgrootte';

  @override
  String get unzipLocation => 'Uitpaklocatie';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Bestand bijgewerkt';

  @override
  String get mdmIdentifier => 'MDM-identifier';

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
