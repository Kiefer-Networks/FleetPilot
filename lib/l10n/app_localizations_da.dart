// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Danish (`da`).
class AppLocalizationsDa extends AppLocalizations {
  AppLocalizationsDa([String locale = 'da']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Enheder';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Brugere';

  @override
  String get navSettings => 'Indstillinger';

  @override
  String get welcomeTitle => 'Velkommen til FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Administrer din Apple-enhedsflåde overalt fra.';

  @override
  String get addProfile => 'Tilføj profil';

  @override
  String get editProfile => 'Rediger profil';

  @override
  String get displayName => 'Visningsnavn';

  @override
  String get displayNameHint => 'f.eks. Acme Corp — Prod';

  @override
  String get region => 'Region';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Subdomæne';

  @override
  String get subdomainHint => 'dit-tenant';

  @override
  String get apiToken => 'API-token';

  @override
  String get apiTokenHint => 'Indsæt API-token her';

  @override
  String urlPreview(String url) {
    return 'API-URL: $url';
  }

  @override
  String get verifyAndSave => 'Bekræft & Gem';

  @override
  String get verifying => 'Forbindelse bekræftes...';

  @override
  String get connectionSuccess => 'Forbindelse bekræftet!';

  @override
  String get errorInvalidToken =>
      'Ugyldigt API-token. Kontrollér venligst dit token i webkonsollen.';

  @override
  String get errorInsufficientPermissions =>
      'Utilstrækkelige tilladelser. Sørg for, at tokenet har læseadgang til enheder.';

  @override
  String get errorNetworkUnreachable =>
      'API ikke tilgængelig. Kontrollér din internetforbindelse og subdomæne.';

  @override
  String get errorNotFound => 'Den anmodede ressource blev ikke fundet.';

  @override
  String get errorValidation =>
      'Anmodningen indeholdt ugyldige data. Kontrollér venligst din indtastning.';

  @override
  String get errorRateLimit =>
      'For mange anmodninger. Vent venligst et øjeblik, og prøv igen.';

  @override
  String get errorServer =>
      'Serveren stødte på en fejl. Prøv venligst igen senere.';

  @override
  String get errorUnexpected =>
      'Der opstod en uventet fejl. Prøv venligst igen.';

  @override
  String get retry => 'Prøv igen';

  @override
  String get cancel => 'Annuller';

  @override
  String get delete => 'Slet';

  @override
  String get save => 'Gem';

  @override
  String get search => 'Søg';

  @override
  String get searchDevices => 'Søg enheder...';

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
  String get allBlueprints => 'Alle Blueprints';

  @override
  String loadingDevices(int count) {
    return '$count enheder indlæses...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count enheder',
      one: '1 enhed',
      zero: 'Ingen enheder',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Ingen enheder fundet';

  @override
  String get noDevicesFoundMessage => 'Tilpas din søgning eller dine filtre.';

  @override
  String lastCheckIn(String time) {
    return 'Seneste check-in: $time';
  }

  @override
  String get compliancePass => 'Bestået';

  @override
  String get complianceFail => 'Ikke bestået';

  @override
  String get compliancePending => 'Afventer';

  @override
  String get deviceDetails => 'Enhedsdetaljer';

  @override
  String get serialNumber => 'Serienummer';

  @override
  String get model => 'Model';

  @override
  String get osVersion => 'OS-version';

  @override
  String get assetTag => 'Asset-tag';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Registreret';

  @override
  String get assignedUser => 'Tildelt bruger';

  @override
  String get actions => 'Handlinger';

  @override
  String get actionLock => 'Lås';

  @override
  String get actionRestart => 'Genstart';

  @override
  String get actionShutdown => 'Sluk';

  @override
  String get actionErase => 'Slet';

  @override
  String get actionBlankPush => 'Send Blank Push';

  @override
  String get actionReinstallAgent => 'Geninstaller agent';

  @override
  String get actionUpdateInventory => 'Opdater inventar';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Aktiver Fjernskrivebord';

  @override
  String get actionRemoteDesktopDisable => 'Deaktiver Fjernskrivebord';

  @override
  String get actionLostMode => 'Aktiver Mistet-tilstand';

  @override
  String get destructiveActionTitle => 'Bekræft destruktiv handling';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Denne handling kan ikke fortrydes. Indtast \"$deviceName\" for at bekræfte.';
  }

  @override
  String get destructiveActionHint => 'Indtast enhedsnavn for at bekræfte';

  @override
  String get confirm => 'Bekræft';

  @override
  String get actionSuccess => 'Handling udført.';

  @override
  String get actionFailed => 'Handling mislykkedes. Prøv venligst igen.';

  @override
  String get biometricReason => 'Godkend for FleetPilot';

  @override
  String get biometricReasonSecrets => 'Godkend for at se følsomme data';

  @override
  String get biometricReasonDestructive =>
      'Godkend for at udføre denne handling';

  @override
  String get biometricFailed => 'Godkendelse mislykkedes. Prøv venligst igen.';

  @override
  String get profiles => 'Profiler';

  @override
  String activeProfile(String name) {
    return 'Aktiv: $name';
  }

  @override
  String get switchProfile => 'Skift profil';

  @override
  String get deleteProfile => 'Slet profil';

  @override
  String get deleteProfileConfirm =>
      'Vil du virkelig slette denne profil? Denne handling kan ikke fortrydes.';

  @override
  String get noProfiles => 'Ingen profiler konfigureret';

  @override
  String get settings => 'Indstillinger';

  @override
  String get about => 'Om';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get validationRequired => 'Dette felt er påkrævet.';

  @override
  String get validationSubdomain =>
      'Kun bogstaver, tal og bindestreger tilladt. Ingen førende eller efterfølgende bindestreger.';

  @override
  String get validationToken =>
      'Ugyldigt token-format. 20–500 tegn, kun alfanumeriske og almindelige skilletegn.';

  @override
  String pinLockedOut(int seconds) {
    return 'For mange mislykkede forsøg. Prøv igen om $seconds sekunder.';
  }

  @override
  String get complianceStatus => 'Overholdelse';

  @override
  String get platform => 'Platform';

  @override
  String get deviceName => 'Enhedsnavn';

  @override
  String get searchUsers => 'Søg brugere...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count brugere',
      one: '1 bruger',
      zero: 'Ingen brugere',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Ingen brugere fundet';

  @override
  String get noUsersFoundMessage => 'Tilpas din søgning eller dine filtre.';

  @override
  String get showArchived => 'Vis arkiverede';

  @override
  String get archived => 'Arkiveret';

  @override
  String get email => 'E-mail';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprints',
      one: '1 Blueprint',
      zero: 'Ingen Blueprints',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Ingen Blueprints fundet';

  @override
  String get noBlueprintsFoundMessage =>
      'Der er endnu ikke konfigureret nogen Blueprints.';

  @override
  String get enrollmentActive => 'Registrering aktiv';

  @override
  String get enrollmentInactive => 'Registrering inaktiv';

  @override
  String get tabOverview => 'Oversigt';

  @override
  String get tabApps => 'Apps';

  @override
  String get tabStatus => 'Status';

  @override
  String get tabActivity => 'Aktivitet';

  @override
  String get tabCommands => 'Kommandoer';

  @override
  String get hardware => 'Hardware';

  @override
  String get security => 'Sikkerhed';

  @override
  String get totalStorage => 'Samlet lager';

  @override
  String get availableStorage => 'Tilgængeligt lager';

  @override
  String get totalRam => 'Samlet RAM';

  @override
  String get wifiMac => 'Wi-Fi MAC-adresse';

  @override
  String get encryption => 'Kryptering';

  @override
  String get passcode => 'Adgangskode';

  @override
  String get noAppsFound => 'Ingen apps fundet';

  @override
  String get noActivityFound => 'Ingen aktivitet fundet';

  @override
  String get noCommandsFound => 'Ingen kommandoer fundet';

  @override
  String get libraryItems => 'Bibliotekselementer';

  @override
  String get parameters => 'Parametre';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'OS-build';

  @override
  String get cellular => 'Mobilnet';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '1 app',
      zero: 'Ingen apps',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Brugerdetaljer';

  @override
  String get jobTitle => 'Jobtitel';

  @override
  String get department => 'Afdeling';

  @override
  String get createdAt => 'Oprettet';

  @override
  String get updatedAt => 'Opdateret';

  @override
  String get assignedDevices => 'Tildelte enheder';

  @override
  String get noAssignedDevices => 'Ingen enheder er tildelt denne bruger.';

  @override
  String get userInfo => 'Brugerinfo';

  @override
  String get navMore => 'Mere';

  @override
  String get tabSecrets => 'Secrets';

  @override
  String get filevaultKey => 'FileVault-genoprettelsesnøgle';

  @override
  String get unlockPin => 'Oplåsnings-PIN';

  @override
  String get recoveryPassword => 'Recovery Lock-adgangskode';

  @override
  String get bypassCode => 'Aktiveringslås-omgåelseskode';

  @override
  String get noSecretsFound => 'Ingen secrets tilgængelige for denne enhed.';

  @override
  String get secretCopied => 'Secret kopieret til udklipsholder';

  @override
  String get threats => 'Trusler';

  @override
  String get noThreatsFound => 'Ingen trusler registreret.';

  @override
  String get vulnerabilities => 'Sårbarheder';

  @override
  String get noVulnerabilitiesFound => 'Ingen sårbarheder registreret.';

  @override
  String get aboutApp => 'Om FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot er en open source MDM-administrationsapp til Apple-enhedsflåder.';

  @override
  String get tapToCopy => 'Tryk for at kopiere';

  @override
  String get devices => 'Enheder';

  @override
  String get severity => 'Alvorlighed';

  @override
  String get tabLocation => 'Placering';

  @override
  String get locationNotAvailable =>
      'Placeringsdata er ikke tilgængelige for denne enhed.';

  @override
  String get enableLostModeHint =>
      'Aktiver Mistet-tilstand for at finde denne enhed.';

  @override
  String get lostModeEnabled => 'Mistet-tilstand aktiveret';

  @override
  String get noLibraryItemsFound => 'Ingen bibliotekselementer fundet.';

  @override
  String get licenses => 'Licenser';

  @override
  String get lostModeMessage => 'Mistet-tilstand-besked';

  @override
  String get lostModePhone => 'Telefonnummer';

  @override
  String get lostModeFootnote =>
      'Valgfri besked og telefonnummer vist på enheden';

  @override
  String get supervised => 'Overvåget';

  @override
  String get unsupervised => 'Ikke overvåget';

  @override
  String get filterSupervised => 'Overvåget';

  @override
  String get filterUnsupervised => 'Ikke overvåget';

  @override
  String get language => 'Sprog';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get actionDisableLostMode => 'Deaktiver Mistet-tilstand';

  @override
  String get actionClearPasscode => 'Ryd adgangskode';

  @override
  String get filterLostMode => 'Mistet-tilstand';

  @override
  String get lostMode => 'Mistet-tilstand';

  @override
  String get sectionManagement => 'Administration';

  @override
  String get sectionStatus => 'Status';

  @override
  String get statusMissing => 'Mangler';

  @override
  String get statusRemoved => 'Fjernet';

  @override
  String get agent => 'Agent';

  @override
  String get identifier => 'Identifikator';

  @override
  String get processor => 'Processor';

  @override
  String get hardwareUuid => 'Hardware-UUID';

  @override
  String get devicePosture => 'Enhedsstatus';

  @override
  String get unknownDevice => 'Ukendt enhed';

  @override
  String get securityAppLock => 'App-lås';

  @override
  String get securityAppLockDescription =>
      'Indstil en 6-cifret PIN for at beskytte appen. Biometrisk godkendelse kan aktiveres efter at en PIN er sat.';

  @override
  String get securityAppLockActive => 'App-lås aktiveret';

  @override
  String get securityAppLockInactive => 'Ingen app-lås konfigureret';

  @override
  String get securitySetPin => 'Indstil PIN';

  @override
  String get securityChangePin => 'Skift PIN';

  @override
  String get securityRemovePin => 'Fjern PIN';

  @override
  String get securityCurrentPin => 'Nuværende PIN';

  @override
  String get securityNewPin => 'Ny PIN';

  @override
  String get securityConfirmPin => 'Indtast PIN igen for at bekræfte.';

  @override
  String get securityPinLength => 'PIN skal være 6 cifre.';

  @override
  String get securityPinMismatch => 'PIN-koderne stemmer ikke overens.';

  @override
  String get securityPinWrong => 'Forkert PIN.';

  @override
  String get securityPinSet => 'PIN er indstillet.';

  @override
  String get securityPinChanged => 'PIN er ændret.';

  @override
  String get securityPinRemoved => 'PIN og app-lås er fjernet.';

  @override
  String get securityBiometric => 'Biometri';

  @override
  String get securityBiometricDescription =>
      'Brug fingeraftryk eller ansigtsgenkendelse til at låse appen op i stedet for PIN.';

  @override
  String get securityBiometricEnable => 'Biometrisk oplåsning';

  @override
  String get securityBiometricActive => 'Aktiv';

  @override
  String get securityBiometricInactive => 'Inaktiv';

  @override
  String get securityBiometricUnavailable =>
      'Biometrisk godkendelse er ikke tilgængelig på denne enhed.';

  @override
  String get securityNext => 'Næste';

  @override
  String get actionRenewMdm => 'Forny MDM-profil';

  @override
  String get actionSetName => 'Indstil enhedsnavn';

  @override
  String get actionSetNameHint => 'Indtast nyt enhedsnavn';

  @override
  String get actionDeleteUser => 'Slet bruger';

  @override
  String get actionDeleteUserName => 'Brugernavn';

  @override
  String get actionDeleteAllUsers => 'Slet alle brugere';

  @override
  String get actionForceDeletion => 'Gennemtving sletning';

  @override
  String get actionUnlockAccount => 'Lås konto op';

  @override
  String get actionPlayLostModeSound => 'Afspil Mistet-tilstand-lyd';

  @override
  String get actionUpdateLocation => 'Opdater placering';

  @override
  String get erasePin => '6-cifret PIN';

  @override
  String get erasePinHint => 'Påkrævet for mobile enheder';

  @override
  String get erasePreserveDataPlan => 'Bevar dataplan';

  @override
  String get eraseDisallowProximitySetup => 'Forbyd nærhedskonfiguration';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Låsebesked';

  @override
  String get lockPhone => 'Telefonnummer';

  @override
  String get restartRebuildKernelCache => 'Genopbyg kernel-cache';

  @override
  String get restartNotifyUser => 'Underret bruger';

  @override
  String get actionRemoteDesktop => 'Fjernskrivebord';

  @override
  String get tabNotes => 'Noter';

  @override
  String get noNotesFound => 'Ingen noter endnu';

  @override
  String get addNote => 'Tilføj note';

  @override
  String get editNote => 'Rediger note';

  @override
  String get deleteNote => 'Slet note';

  @override
  String get deleteNoteConfirm => 'Vil du virkelig slette denne note?';

  @override
  String get noteContent => 'Noteindhold';

  @override
  String get noteSaved => 'Note gemt.';

  @override
  String get noteDeleted => 'Note slettet.';

  @override
  String get editDevice => 'Rediger enhed';

  @override
  String get deviceUpdated => 'Enhed opdateret.';

  @override
  String get deleteDevice => 'Slet enhed';

  @override
  String get deleteDeviceConfirm =>
      'Enheden fjernes permanent fra MDM. Denne handling kan ikke fortrydes.';

  @override
  String get deviceDeleted => 'Enhed slettet.';

  @override
  String get cancelLostMode => 'Annuller Mistet-tilstand';

  @override
  String get cancelLostModeConfirm =>
      'Annuller den afventende Mistet-tilstand-anmodning?';

  @override
  String get lostModeCancelled => 'Mistet-tilstand annulleret.';

  @override
  String get tags => 'Tags';

  @override
  String get noTags => 'Ingen tags';

  @override
  String get addTag => 'Tilføj tag';

  @override
  String get tagName => 'Tag-navn';

  @override
  String get manageTags => 'Administrer tags';

  @override
  String get auditLog => 'Revisionslog';

  @override
  String get noAuditEvents => 'Ingen revisionshændelser fundet';

  @override
  String get actionDailyCheckIn => 'Dagligt check-in';

  @override
  String get licensing => 'Licensering';

  @override
  String get deviceLimit => 'Enhedsgrænse';

  @override
  String get devicesUsed => 'Enheder brugt';

  @override
  String get licenseType => 'Licenstype';

  @override
  String get appleDevices => 'Apple-enheder';

  @override
  String get deleteUser => 'Slet bruger';

  @override
  String get deleteUserConfirm =>
      'Vil du virkelig slette denne bruger? Denne handling kan ikke fortrydes.';

  @override
  String get userDeleted => 'Bruger slettet.';

  @override
  String get createBlueprint => 'Opret Blueprint';

  @override
  String get editBlueprint => 'Rediger Blueprint';

  @override
  String get deleteBlueprint => 'Slet Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Sletning af denne Blueprint vil afmelde alle tildelte enheder. Denne handling kan ikke fortrydes.';

  @override
  String get blueprintCreated => 'Blueprint oprettet.';

  @override
  String get blueprintUpdated => 'Blueprint opdateret.';

  @override
  String get blueprintDeleted => 'Blueprint slettet.';

  @override
  String get blueprintName => 'Blueprint-navn';

  @override
  String get blueprintDescription => 'Beskrivelse';

  @override
  String get enrollmentCode => 'Registreringskode';

  @override
  String get assignLibraryItem => 'Tildel bibliotekselement';

  @override
  String get removeLibraryItem => 'Fjern bibliotekselement';

  @override
  String get libraryItemAssigned => 'Bibliotekselement tildelt.';

  @override
  String get libraryItemRemoved => 'Bibliotekselement fjernet.';

  @override
  String get lostModeDetails => 'Mistet-tilstand-detaljer';

  @override
  String get lostModeEnabledBy => 'Aktiveret af';

  @override
  String get lostModeEnabledAt => 'Aktiveret den';

  @override
  String get searchBlueprints => 'Søg Blueprints...';

  @override
  String get searchVulnerabilities => 'Søg sårbarheder...';

  @override
  String get searchThreats => 'Søg trusler...';

  @override
  String get searchAuditLog => 'Søg revisionslog...';

  @override
  String get filterCritical => 'Kritisk';

  @override
  String get filterHigh => 'Høj';

  @override
  String get filterMedium => 'Middel';

  @override
  String get filterLow => 'Lav';

  @override
  String get filterClearAll => 'Ryd alle';

  @override
  String get filterTitle => 'Filter';

  @override
  String get filterApply => 'Anvend';

  @override
  String get filterPlatform => 'Platform';

  @override
  String get filterSupervision => 'Overvågning';

  @override
  String get filterStatus => 'Status';

  @override
  String get adeIntegrations => 'ADE-integrationer';

  @override
  String get noAdeIntegrations => 'Ingen ADE-integrationer fundet.';

  @override
  String get adeDevices => 'ADE-enheder';

  @override
  String get noAdeDevices => 'Ingen ADE-enheder fundet.';

  @override
  String get tokenExpiry => 'Token-udløb';

  @override
  String get tokenValid => 'Token gyldigt';

  @override
  String get tokenExpired => 'Token udløbet';

  @override
  String get orgName => 'Organisation';

  @override
  String get defaultBlueprint => 'Standard-Blueprint';

  @override
  String get renewToken => 'Forny token';

  @override
  String get publicKey => 'Offentlig nøgle';

  @override
  String get vulnerabilityDetections => 'Sårbarhedsdetektioner';

  @override
  String get noDetectionsFound => 'Ingen detektioner fundet.';

  @override
  String get behavioralDetections => 'Adfærdsdetektioner';

  @override
  String get noBehavioralDetections => 'Ingen adfærdsdetektioner fundet.';

  @override
  String get searchBehavioralDetections => 'Søg detektioner...';

  @override
  String get affectedDevices => 'Berørte enheder';

  @override
  String get noAffectedDevices =>
      'Ingen berørte enheder fundet. Tidligere berørte enheder kan være blevet fjernet.';

  @override
  String get affectedSoftware => 'Berørt software';

  @override
  String get blueprintTemplates => 'Blueprint-skabeloner';

  @override
  String get noTemplatesFound => 'Ingen skabeloner fundet.';

  @override
  String get otaEnrollmentProfile => 'OTA-registreringsprofil';

  @override
  String get libraryItemActivity => 'Aktivitet';

  @override
  String get libraryItemDeploymentStatus => 'Udrulningsstatus';

  @override
  String get noActivityFound2 => 'Ingen aktivitet fundet.';

  @override
  String get noStatusFound => 'Ingen udrulningsstatus fundet.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detektioner',
      one: '1 detektion',
      zero: 'Ingen detektioner',
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
      zero: 'Ingen integrationer',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Sårbarhedsdetaljer';

  @override
  String get description => 'Beskrivelse';

  @override
  String get firstDetected => 'Første detektion';

  @override
  String get lastDetected => 'Seneste detektion';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count software',
      one: '1 software',
      zero: 'Ingen software',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Rediger integration';

  @override
  String get deleteIntegration => 'Slet integration';

  @override
  String get deleteIntegrationConfirm =>
      'Er du sikker på, at du vil slette denne ADE-integration? Dette kan ikke fortrydes.';

  @override
  String get integrationDeleted => 'Integration slettet.';

  @override
  String get integrationUpdated => 'Integration opdateret.';

  @override
  String get defaultBlueprintId => 'Standard-Blueprint-ID';

  @override
  String get phone => 'Telefon';

  @override
  String get downloadOtaProfile => 'Download registreringsprofil';

  @override
  String get otaProfileCopied =>
      'Registreringsprofil kopieret til udklipsholder.';

  @override
  String get noOtaProfile => 'Ingen registreringsprofil tilgængelig.';

  @override
  String get createTag => 'Opret tag';

  @override
  String get editTag => 'Rediger tag';

  @override
  String get deleteTag => 'Slet tag';

  @override
  String get deleteTagConfirm => 'Er du sikker på, at du vil slette dette tag?';

  @override
  String get tagColor => 'Farve';

  @override
  String get tagCreated => 'Tag oprettet.';

  @override
  String get tagUpdated => 'Tag opdateret.';

  @override
  String get tagDeleted => 'Tag slettet.';

  @override
  String get noTagsFound => 'Ingen tags fundet.';

  @override
  String get libraryItemDetail => 'Bibliotekselement';

  @override
  String get viewActivity => 'Vis aktivitet';

  @override
  String get viewStatus => 'Vis status';

  @override
  String get installations => 'Installationer';

  @override
  String get createAdeIntegration => 'Opret ADE-integration';

  @override
  String get adeCreateDescription =>
      'Upload en server-token-fil (.p7m) fra Apple Business Manager for at oprette en ny ADE-integration.';

  @override
  String get selectTokenFile => 'Vælg token-fil';

  @override
  String tokenFileSelected(String name) {
    return 'Token-fil: $name';
  }

  @override
  String get noTokenFileSelected => 'Ingen token-fil valgt';

  @override
  String get integrationCreated => 'Integration oprettet.';

  @override
  String get create => 'Opret';

  @override
  String get step1GetPublicKey => 'Trin 1: Download offentlig nøgle';

  @override
  String get step1Description =>
      'Kopier den offentlige nøgle og upload den i Apple Business Manager.';

  @override
  String get step2UploadToken => 'Trin 2: Upload server-token';

  @override
  String get step2Description =>
      'Vælg .p7m token-filen, du har downloadet fra Apple.';

  @override
  String get step3Configure => 'Trin 3: Konfigurer';

  @override
  String get publicKeyCopied => 'Offentlig nøgle kopieret til udklipsholder.';

  @override
  String get renewTokenDescription =>
      'Upload en ny .p7m token-fil for at forny tokenet for denne integration.';

  @override
  String get tokenRenewed => 'Token fornyet.';

  @override
  String get aboutLinks => 'Links';

  @override
  String get aboutWebsite => 'Hjemmeside';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Kildekode';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Teknologi';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'State Management';

  @override
  String get aboutArchitecture => 'Arkitektur';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Dataklasser';

  @override
  String get aboutNavigationLabel => 'Navigation';

  @override
  String get aboutOpenSourceLicenses => 'Open source-licenser';

  @override
  String get aboutShowHide => 'Skift synlighed';

  @override
  String get editProfileTitle => 'Rediger forbindelse';

  @override
  String get editProfileSubtitle =>
      'Opdater dine tenant-forbindelsesindstillinger.';

  @override
  String get apiTokenHintEdit =>
      'Lad stå tomt for at beholde eksisterende token';

  @override
  String get profileUpdated => 'Profil opdateret.';

  @override
  String profileSwitched(String name) {
    return 'Skiftet til $name.';
  }

  @override
  String get securityAutoLock => 'Automatisk lås';

  @override
  String get securityAutoLockDescription =>
      'Kræv automatisk godkendelse, efter appen har været i baggrunden.';

  @override
  String get timeoutImmediately => 'Med det samme';

  @override
  String get timeoutSeconds30 => 'Efter 30 sekunder';

  @override
  String get timeoutSeconds60 => 'Efter 1 minut';

  @override
  String get timeoutSeconds120 => 'Efter 2 minutter';

  @override
  String get timeoutMinutes5 => 'Efter 5 minutter';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Ingen Blueprint';

  @override
  String get presetSaveFilter => 'Gem filterforudindstilling';

  @override
  String get presetLoad => 'Indlæs forudindstilling';

  @override
  String get presetName => 'Forudindstillingsnavn';

  @override
  String get presetNameHint => 'f.eks. Ikke-overvågede Mac\'er';

  @override
  String get presetSaved => 'Filterforudindstilling gemt.';

  @override
  String get presetDeleted => 'Filterforudindstilling slettet.';

  @override
  String presetApplied(String name) {
    return 'Forudindstilling \"$name\" anvendt.';
  }

  @override
  String get presetNoPresets => 'Ingen gemte forudindstillinger';

  @override
  String get presetNoPresetsMessage =>
      'Gem dine nuværende filtre som en forudindstilling for hurtig adgang.';

  @override
  String get presetDeleteConfirm => 'Slet denne forudindstilling?';

  @override
  String get presetNameRequired =>
      'Angiv venligst et navn til forudindstillingen.';

  @override
  String selectedCount(int count) {
    return '$count valgt';
  }

  @override
  String get selectAll => 'Vælg alle';

  @override
  String get deselectAll => 'Fravælg alle';

  @override
  String get bulkActions => 'Handlinger';

  @override
  String bulkActionsTitle(int count) {
    return 'Handlinger for $count enheder';
  }

  @override
  String get bulkActionAssignTag => 'Tildel tag';

  @override
  String get bulkActionAssignTagDescription =>
      'Tilføj et tag til alle valgte enheder';

  @override
  String get bulkActionAssignBlueprint => 'Tildel Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Flyt valgte enheder til en Blueprint';

  @override
  String get bulkActionLock => 'Lås enheder';

  @override
  String get bulkActionLockDescription => 'Fjernlås alle valgte enheder';

  @override
  String get bulkActionRestart => 'Genstart enheder';

  @override
  String get bulkActionRestartDescription => 'Genstart alle valgte enheder';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Vil du virkelig genstarte $count enheder?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Handling gennemført på $count enheder.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Gennemført på $success enheder, $failed mislykkedes.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed af $total gennemført';
  }

  @override
  String get biometricReasonBulkAction =>
      'Godkend for at udføre massehandlingen';

  @override
  String get lockPin => 'Låse-PIN (valgfri)';

  @override
  String get noTagsAvailable =>
      'Ingen tags tilgængelige. Opret tags i MDM-webkonsollen.';

  @override
  String get noBlueprintsAvailable => 'Ingen Blueprints tilgængelige.';

  @override
  String get selectADevice => 'Vælg enhed';

  @override
  String get selectABlueprint => 'Vælg Blueprint';

  @override
  String get clearSearch => 'Ryd søgning';

  @override
  String get refresh => 'Opdater';

  @override
  String get moreActions => 'Flere handlinger';

  @override
  String get close => 'Luk';

  @override
  String get onboardingSkip => 'Spring over';

  @override
  String get onboardingNext => 'Næste';

  @override
  String get onboardingGetStarted => 'Kom i gang';

  @override
  String get onboardingWelcomeTitle => 'Velkommen til FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Dit mobile kommandocenter til Apple-enhedsflådeadministration. Overvåg, administrer og sikr hele din flåde overalt fra.';

  @override
  String get onboardingDevicesTitle => 'Enhedsadministration';

  @override
  String get onboardingDevicesSubtitle =>
      'Fuld gennemsigtighed og kontrol over hver enhed i din flåde.';

  @override
  String get onboardingDevicesFeature1 =>
      'Se alle registrerede iPhones, iPads, Mac\'er og Apple TV\'er';

  @override
  String get onboardingDevicesFeature2 =>
      'Send fjernkommandoer: Lås, Genstart, Slet og mere';

  @override
  String get onboardingDevicesFeature3 =>
      'Spor Blueprints, apps og overholdelsesstatus';

  @override
  String get onboardingSecurityTitle => 'Bygget til sikkerhed';

  @override
  String get onboardingSecuritySubtitle =>
      'Dine flådedata forbliver beskyttet med flere sikkerhedslag.';

  @override
  String get onboardingSecurityFeature1 =>
      'Biometrisk godkendelse med Face ID eller fingeraftryk';

  @override
  String get onboardingSecurityFeature2 => '6-cifret PIN-lås til app-adgang';

  @override
  String get onboardingSecurityFeature3 =>
      'Automatisk sessionslås efter timeout';

  @override
  String get onboardingReadyTitle => 'Klar til start';

  @override
  String get onboardingReadySubtitle =>
      'Forbind din MDM-tenant for at begynde at administrere din Apple-enhedsflåde. Næste trin er at opsætte din API-forbindelse og sikkerheds-PIN.';

  @override
  String get searchTags => 'Søg tags';

  @override
  String tagDeviceCount(int count) {
    return '$count enheder';
  }

  @override
  String get sortTitle => 'Sortering';

  @override
  String get sortDirection => 'Sorteringsretning';

  @override
  String get ascending => 'Stigende';

  @override
  String get descending => 'Faldende';

  @override
  String get filterSeverity => 'Alvorlighed';

  @override
  String get filterSort => 'Filtrer & Sorter';

  @override
  String get statusQuarantined => 'Karantæne';

  @override
  String get statusNotQuarantined => 'Ikke isoleret';

  @override
  String get statusDetected => 'Registreret';

  @override
  String get statusReleased => 'Frigivet';

  @override
  String get severityCritical => 'Kritisk';

  @override
  String get severityHigh => 'Høj';

  @override
  String get severityMedium => 'Middel';

  @override
  String get severityLow => 'Lav';

  @override
  String threatCount(int count) {
    return '$count trusler';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count detektioner';
  }

  @override
  String get downloadPublicKey => 'Download';

  @override
  String get publicKeySaved => 'Offentlig nøgle gemt';

  @override
  String get sortBy => 'Sorter efter';

  @override
  String get sortByCvss => 'CVSS-score';

  @override
  String get sortByDeviceCount => 'Berørte enheder';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count sårbarheder';
  }

  @override
  String get assignTags => 'Tags';

  @override
  String get noTagsAvailableMessage =>
      'Ingen tags tilgængelige. Opret tags først.';

  @override
  String get failedToLoadTags => 'Tags kunne ikke indlæses';

  @override
  String get details => 'Detaljer';

  @override
  String get searchLibraryItems => 'Søg bibliotekselementer...';

  @override
  String get categoryCustomScript => 'Brugerdefineret script';

  @override
  String get categoryCustomApp => 'Brugerdefineret app';

  @override
  String get categoryCustomProfile => 'Brugerdefineret profil';

  @override
  String get categoryInHouseApp => 'In-House app';

  @override
  String get categoryBuiltIn => 'Indbygget';

  @override
  String get categoryVppApps => 'VPP / App Store-apps';

  @override
  String get categoryManagedProfiles => 'Administrerede profiler';

  @override
  String get categoryKandjiSetup => 'MDM-opsætning';

  @override
  String get categoryMacosRelease => 'macOS-opdateringer';

  @override
  String get categoryThreatPolicy => 'Sikkerhedspolitikker';

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
  String get executionFrequencyOnce => 'Én gang';

  @override
  String get executionFrequencyEvery15Min => 'Hver 15. minut';

  @override
  String get executionFrequencyEveryDay => 'Dagligt';

  @override
  String get executionFrequencyNoEnforcement => 'Ingen håndhævelse';

  @override
  String get scriptBody => 'Script';

  @override
  String get remediationScript => 'Afhjælpningsscript';

  @override
  String get allProperties => 'Alle egenskaber';

  @override
  String get builtInLibraryItem => 'Indbygget bibliotekselement';

  @override
  String get builtInDetailsHint => 'Detaljer tilgængelige under fanen Status';

  @override
  String get active => 'Aktiv';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nej';

  @override
  String get execution => 'Udførelse';

  @override
  String get restart => 'Genstart';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Installationstype';

  @override
  String get enforcement => 'Håndhævelse';

  @override
  String get runsOnMac => 'Kører på Mac';

  @override
  String get runsOnIphone => 'Kører på iPhone';

  @override
  String get runsOnIpad => 'Kører på iPad';

  @override
  String get appName => 'App-navn';

  @override
  String get appVersion => 'App-version';

  @override
  String get minOsVersion => 'Min. OS-version';

  @override
  String get created => 'Oprettet';

  @override
  String get updated => 'Opdateret';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementer',
      one: '1 element',
      zero: 'Ingen elementer',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Løst';

  @override
  String get severityInformational => 'Informativ';

  @override
  String get managementState => 'Administrationsstatus';

  @override
  String get managementStateOpen => 'Åben';

  @override
  String get managementStateClosed => 'Lukket';

  @override
  String get classificationMalware => 'Malware';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Mistænkelig';

  @override
  String get classificationMal => 'Skadelig';

  @override
  String get blueprintRouting => 'Blueprint-routing';

  @override
  String get blueprintRoutingDesc =>
      'Registreringskode og routing til manuel / Android Work Profile-registrering';

  @override
  String get blueprintRoutingNotConfigured =>
      'Blueprint-routing er ikke konfigureret for denne tenant.';

  @override
  String get enrollmentCodeActive => 'Aktiv';

  @override
  String get enrollmentCodeInactive => 'Inaktiv';

  @override
  String get routingActivity => 'Routing-aktivitet';

  @override
  String get noRoutingActivity => 'Ingen routing-aktivitet fundet.';

  @override
  String get selfServiceCategories => 'Self-Service-kategorier';

  @override
  String get selfServiceDesc =>
      'Administrer Self-Service-kategorier for dine brugere';

  @override
  String get addCategory => 'Tilføj kategori';

  @override
  String get categoryName => 'Kategorinavn';

  @override
  String get deleteCategory => 'Slet kategori';

  @override
  String get deleteCategoryConfirm => 'Vil du virkelig slette denne kategori?';

  @override
  String get noCategoriesFound => 'Ingen kategorier fundet.';

  @override
  String get categoryCreated => 'Kategori oprettet';

  @override
  String get categoryDeleted => 'Kategori slettet';

  @override
  String get profileBody => 'Profil-XML';

  @override
  String get customProfile => 'Brugerdefineret profil';

  @override
  String get classification => 'Klassificering';

  @override
  String get mdmEnabled => 'MDM aktiveret';

  @override
  String get enrolledViaDep => 'Registreret via DEP';

  @override
  String get userApprovedMdm => 'Brugergodkendt MDM';

  @override
  String get network => 'Netværk';

  @override
  String get ipAddress => 'IP-adresse';

  @override
  String get wifiNetwork => 'Wi-Fi-netværk';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Aktiveringslås';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Udviklertilstand';

  @override
  String get adbEnabled => 'ADB aktiveret';

  @override
  String get unknownSources => 'Ukendte kilder';

  @override
  String get securityPatch => 'Sikkerhedsopdatering';

  @override
  String get provisioningUdid => 'Provisioning UDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM-info';

  @override
  String get lastEnrollment => 'Seneste registrering';

  @override
  String get enterpriseId => 'Enterprise-ID';

  @override
  String get manufacturer => 'Producent';

  @override
  String get generalStatus => 'Generel status';

  @override
  String get apiLevel => 'API-niveau';

  @override
  String get userApprovedEnrollment => 'Brugergodkendt registrering';

  @override
  String get hostname => 'Værtsnavn';

  @override
  String get macAddress => 'MAC-adresse';

  @override
  String get publicIp => 'Offentlig IP';

  @override
  String get volumes => 'Volumes';

  @override
  String volumeUsed(String percent) {
    return '$percent% brugt';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available ledig af $total';
  }

  @override
  String get encrypted => 'Krypteret';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores kerner';
  }

  @override
  String processors(String count) {
    return '$count processorer';
  }

  @override
  String get batteryLevel => 'Batteriniveau';

  @override
  String get lastUser => 'Seneste bruger';

  @override
  String get bootVolume => 'Startvolume';

  @override
  String get localUsers => 'Lokale brugere';

  @override
  String get regularUsers => 'Standardbrugere';

  @override
  String get systemUsers => 'Systembrugere';

  @override
  String get admin => 'Admin';

  @override
  String get assignToBlueprint => 'Tildel Blueprint';

  @override
  String get installOnDevice => 'Installer på enhed';

  @override
  String get selectBlueprint => 'Vælg Blueprint';

  @override
  String get selectDevice => 'Vælg enhed';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'VPP-licenser';

  @override
  String get fileName => 'Filnavn';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Aktiveringslås';

  @override
  String get prismCategoryApps => 'Applikationer';

  @override
  String get prismCategoryApplicationFirewall => 'Applikationsfirewall';

  @override
  String get prismCategoryCellular => 'Mobilnet';

  @override
  String get prismCategoryCertificates => 'Certifikater';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Skrivebord & Pauseskærm';

  @override
  String get prismCategoryDeviceInformation => 'Enhedsoplysninger';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper & XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Installerede profiler';

  @override
  String get prismCategoryKernelExtensions => 'Kernel Extensions';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents & Daemons';

  @override
  String get prismCategoryLocalUsers => 'Lokale brugere';

  @override
  String get prismCategoryStartupSettings => 'Startindstillinger';

  @override
  String get prismCategorySystemExtensions => 'Systemudvidelser';

  @override
  String get prismCategoryTransparencyDatabase => 'Gennemsigtighedsdatabase';

  @override
  String prismRecords(int count) {
    return '$count poster';
  }

  @override
  String get prismNoData => 'Ingen data tilgængelige for denne kategori.';

  @override
  String get prismExport => 'Eksporter CSV';

  @override
  String get prismExportRequested =>
      'Eksport anmodet. Download-linket vil snart være tilgængeligt.';

  @override
  String get prismFilterByFamily => 'Enhedsfamilie';

  @override
  String get prismAllFamilies => 'Alle familier';

  @override
  String get appearance => 'Udseende';

  @override
  String get themeMode => 'Tema';

  @override
  String get themeModeSystem => 'System';

  @override
  String get themeModeLight => 'Lyst';

  @override
  String get themeModeDark => 'Mørkt';

  @override
  String get shortTypeScript => 'Script';

  @override
  String get shortTypeCustom => 'Tilpasset';

  @override
  String get shortTypeProfile => 'Profil';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Administreret';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Sikkerhed';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'OS-opdateringer';

  @override
  String get categoryAutoApps => 'Auto-apps';

  @override
  String get autoApp => 'Auto-app';

  @override
  String get fileSize => 'Filstørrelse';

  @override
  String get unzipLocation => 'Udpakningsplacering';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Fil opdateret';

  @override
  String get mdmIdentifier => 'MDM-identifikator';

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
