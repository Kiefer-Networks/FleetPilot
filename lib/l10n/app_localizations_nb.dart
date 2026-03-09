// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Norwegian Bokmål (`nb`).
class AppLocalizationsNb extends AppLocalizations {
  AppLocalizationsNb([String locale = 'nb']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Enheter';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Brukere';

  @override
  String get navSettings => 'Innstillinger';

  @override
  String get welcomeTitle => 'Velkommen til FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Administrer Apple-enhetsflåten din fra hvor som helst.';

  @override
  String get addProfile => 'Legg til profil';

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
  String get subdomain => 'Subdomene';

  @override
  String get subdomainHint => 'ditt-tenant';

  @override
  String get apiToken => 'API-token';

  @override
  String get apiTokenHint => 'Lim inn API-token her';

  @override
  String urlPreview(String url) {
    return 'API-URL: $url';
  }

  @override
  String get verifyAndSave => 'Bekreft & Lagre';

  @override
  String get verifying => 'Tilkobling bekreftes...';

  @override
  String get connectionSuccess => 'Tilkobling bekreftet!';

  @override
  String get errorInvalidToken =>
      'Ugyldig API-token. Vennligst kontroller tokenet ditt i webkonsollen.';

  @override
  String get errorInsufficientPermissions =>
      'Utilstrekkelige tillatelser. Sørg for at tokenet har lesetilgang til enheter.';

  @override
  String get errorNetworkUnreachable =>
      'API ikke tilgjengelig. Kontroller internettforbindelsen og subdomenet ditt.';

  @override
  String get errorNotFound => 'Den forespurte ressursen ble ikke funnet.';

  @override
  String get errorValidation =>
      'Forespørselen inneholdt ugyldige data. Vennligst kontroller inntastingen din.';

  @override
  String get errorRateLimit =>
      'For mange forespørsler. Vennligst vent et øyeblikk og prøv igjen.';

  @override
  String get errorServer =>
      'Serveren oppdaget en feil. Vennligst prøv igjen senere.';

  @override
  String get errorUnexpected =>
      'En uventet feil oppstod. Vennligst prøv igjen.';

  @override
  String get retry => 'Prøv igjen';

  @override
  String get cancel => 'Avbryt';

  @override
  String get delete => 'Slett';

  @override
  String get save => 'Lagre';

  @override
  String get search => 'Søk';

  @override
  String get searchDevices => 'Søk enheter...';

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
    return '$count enheter lastes inn...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count enheter',
      one: '1 enhet',
      zero: 'Ingen enheter',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Ingen enheter funnet';

  @override
  String get noDevicesFoundMessage => 'Juster søket eller filtrene dine.';

  @override
  String lastCheckIn(String time) {
    return 'Siste innsjekk: $time';
  }

  @override
  String get compliancePass => 'Bestått';

  @override
  String get complianceFail => 'Ikke bestått';

  @override
  String get compliancePending => 'Avventer';

  @override
  String get deviceDetails => 'Enhetsdetaljer';

  @override
  String get serialNumber => 'Serienummer';

  @override
  String get model => 'Modell';

  @override
  String get osVersion => 'OS-versjon';

  @override
  String get assetTag => 'Asset-tag';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Registrert';

  @override
  String get assignedUser => 'Tildelt bruker';

  @override
  String get actions => 'Handlinger';

  @override
  String get actionLock => 'Lås';

  @override
  String get actionRestart => 'Start på nytt';

  @override
  String get actionShutdown => 'Slå av';

  @override
  String get actionErase => 'Slett';

  @override
  String get actionBlankPush => 'Send Blank Push';

  @override
  String get actionReinstallAgent => 'Installer agent på nytt';

  @override
  String get actionUpdateInventory => 'Oppdater inventar';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Aktiver Fjernstyrt skrivebord';

  @override
  String get actionRemoteDesktopDisable => 'Deaktiver Fjernstyrt skrivebord';

  @override
  String get actionLostMode => 'Aktiver Tapt-modus';

  @override
  String get destructiveActionTitle => 'Bekreft destruktiv handling';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Denne handlingen kan ikke angres. Skriv inn \"$deviceName\" for å bekrefte.';
  }

  @override
  String get destructiveActionHint => 'Skriv inn enhetsnavn for å bekrefte';

  @override
  String get confirm => 'Bekreft';

  @override
  String get actionSuccess => 'Handling utført.';

  @override
  String get actionFailed => 'Handling mislyktes. Vennligst prøv igjen.';

  @override
  String get biometricReason => 'Autentiser for FleetPilot';

  @override
  String get biometricReasonSecrets => 'Autentiser for å se sensitive data';

  @override
  String get biometricReasonDestructive =>
      'Autentiser for å utføre denne handlingen';

  @override
  String get biometricFailed =>
      'Autentisering mislyktes. Vennligst prøv igjen.';

  @override
  String get profiles => 'Profiler';

  @override
  String activeProfile(String name) {
    return 'Aktiv: $name';
  }

  @override
  String get switchProfile => 'Bytt profil';

  @override
  String get deleteProfile => 'Slett profil';

  @override
  String get deleteProfileConfirm =>
      'Vil du virkelig slette denne profilen? Denne handlingen kan ikke angres.';

  @override
  String get noProfiles => 'Ingen profiler konfigurert';

  @override
  String get settings => 'Innstillinger';

  @override
  String get about => 'Om';

  @override
  String version(String version) {
    return 'Versjon $version';
  }

  @override
  String get validationRequired => 'Dette feltet er påkrevd.';

  @override
  String get validationSubdomain =>
      'Kun bokstaver, tall og bindestreker tillatt. Ingen ledende eller etterfølgende bindestreker.';

  @override
  String get validationToken =>
      'Ugyldig token-format. 20–500 tegn, kun alfanumeriske og vanlige skilletegn.';

  @override
  String pinLockedOut(int seconds) {
    return 'For mange mislykkede forsøk. Prøv igjen om $seconds sekunder.';
  }

  @override
  String get complianceStatus => 'Samsvarsstatus';

  @override
  String get platform => 'Plattform';

  @override
  String get deviceName => 'Enhetsnavn';

  @override
  String get searchUsers => 'Søk brukere...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count brukere',
      one: '1 bruker',
      zero: 'Ingen brukere',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Ingen brukere funnet';

  @override
  String get noUsersFoundMessage => 'Juster søket eller filtrene dine.';

  @override
  String get showArchived => 'Vis arkiverte';

  @override
  String get archived => 'Arkivert';

  @override
  String get email => 'E-post';

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
  String get noBlueprintsFound => 'Ingen Blueprints funnet';

  @override
  String get noBlueprintsFoundMessage =>
      'Ingen Blueprints er konfigurert ennå.';

  @override
  String get enrollmentActive => 'Registrering aktiv';

  @override
  String get enrollmentInactive => 'Registrering inaktiv';

  @override
  String get tabOverview => 'Oversikt';

  @override
  String get tabApps => 'Apper';

  @override
  String get tabStatus => 'Status';

  @override
  String get tabActivity => 'Aktivitet';

  @override
  String get tabCommands => 'Kommandoer';

  @override
  String get hardware => 'Maskinvare';

  @override
  String get security => 'Sikkerhet';

  @override
  String get totalStorage => 'Total lagring';

  @override
  String get availableStorage => 'Tilgjengelig lagring';

  @override
  String get totalRam => 'Totalt RAM';

  @override
  String get wifiMac => 'Wi-Fi MAC-adresse';

  @override
  String get encryption => 'Kryptering';

  @override
  String get passcode => 'Kode';

  @override
  String get noAppsFound => 'Ingen apper funnet';

  @override
  String get noActivityFound => 'Ingen aktivitet funnet';

  @override
  String get noCommandsFound => 'Ingen kommandoer funnet';

  @override
  String get libraryItems => 'Bibliotekselementer';

  @override
  String get parameters => 'Parametere';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'OS-build';

  @override
  String get cellular => 'Mobilnett';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apper',
      one: '1 app',
      zero: 'Ingen apper',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Brukerdetaljer';

  @override
  String get jobTitle => 'Stillingstittel';

  @override
  String get department => 'Avdeling';

  @override
  String get createdAt => 'Opprettet';

  @override
  String get updatedAt => 'Oppdatert';

  @override
  String get assignedDevices => 'Tildelte enheter';

  @override
  String get noAssignedDevices => 'Ingen enheter er tildelt denne brukeren.';

  @override
  String get userInfo => 'Brukerinfo';

  @override
  String get navMore => 'Mer';

  @override
  String get tabSecrets => 'Secrets';

  @override
  String get filevaultKey => 'FileVault-gjenopprettingsnøkkel';

  @override
  String get unlockPin => 'Opplåsings-PIN';

  @override
  String get recoveryPassword => 'Recovery Lock-passord';

  @override
  String get bypassCode => 'Aktiveringslås-omgåelseskode';

  @override
  String get noSecretsFound => 'Ingen secrets tilgjengelige for denne enheten.';

  @override
  String get secretCopied => 'Secret kopiert til utklippstavlen';

  @override
  String get threats => 'Trusler';

  @override
  String get noThreatsFound => 'Ingen trusler oppdaget.';

  @override
  String get vulnerabilities => 'Sårbarheter';

  @override
  String get noVulnerabilitiesFound => 'Ingen sårbarheter oppdaget.';

  @override
  String get aboutApp => 'Om FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot er en åpen kildekode MDM-administrasjonsapp for Apple-enhetsflåter.';

  @override
  String get tapToCopy => 'Trykk for å kopiere';

  @override
  String get devices => 'Enheter';

  @override
  String get severity => 'Alvorlighetsgrad';

  @override
  String get tabLocation => 'Plassering';

  @override
  String get locationNotAvailable =>
      'Plasseringsdata er ikke tilgjengelig for denne enheten.';

  @override
  String get enableLostModeHint =>
      'Aktiver Tapt-modus for å lokalisere denne enheten.';

  @override
  String get lostModeEnabled => 'Tapt-modus aktivert';

  @override
  String get noLibraryItemsFound => 'Ingen bibliotekselementer funnet.';

  @override
  String get licenses => 'Lisenser';

  @override
  String get lostModeMessage => 'Tapt-modus-melding';

  @override
  String get lostModePhone => 'Telefonnummer';

  @override
  String get lostModeFootnote =>
      'Valgfri melding og telefonnummer vist på enheten';

  @override
  String get supervised => 'Overvåket';

  @override
  String get unsupervised => 'Ikke overvåket';

  @override
  String get filterSupervised => 'Overvåket';

  @override
  String get filterUnsupervised => 'Ikke overvåket';

  @override
  String get language => 'Språk';

  @override
  String get languageSystem => 'Systemstandard';

  @override
  String get actionDisableLostMode => 'Deaktiver Tapt-modus';

  @override
  String get actionClearPasscode => 'Fjern kode';

  @override
  String get filterLostMode => 'Tapt-modus';

  @override
  String get lostMode => 'Tapt-modus';

  @override
  String get sectionManagement => 'Administrasjon';

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
  String get processor => 'Prosessor';

  @override
  String get hardwareUuid => 'Maskinvare-UUID';

  @override
  String get devicePosture => 'Enhetsstatus';

  @override
  String get unknownDevice => 'Ukjent enhet';

  @override
  String get securityAppLock => 'App-lås';

  @override
  String get securityAppLockDescription =>
      'Angi en 6-sifret PIN for å beskytte appen. Biometrisk autentisering kan aktiveres etter at en PIN er satt.';

  @override
  String get securityAppLockActive => 'App-lås aktivert';

  @override
  String get securityAppLockInactive => 'Ingen app-lås konfigurert';

  @override
  String get securitySetPin => 'Angi PIN';

  @override
  String get securityChangePin => 'Endre PIN';

  @override
  String get securityRemovePin => 'Fjern PIN';

  @override
  String get securityCurrentPin => 'Nåværende PIN';

  @override
  String get securityNewPin => 'Ny PIN';

  @override
  String get securityConfirmPin => 'Skriv inn PIN igjen for å bekrefte.';

  @override
  String get securityPinLength => 'PIN må være 6 siffer.';

  @override
  String get securityPinMismatch => 'PIN-kodene stemmer ikke overens.';

  @override
  String get securityPinWrong => 'Feil PIN.';

  @override
  String get securityPinSet => 'PIN er angitt.';

  @override
  String get securityPinChanged => 'PIN er endret.';

  @override
  String get securityPinRemoved => 'PIN og app-lås er fjernet.';

  @override
  String get securityBiometric => 'Biometri';

  @override
  String get securityBiometricDescription =>
      'Bruk fingeravtrykk eller ansiktsgjenkjenning for å låse opp appen i stedet for PIN.';

  @override
  String get securityBiometricEnable => 'Biometrisk opplåsing';

  @override
  String get securityBiometricActive => 'Aktiv';

  @override
  String get securityBiometricInactive => 'Inaktiv';

  @override
  String get securityBiometricUnavailable =>
      'Biometrisk autentisering er ikke tilgjengelig på denne enheten.';

  @override
  String get securityNext => 'Neste';

  @override
  String get actionRenewMdm => 'Forny MDM-profil';

  @override
  String get actionSetName => 'Angi enhetsnavn';

  @override
  String get actionSetNameHint => 'Skriv inn nytt enhetsnavn';

  @override
  String get actionDeleteUser => 'Slett bruker';

  @override
  String get actionDeleteUserName => 'Brukernavn';

  @override
  String get actionDeleteAllUsers => 'Slett alle brukere';

  @override
  String get actionForceDeletion => 'Tving sletting';

  @override
  String get actionUnlockAccount => 'Lås opp konto';

  @override
  String get actionPlayLostModeSound => 'Spill av Tapt-modus-lyd';

  @override
  String get actionUpdateLocation => 'Oppdater plassering';

  @override
  String get erasePin => '6-sifret PIN';

  @override
  String get erasePinHint => 'Påkrevd for mobile enheter';

  @override
  String get erasePreserveDataPlan => 'Behold dataplan';

  @override
  String get eraseDisallowProximitySetup => 'Forby nærhetskonfigurasjon';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Låsemelding';

  @override
  String get lockPhone => 'Telefonnummer';

  @override
  String get restartRebuildKernelCache => 'Gjenoppbygg kernel-hurtigbuffer';

  @override
  String get restartNotifyUser => 'Varsle bruker';

  @override
  String get actionRemoteDesktop => 'Fjernstyrt skrivebord';

  @override
  String get tabNotes => 'Notater';

  @override
  String get noNotesFound => 'Ingen notater ennå';

  @override
  String get addNote => 'Legg til notat';

  @override
  String get editNote => 'Rediger notat';

  @override
  String get deleteNote => 'Slett notat';

  @override
  String get deleteNoteConfirm => 'Vil du virkelig slette dette notatet?';

  @override
  String get noteContent => 'Notatinnhold';

  @override
  String get noteSaved => 'Notat lagret.';

  @override
  String get noteDeleted => 'Notat slettet.';

  @override
  String get editDevice => 'Rediger enhet';

  @override
  String get deviceUpdated => 'Enhet oppdatert.';

  @override
  String get deleteDevice => 'Slett enhet';

  @override
  String get deleteDeviceConfirm =>
      'Enheten fjernes permanent fra MDM. Denne handlingen kan ikke angres.';

  @override
  String get deviceDeleted => 'Enhet slettet.';

  @override
  String get cancelLostMode => 'Avbryt Tapt-modus';

  @override
  String get cancelLostModeConfirm =>
      'Avbryte den ventende Tapt-modus-forespørselen?';

  @override
  String get lostModeCancelled => 'Tapt-modus avbrutt.';

  @override
  String get tags => 'Tagger';

  @override
  String get noTags => 'Ingen tagger';

  @override
  String get addTag => 'Legg til tagg';

  @override
  String get tagName => 'Taggnavn';

  @override
  String get manageTags => 'Administrer tagger';

  @override
  String get auditLog => 'Revisjonslogg';

  @override
  String get noAuditEvents => 'Ingen revisjonshendelser funnet';

  @override
  String get actionDailyCheckIn => 'Daglig innsjekk';

  @override
  String get licensing => 'Lisensiering';

  @override
  String get deviceLimit => 'Enhetsgrense';

  @override
  String get devicesUsed => 'Enheter brukt';

  @override
  String get licenseType => 'Lisenstype';

  @override
  String get appleDevices => 'Apple-enheter';

  @override
  String get deleteUser => 'Slett bruker';

  @override
  String get deleteUserConfirm =>
      'Vil du virkelig slette denne brukeren? Denne handlingen kan ikke angres.';

  @override
  String get userDeleted => 'Bruker slettet.';

  @override
  String get createBlueprint => 'Opprett Blueprint';

  @override
  String get editBlueprint => 'Rediger Blueprint';

  @override
  String get deleteBlueprint => 'Slett Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Sletting av denne Blueprinten vil avregistrere alle tildelte enheter. Denne handlingen kan ikke angres.';

  @override
  String get blueprintCreated => 'Blueprint opprettet.';

  @override
  String get blueprintUpdated => 'Blueprint oppdatert.';

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
  String get lostModeDetails => 'Tapt-modus-detaljer';

  @override
  String get lostModeEnabledBy => 'Aktivert av';

  @override
  String get lostModeEnabledAt => 'Aktivert den';

  @override
  String get searchBlueprints => 'Søk Blueprints...';

  @override
  String get searchVulnerabilities => 'Søk sårbarheter...';

  @override
  String get searchThreats => 'Søk trusler...';

  @override
  String get searchAuditLog => 'Søk revisjonslogg...';

  @override
  String get filterCritical => 'Kritisk';

  @override
  String get filterHigh => 'Høy';

  @override
  String get filterMedium => 'Middels';

  @override
  String get filterLow => 'Lav';

  @override
  String get filterClearAll => 'Fjern alle';

  @override
  String get filterTitle => 'Filter';

  @override
  String get filterApply => 'Bruk';

  @override
  String get filterPlatform => 'Plattform';

  @override
  String get filterSupervision => 'Overvåking';

  @override
  String get filterStatus => 'Status';

  @override
  String get adeIntegrations => 'ADE-integrasjoner';

  @override
  String get noAdeIntegrations => 'Ingen ADE-integrasjoner funnet.';

  @override
  String get adeDevices => 'ADE-enheter';

  @override
  String get noAdeDevices => 'Ingen ADE-enheter funnet.';

  @override
  String get tokenExpiry => 'Token-utløp';

  @override
  String get tokenValid => 'Token gyldig';

  @override
  String get tokenExpired => 'Token utløpt';

  @override
  String get orgName => 'Organisasjon';

  @override
  String get defaultBlueprint => 'Standard-Blueprint';

  @override
  String get renewToken => 'Forny token';

  @override
  String get publicKey => 'Offentlig nøkkel';

  @override
  String get vulnerabilityDetections => 'Sårbarhetsfunn';

  @override
  String get noDetectionsFound => 'Ingen funn registrert.';

  @override
  String get behavioralDetections => 'Atferdsdeteksjoner';

  @override
  String get noBehavioralDetections => 'Ingen atferdsdeteksjoner funnet.';

  @override
  String get searchBehavioralDetections => 'Søk deteksjoner...';

  @override
  String get affectedDevices => 'Berørte enheter';

  @override
  String get noAffectedDevices =>
      'Ingen berørte enheter funnet. Tidligere berørte enheter kan ha blitt fjernet.';

  @override
  String get affectedSoftware => 'Berørt programvare';

  @override
  String get blueprintTemplates => 'Blueprint-maler';

  @override
  String get noTemplatesFound => 'Ingen maler funnet.';

  @override
  String get otaEnrollmentProfile => 'OTA-registreringsprofil';

  @override
  String get libraryItemActivity => 'Aktivitet';

  @override
  String get libraryItemDeploymentStatus => 'Distribusjonsstatus';

  @override
  String get noActivityFound2 => 'Ingen aktivitet funnet.';

  @override
  String get noStatusFound => 'Ingen distribusjonsstatus funnet.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count funn',
      one: '1 funn',
      zero: 'Ingen funn',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count integrasjoner',
      one: '1 integrasjon',
      zero: 'Ingen integrasjoner',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Sårbarhetsdetaljer';

  @override
  String get description => 'Beskrivelse';

  @override
  String get firstDetected => 'Først oppdaget';

  @override
  String get lastDetected => 'Sist oppdaget';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count programvare',
      one: '1 programvare',
      zero: 'Ingen programvare',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Rediger integrasjon';

  @override
  String get deleteIntegration => 'Slett integrasjon';

  @override
  String get deleteIntegrationConfirm =>
      'Er du sikker på at du vil slette denne ADE-integrasjonen? Dette kan ikke angres.';

  @override
  String get integrationDeleted => 'Integrasjon slettet.';

  @override
  String get integrationUpdated => 'Integrasjon oppdatert.';

  @override
  String get defaultBlueprintId => 'Standard-Blueprint-ID';

  @override
  String get phone => 'Telefon';

  @override
  String get downloadOtaProfile => 'Last ned registreringsprofil';

  @override
  String get otaProfileCopied =>
      'Registreringsprofil kopiert til utklippstavlen.';

  @override
  String get noOtaProfile => 'Ingen registreringsprofil tilgjengelig.';

  @override
  String get createTag => 'Opprett tagg';

  @override
  String get editTag => 'Rediger tagg';

  @override
  String get deleteTag => 'Slett tagg';

  @override
  String get deleteTagConfirm =>
      'Er du sikker på at du vil slette denne taggen?';

  @override
  String get tagColor => 'Farge';

  @override
  String get tagCreated => 'Tagg opprettet.';

  @override
  String get tagUpdated => 'Tagg oppdatert.';

  @override
  String get tagDeleted => 'Tagg slettet.';

  @override
  String get noTagsFound => 'Ingen tagger funnet.';

  @override
  String get libraryItemDetail => 'Bibliotekselement';

  @override
  String get viewActivity => 'Vis aktivitet';

  @override
  String get viewStatus => 'Vis status';

  @override
  String get installations => 'Installasjoner';

  @override
  String get createAdeIntegration => 'Opprett ADE-integrasjon';

  @override
  String get adeCreateDescription =>
      'Last opp en server-token-fil (.p7m) fra Apple Business Manager for å opprette en ny ADE-integrasjon.';

  @override
  String get selectTokenFile => 'Velg token-fil';

  @override
  String tokenFileSelected(String name) {
    return 'Token-fil: $name';
  }

  @override
  String get noTokenFileSelected => 'Ingen token-fil valgt';

  @override
  String get integrationCreated => 'Integrasjon opprettet.';

  @override
  String get create => 'Opprett';

  @override
  String get step1GetPublicKey => 'Trinn 1: Last ned offentlig nøkkel';

  @override
  String get step1Description =>
      'Kopier den offentlige nøkkelen og last den opp i Apple Business Manager.';

  @override
  String get step2UploadToken => 'Trinn 2: Last opp server-token';

  @override
  String get step2Description =>
      'Velg .p7m token-filen du har lastet ned fra Apple.';

  @override
  String get step3Configure => 'Trinn 3: Konfigurer';

  @override
  String get publicKeyCopied => 'Offentlig nøkkel kopiert til utklippstavlen.';

  @override
  String get renewTokenDescription =>
      'Last opp en ny .p7m token-fil for å fornye tokenet for denne integrasjonen.';

  @override
  String get tokenRenewed => 'Token fornyet.';

  @override
  String get aboutLinks => 'Lenker';

  @override
  String get aboutWebsite => 'Nettsted';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Kildekode';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Teknologi';

  @override
  String get aboutFramework => 'Rammeverk';

  @override
  String get aboutStateManagement => 'State Management';

  @override
  String get aboutArchitecture => 'Arkitektur';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Dataklasser';

  @override
  String get aboutNavigationLabel => 'Navigasjon';

  @override
  String get aboutOpenSourceLicenses => 'Åpen kildekode-lisenser';

  @override
  String get aboutShowHide => 'Bytt synlighet';

  @override
  String get editProfileTitle => 'Rediger tilkobling';

  @override
  String get editProfileSubtitle =>
      'Oppdater tenant-tilkoblingsinnstillingene dine.';

  @override
  String get apiTokenHintEdit => 'La stå tomt for å beholde eksisterende token';

  @override
  String get profileUpdated => 'Profil oppdatert.';

  @override
  String profileSwitched(String name) {
    return 'Byttet til $name.';
  }

  @override
  String get securityAutoLock => 'Automatisk lås';

  @override
  String get securityAutoLockDescription =>
      'Krev automatisk autentisering etter at appen har vært i bakgrunnen.';

  @override
  String get timeoutImmediately => 'Umiddelbart';

  @override
  String get timeoutSeconds30 => 'Etter 30 sekunder';

  @override
  String get timeoutSeconds60 => 'Etter 1 minutt';

  @override
  String get timeoutSeconds120 => 'Etter 2 minutter';

  @override
  String get timeoutMinutes5 => 'Etter 5 minutter';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Ingen Blueprint';

  @override
  String get presetSaveFilter => 'Lagre filterforhåndsinnstilling';

  @override
  String get presetLoad => 'Last forhåndsinnstilling';

  @override
  String get presetName => 'Forhåndsinnstillingsnavn';

  @override
  String get presetNameHint => 'f.eks. Ikke-overvåkede Mac-er';

  @override
  String get presetSaved => 'Filterforhåndsinnstilling lagret.';

  @override
  String get presetDeleted => 'Filterforhåndsinnstilling slettet.';

  @override
  String presetApplied(String name) {
    return 'Forhåndsinnstilling \"$name\" brukt.';
  }

  @override
  String get presetNoPresets => 'Ingen lagrede forhåndsinnstillinger';

  @override
  String get presetNoPresetsMessage =>
      'Lagre de nåværende filtrene dine som en forhåndsinnstilling for rask tilgang.';

  @override
  String get presetDeleteConfirm => 'Slette denne forhåndsinnstillingen?';

  @override
  String get presetNameRequired =>
      'Vennligst oppgi et navn for forhåndsinnstillingen.';

  @override
  String selectedCount(int count) {
    return '$count valgt';
  }

  @override
  String get selectAll => 'Velg alle';

  @override
  String get deselectAll => 'Opphev alle valg';

  @override
  String get bulkActions => 'Handlinger';

  @override
  String bulkActionsTitle(int count) {
    return 'Handlinger for $count enheter';
  }

  @override
  String get bulkActionAssignTag => 'Tildel tagg';

  @override
  String get bulkActionAssignTagDescription =>
      'Legg til en tagg på alle valgte enheter';

  @override
  String get bulkActionAssignBlueprint => 'Tildel Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Flytt valgte enheter til en Blueprint';

  @override
  String get bulkActionLock => 'Lås enheter';

  @override
  String get bulkActionLockDescription => 'Fjernlås alle valgte enheter';

  @override
  String get bulkActionRestart => 'Start enheter på nytt';

  @override
  String get bulkActionRestartDescription =>
      'Start alle valgte enheter på nytt';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Vil du virkelig starte $count enheter på nytt?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Handling fullført på $count enheter.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Fullført på $success enheter, $failed mislyktes.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed av $total fullført';
  }

  @override
  String get biometricReasonBulkAction =>
      'Autentiser for å utføre massehandlingen';

  @override
  String get lockPin => 'Låse-PIN (valgfri)';

  @override
  String get noTagsAvailable =>
      'Ingen tagger tilgjengelige. Opprett tagger i MDM-webkonsollen.';

  @override
  String get noBlueprintsAvailable => 'Ingen Blueprints tilgjengelige.';

  @override
  String get selectADevice => 'Velg enhet';

  @override
  String get selectABlueprint => 'Velg Blueprint';

  @override
  String get clearSearch => 'Fjern søk';

  @override
  String get refresh => 'Oppdater';

  @override
  String get moreActions => 'Flere handlinger';

  @override
  String get close => 'Lukk';

  @override
  String get onboardingSkip => 'Hopp over';

  @override
  String get onboardingNext => 'Neste';

  @override
  String get onboardingGetStarted => 'Kom i gang';

  @override
  String get onboardingWelcomeTitle => 'Velkommen til FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Ditt mobile kommandosenter for Apple-enhetsflåteadministrasjon. Overvåk, administrer og sikre hele flåten din fra hvor som helst.';

  @override
  String get onboardingDevicesTitle => 'Enhetsadministrasjon';

  @override
  String get onboardingDevicesSubtitle =>
      'Full innsikt og kontroll over hver enhet i flåten din.';

  @override
  String get onboardingDevicesFeature1 =>
      'Se alle registrerte iPhones, iPads, Mac-er og Apple TV-er';

  @override
  String get onboardingDevicesFeature2 =>
      'Send fjernkommandoer: Lås, Start på nytt, Slett og mer';

  @override
  String get onboardingDevicesFeature3 =>
      'Spor Blueprints, apper og samsvarsstatus';

  @override
  String get onboardingSecurityTitle => 'Bygget for sikkerhet';

  @override
  String get onboardingSecuritySubtitle =>
      'Flåtedataene dine forblir beskyttet med flere sikkerhetslag.';

  @override
  String get onboardingSecurityFeature1 =>
      'Biometrisk autentisering med Face ID eller fingeravtrykk';

  @override
  String get onboardingSecurityFeature2 => '6-sifret PIN-lås for app-tilgang';

  @override
  String get onboardingSecurityFeature3 =>
      'Automatisk sesjonslås etter tidsavbrudd';

  @override
  String get onboardingReadyTitle => 'Klar til start';

  @override
  String get onboardingReadySubtitle =>
      'Koble til MDM-tenanten din for å begynne å administrere Apple-enhetsflåten din. Neste trinn er å sette opp API-tilkoblingen og sikkerhets-PIN-en din.';

  @override
  String get searchTags => 'Søk tagger';

  @override
  String tagDeviceCount(int count) {
    return '$count enheter';
  }

  @override
  String get sortTitle => 'Sortering';

  @override
  String get sortDirection => 'Sorteringsretning';

  @override
  String get ascending => 'Stigende';

  @override
  String get descending => 'Synkende';

  @override
  String get filterSeverity => 'Alvorlighetsgrad';

  @override
  String get filterSort => 'Filtrer & Sorter';

  @override
  String get statusQuarantined => 'Karantene';

  @override
  String get statusNotQuarantined => 'Ikke isolert';

  @override
  String get statusDetected => 'Oppdaget';

  @override
  String get statusReleased => 'Frigitt';

  @override
  String get severityCritical => 'Kritisk';

  @override
  String get severityHigh => 'Høy';

  @override
  String get severityMedium => 'Middels';

  @override
  String get severityLow => 'Lav';

  @override
  String threatCount(int count) {
    return '$count trusler';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count deteksjoner';
  }

  @override
  String get downloadPublicKey => 'Last ned';

  @override
  String get publicKeySaved => 'Offentlig nøkkel lagret';

  @override
  String get sortBy => 'Sorter etter';

  @override
  String get sortByCvss => 'CVSS-poengsum';

  @override
  String get sortByDeviceCount => 'Berørte enheter';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count sårbarheter';
  }

  @override
  String get assignTags => 'Tagger';

  @override
  String get noTagsAvailableMessage =>
      'Ingen tagger tilgjengelige. Opprett tagger først.';

  @override
  String get failedToLoadTags => 'Kunne ikke laste tagger';

  @override
  String get details => 'Detaljer';

  @override
  String get searchLibraryItems => 'Søk bibliotekselementer...';

  @override
  String get categoryCustomScript => 'Egendefinert skript';

  @override
  String get categoryCustomApp => 'Egendefinert app';

  @override
  String get categoryCustomProfile => 'Egendefinert profil';

  @override
  String get categoryInHouseApp => 'In-House-app';

  @override
  String get categoryBuiltIn => 'Innebygd';

  @override
  String get categoryVppApps => 'VPP / App Store-apper';

  @override
  String get categoryManagedProfiles => 'Administrerte profiler';

  @override
  String get categoryKandjiSetup => 'MDM-oppsett';

  @override
  String get categoryMacosRelease => 'macOS-oppdateringer';

  @override
  String get categoryThreatPolicy => 'Sikkerhetspolicyer';

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
  String get executionFrequencyEvery15Min => 'Hvert 15. minutt';

  @override
  String get executionFrequencyEveryDay => 'Daglig';

  @override
  String get executionFrequencyNoEnforcement => 'Ingen håndhevelse';

  @override
  String get scriptBody => 'Skript';

  @override
  String get remediationScript => 'Utbedringsskript';

  @override
  String get allProperties => 'Alle egenskaper';

  @override
  String get builtInLibraryItem => 'Innebygd bibliotekselement';

  @override
  String get builtInDetailsHint => 'Detaljer tilgjengelige under fanen Status';

  @override
  String get active => 'Aktiv';

  @override
  String get yes => 'Ja';

  @override
  String get no => 'Nei';

  @override
  String get execution => 'Utførelse';

  @override
  String get restart => 'Omstart';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Installasjonstype';

  @override
  String get enforcement => 'Håndhevelse';

  @override
  String get runsOnMac => 'Kjører på Mac';

  @override
  String get runsOnIphone => 'Kjører på iPhone';

  @override
  String get runsOnIpad => 'Kjører på iPad';

  @override
  String get appName => 'App-navn';

  @override
  String get appVersion => 'App-versjon';

  @override
  String get minOsVersion => 'Min. OS-versjon';

  @override
  String get created => 'Opprettet';

  @override
  String get updated => 'Oppdatert';

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
  String get managementState => 'Administrasjonsstatus';

  @override
  String get managementStateOpen => 'Åpen';

  @override
  String get managementStateClosed => 'Lukket';

  @override
  String get classificationMalware => 'Skadelig programvare';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Mistenkelig';

  @override
  String get classificationMal => 'Skadelig';

  @override
  String get blueprintRouting => 'Blueprint-ruting';

  @override
  String get blueprintRoutingDesc =>
      'Registreringskode og ruting for manuell / Android Work Profile-registrering';

  @override
  String get blueprintRoutingNotConfigured =>
      'Blueprint-ruting er ikke konfigurert for denne tenanten.';

  @override
  String get enrollmentCodeActive => 'Aktiv';

  @override
  String get enrollmentCodeInactive => 'Inaktiv';

  @override
  String get routingActivity => 'Rutingaktivitet';

  @override
  String get noRoutingActivity => 'Ingen rutingaktivitet funnet.';

  @override
  String get selfServiceCategories => 'Self-Service-kategorier';

  @override
  String get selfServiceDesc =>
      'Administrer Self-Service-kategorier for brukerne dine';

  @override
  String get addCategory => 'Legg til kategori';

  @override
  String get categoryName => 'Kategorinavn';

  @override
  String get deleteCategory => 'Slett kategori';

  @override
  String get deleteCategoryConfirm =>
      'Vil du virkelig slette denne kategorien?';

  @override
  String get noCategoriesFound => 'Ingen kategorier funnet.';

  @override
  String get categoryCreated => 'Kategori opprettet';

  @override
  String get categoryDeleted => 'Kategori slettet';

  @override
  String get profileBody => 'Profil-XML';

  @override
  String get customProfile => 'Egendefinert profil';

  @override
  String get classification => 'Klassifisering';

  @override
  String get mdmEnabled => 'MDM aktivert';

  @override
  String get enrolledViaDep => 'Registrert via DEP';

  @override
  String get userApprovedMdm => 'Brukergodkjent MDM';

  @override
  String get network => 'Nettverk';

  @override
  String get ipAddress => 'IP-adresse';

  @override
  String get wifiNetwork => 'Wi-Fi-nettverk';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Aktiveringslås';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Utviklermodus';

  @override
  String get adbEnabled => 'ADB aktivert';

  @override
  String get unknownSources => 'Ukjente kilder';

  @override
  String get securityPatch => 'Sikkerhetsoppdatering';

  @override
  String get provisioningUdid => 'Provisioning UDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM-info';

  @override
  String get lastEnrollment => 'Siste registrering';

  @override
  String get enterpriseId => 'Enterprise-ID';

  @override
  String get manufacturer => 'Produsent';

  @override
  String get generalStatus => 'Generell status';

  @override
  String get apiLevel => 'API-nivå';

  @override
  String get userApprovedEnrollment => 'Brukergodkjent registrering';

  @override
  String get hostname => 'Vertsnavn';

  @override
  String get macAddress => 'MAC-adresse';

  @override
  String get publicIp => 'Offentlig IP';

  @override
  String get volumes => 'Volumer';

  @override
  String volumeUsed(String percent) {
    return '$percent% brukt';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available ledig av $total';
  }

  @override
  String get encrypted => 'Kryptert';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores kjerner';
  }

  @override
  String processors(String count) {
    return '$count prosessorer';
  }

  @override
  String get batteryLevel => 'Batterinivå';

  @override
  String get lastUser => 'Siste bruker';

  @override
  String get bootVolume => 'Oppstartsvolum';

  @override
  String get localUsers => 'Lokale brukere';

  @override
  String get regularUsers => 'Standardbrukere';

  @override
  String get systemUsers => 'Systembrukere';

  @override
  String get admin => 'Admin';

  @override
  String get assignToBlueprint => 'Tildel Blueprint';

  @override
  String get installOnDevice => 'Installer på enhet';

  @override
  String get selectBlueprint => 'Velg Blueprint';

  @override
  String get selectDevice => 'Velg enhet';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'VPP-lisenser';

  @override
  String get fileName => 'Filnavn';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Aktiveringslås';

  @override
  String get prismCategoryApps => 'Applikasjoner';

  @override
  String get prismCategoryApplicationFirewall => 'Applikasjonsbrannmur';

  @override
  String get prismCategoryCellular => 'Mobilnett';

  @override
  String get prismCategoryCertificates => 'Sertifikater';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Skrivebord & Skjermsparer';

  @override
  String get prismCategoryDeviceInformation => 'Enhetsinformasjon';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper & XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Installerte profiler';

  @override
  String get prismCategoryKernelExtensions => 'Kernel Extensions';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents & Daemons';

  @override
  String get prismCategoryLocalUsers => 'Lokale brukere';

  @override
  String get prismCategoryStartupSettings => 'Oppstartsinnstillinger';

  @override
  String get prismCategorySystemExtensions => 'Systemutvidelser';

  @override
  String get prismCategoryTransparencyDatabase => 'Transparensdatabase';

  @override
  String prismRecords(int count) {
    return '$count poster';
  }

  @override
  String get prismNoData => 'Ingen data tilgjengelig for denne kategorien.';

  @override
  String get prismExport => 'Eksporter CSV';

  @override
  String get prismExportRequested =>
      'Eksport forespurt. Nedlastingslenken vil snart være tilgjengelig.';

  @override
  String get prismFilterByFamily => 'Enhetsfamilie';

  @override
  String get prismAllFamilies => 'Alle familier';

  @override
  String get appearance => 'Utseende';

  @override
  String get themeMode => 'Tema';

  @override
  String get themeModeSystem => 'System';

  @override
  String get themeModeLight => 'Lyst';

  @override
  String get themeModeDark => 'Mørkt';

  @override
  String get shortTypeScript => 'Skript';

  @override
  String get shortTypeCustom => 'Egen';

  @override
  String get shortTypeProfile => 'Profil';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Administrert';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Sikkerhet';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'OS-oppdateringer';

  @override
  String get categoryAutoApps => 'Auto-apper';

  @override
  String get autoApp => 'Auto-app';

  @override
  String get fileSize => 'Filstørrelse';

  @override
  String get unzipLocation => 'Utpakkingsplassering';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Fil oppdatert';

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
