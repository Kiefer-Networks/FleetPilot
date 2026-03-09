// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Croatian (`hr`).
class AppLocalizationsHr extends AppLocalizations {
  AppLocalizationsHr([String locale = 'hr']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Uređaji';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Korisnici';

  @override
  String get navSettings => 'Postavke';

  @override
  String get welcomeTitle => 'Dobrodošli u FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Upravljajte svojom flotom Apple uređaja s bilo kojeg mjesta.';

  @override
  String get addProfile => 'Dodaj profil';

  @override
  String get editProfile => 'Uredi profil';

  @override
  String get displayName => 'Naziv za prikaz';

  @override
  String get displayNameHint => 'npr. Acme Corp — Prod';

  @override
  String get region => 'Regija';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Poddomena';

  @override
  String get subdomainHint => 'vaš-tenant';

  @override
  String get apiToken => 'API token';

  @override
  String get apiTokenHint => 'Zalijepite API token ovdje';

  @override
  String urlPreview(String url) {
    return 'API URL: $url';
  }

  @override
  String get verifyAndSave => 'Provjeri i spremi';

  @override
  String get verifying => 'Provjeravam povezivost...';

  @override
  String get connectionSuccess => 'Veza uspješno provjerena!';

  @override
  String get errorInvalidToken =>
      'Nevažeći API token. Provjerite svoj token u web konzoli.';

  @override
  String get errorInsufficientPermissions =>
      'Nedovoljne ovlasti. Provjerite ima li token pristup za čitanje uređaja.';

  @override
  String get errorNetworkUnreachable =>
      'API nedostupan. Provjerite internetsku vezu i poddomenu.';

  @override
  String get errorNotFound => 'Traženi resurs nije pronađen.';

  @override
  String get errorValidation =>
      'Zahtjev sadrži nevažeće podatke. Provjerite svoj unos.';

  @override
  String get errorRateLimit =>
      'Previše zahtjeva. Pričekajte trenutak i pokušajte ponovno.';

  @override
  String get errorServer =>
      'Poslužitelj je naišao na pogrešku. Pokušajte ponovno kasnije.';

  @override
  String get errorUnexpected =>
      'Došlo je do neočekivane pogreške. Pokušajte ponovno.';

  @override
  String get retry => 'Pokušaj ponovno';

  @override
  String get cancel => 'Odustani';

  @override
  String get delete => 'Obriši';

  @override
  String get save => 'Spremi';

  @override
  String get search => 'Pretraži';

  @override
  String get searchDevices => 'Pretraži uređaje...';

  @override
  String get filterAll => 'Svi';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Svi Blueprinti';

  @override
  String loadingDevices(int count) {
    return 'Učitavam $count uređaja...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uređaja',
      few: '$count uređaja',
      one: '1 uređaj',
      zero: 'Nema uređaja',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Uređaji nisu pronađeni';

  @override
  String get noDevicesFoundMessage => 'Prilagodite pretragu ili filtre.';

  @override
  String lastCheckIn(String time) {
    return 'Zadnja prijava: $time';
  }

  @override
  String get compliancePass => 'Uspješno';

  @override
  String get complianceFail => 'Neuspješno';

  @override
  String get compliancePending => 'Na čekanju';

  @override
  String get deviceDetails => 'Detalji uređaja';

  @override
  String get serialNumber => 'Serijski broj';

  @override
  String get model => 'Model';

  @override
  String get osVersion => 'Verzija OS-a';

  @override
  String get assetTag => 'Oznaka imovine';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Registriran';

  @override
  String get assignedUser => 'Dodijeljeni korisnik';

  @override
  String get actions => 'Radnje';

  @override
  String get actionLock => 'Zaključaj';

  @override
  String get actionRestart => 'Ponovno pokreni';

  @override
  String get actionShutdown => 'Isključi';

  @override
  String get actionErase => 'Obriši';

  @override
  String get actionBlankPush => 'Pošalji Blank Push';

  @override
  String get actionReinstallAgent => 'Ponovno instaliraj agenta';

  @override
  String get actionUpdateInventory => 'Ažuriraj inventar';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Omogući udaljenu radnu površinu';

  @override
  String get actionRemoteDesktopDisable => 'Onemogući udaljenu radnu površinu';

  @override
  String get actionLostMode => 'Aktiviraj način izgubljenog uređaja';

  @override
  String get destructiveActionTitle => 'Potvrdite destruktivnu radnju';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Ova se radnja ne može poništiti. Unesite \"$deviceName\" za potvrdu.';
  }

  @override
  String get destructiveActionHint => 'Unesite naziv uređaja za potvrdu';

  @override
  String get confirm => 'Potvrdi';

  @override
  String get actionSuccess => 'Radnja uspješno izvršena.';

  @override
  String get actionFailed => 'Radnja nije uspjela. Pokušajte ponovno.';

  @override
  String get biometricReason => 'Autenticirajte se za pristup FleetPilotu';

  @override
  String get biometricReasonSecrets =>
      'Autenticirajte se za prikaz osjetljivih podataka';

  @override
  String get biometricReasonDestructive =>
      'Autenticirajte se za izvršenje ove radnje';

  @override
  String get biometricFailed =>
      'Autentikacija nije uspjela. Pokušajte ponovno.';

  @override
  String get profiles => 'Profili';

  @override
  String activeProfile(String name) {
    return 'Aktivno: $name';
  }

  @override
  String get switchProfile => 'Promijeni profil';

  @override
  String get deleteProfile => 'Obriši profil';

  @override
  String get deleteProfileConfirm =>
      'Jeste li sigurni da želite obrisati ovaj profil? Ova se radnja ne može poništiti.';

  @override
  String get noProfiles => 'Nema konfiguriranih profila';

  @override
  String get settings => 'Postavke';

  @override
  String get about => 'O aplikaciji';

  @override
  String version(String version) {
    return 'Verzija $version';
  }

  @override
  String get validationRequired => 'Ovo polje je obavezno.';

  @override
  String get validationSubdomain =>
      'Dopuštena su samo slova, brojevi i crtice. Bez crtica na početku ili kraju.';

  @override
  String get validationToken =>
      'Nevažeći format tokena. 20–500 znakova, samo alfanumerički znakovi i uobičajeni razdjelnici.';

  @override
  String pinLockedOut(int seconds) {
    return 'Previše neuspjelih pokušaja. Pokušajte ponovno za $seconds sekundi.';
  }

  @override
  String get complianceStatus => 'Status sukladnosti';

  @override
  String get platform => 'Platforma';

  @override
  String get deviceName => 'Naziv uređaja';

  @override
  String get searchUsers => 'Pretraži korisnike...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count korisnika',
      few: '$count korisnika',
      one: '1 korisnik',
      zero: 'Nema korisnika',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Korisnici nisu pronađeni';

  @override
  String get noUsersFoundMessage => 'Prilagodite pretragu ili filtre.';

  @override
  String get showArchived => 'Prikaži arhivirane';

  @override
  String get archived => 'Arhivirano';

  @override
  String get email => 'E-pošta';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprintova',
      few: '$count Blueprinta',
      one: '1 Blueprint',
      zero: 'Nema Blueprintova',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Blueprinti nisu pronađeni';

  @override
  String get noBlueprintsFoundMessage =>
      'Još nisu konfigurirani nikakvi blueprinti.';

  @override
  String get enrollmentActive => 'Registracija aktivna';

  @override
  String get enrollmentInactive => 'Registracija neaktivna';

  @override
  String get tabOverview => 'Pregled';

  @override
  String get tabApps => 'Aplikacije';

  @override
  String get tabStatus => 'Status';

  @override
  String get tabActivity => 'Aktivnost';

  @override
  String get tabCommands => 'Naredbe';

  @override
  String get hardware => 'Hardver';

  @override
  String get security => 'Sigurnost';

  @override
  String get totalStorage => 'Ukupna pohrana';

  @override
  String get availableStorage => 'Dostupna pohrana';

  @override
  String get totalRam => 'Ukupni RAM';

  @override
  String get wifiMac => 'Wi-Fi MAC adresa';

  @override
  String get encryption => 'Enkripcija';

  @override
  String get passcode => 'Lozinka';

  @override
  String get noAppsFound => 'Aplikacije nisu pronađene';

  @override
  String get noActivityFound => 'Aktivnost nije pronađena';

  @override
  String get noCommandsFound => 'Naredbe nisu pronađene';

  @override
  String get libraryItems => 'Stavke biblioteke';

  @override
  String get parameters => 'Parametri';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'OS verzija';

  @override
  String get cellular => 'Mobilna mreža';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikacija',
      few: '$count aplikacije',
      one: '1 aplikacija',
      zero: 'Nema aplikacija',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Detalji korisnika';

  @override
  String get jobTitle => 'Radno mjesto';

  @override
  String get department => 'Odjel';

  @override
  String get createdAt => 'Kreirano';

  @override
  String get updatedAt => 'Ažurirano';

  @override
  String get assignedDevices => 'Dodijeljeni uređaji';

  @override
  String get noAssignedDevices => 'Ovom korisniku nisu dodijeljeni uređaji.';

  @override
  String get userInfo => 'Informacije o korisniku';

  @override
  String get navMore => 'Više';

  @override
  String get tabSecrets => 'Tajne';

  @override
  String get filevaultKey => 'FileVault ključ za oporavak';

  @override
  String get unlockPin => 'PIN za otključavanje';

  @override
  String get recoveryPassword => 'Recovery Lock lozinka';

  @override
  String get bypassCode => 'Kod za zaobilaženje aktivacijske brave';

  @override
  String get noSecretsFound => 'Nema dostupnih tajni za ovaj uređaj.';

  @override
  String get secretCopied => 'Tajna kopirana u međuspremnik';

  @override
  String get threats => 'Prijetnje';

  @override
  String get noThreatsFound => 'Prijetnje nisu otkrivene.';

  @override
  String get vulnerabilities => 'Ranjivosti';

  @override
  String get noVulnerabilitiesFound => 'Ranjivosti nisu otkrivene.';

  @override
  String get aboutApp => 'O aplikaciji FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot je MDM upravljačka aplikacija otvorenog koda za flote Apple uređaja.';

  @override
  String get tapToCopy => 'Dodirnite za kopiranje';

  @override
  String get devices => 'Uređaji';

  @override
  String get severity => 'Ozbiljnost';

  @override
  String get tabLocation => 'Lokacija';

  @override
  String get locationNotAvailable =>
      'Podaci o lokaciji nisu dostupni za ovaj uređaj.';

  @override
  String get enableLostModeHint =>
      'Aktivirajte način izgubljenog uređaja za lociranje ovog uređaja.';

  @override
  String get lostModeEnabled => 'Način izgubljenog uređaja aktiviran';

  @override
  String get noLibraryItemsFound => 'Stavke biblioteke nisu pronađene.';

  @override
  String get licenses => 'Licence';

  @override
  String get lostModeMessage => 'Poruka načina izgubljenog uređaja';

  @override
  String get lostModePhone => 'Telefonski broj';

  @override
  String get lostModeFootnote =>
      'Neobavezna poruka i telefonski broj prikazani na uređaju';

  @override
  String get supervised => 'Nadzirano';

  @override
  String get unsupervised => 'Nenadzirano';

  @override
  String get filterSupervised => 'Nadzirano';

  @override
  String get filterUnsupervised => 'Nenadzirano';

  @override
  String get language => 'Jezik';

  @override
  String get languageSystem => 'Zadano sustava';

  @override
  String get actionDisableLostMode => 'Deaktiviraj način izgubljenog uređaja';

  @override
  String get actionClearPasscode => 'Obriši lozinku';

  @override
  String get filterLostMode => 'Način izgubljenog uređaja';

  @override
  String get lostMode => 'Način izgubljenog uređaja';

  @override
  String get sectionManagement => 'Upravljanje';

  @override
  String get sectionStatus => 'Status';

  @override
  String get statusMissing => 'Nedostaje';

  @override
  String get statusRemoved => 'Uklonjeno';

  @override
  String get agent => 'Agent';

  @override
  String get identifier => 'Identifikator';

  @override
  String get processor => 'Procesor';

  @override
  String get hardwareUuid => 'Hardverski UUID';

  @override
  String get devicePosture => 'Stanje uređaja';

  @override
  String get unknownDevice => 'Nepoznat uređaj';

  @override
  String get securityAppLock => 'Zaključavanje aplikacije';

  @override
  String get securityAppLockDescription =>
      'Postavite 6-znamenkasti PIN za zaštitu aplikacije. Biometrijska autentikacija može se omogućiti nakon postavljanja PIN-a.';

  @override
  String get securityAppLockActive => 'Zaključavanje aplikacije aktivirano';

  @override
  String get securityAppLockInactive =>
      'Zaključavanje aplikacije nije konfigurirano';

  @override
  String get securitySetPin => 'Postavi PIN';

  @override
  String get securityChangePin => 'Promijeni PIN';

  @override
  String get securityRemovePin => 'Ukloni PIN';

  @override
  String get securityCurrentPin => 'Trenutni PIN';

  @override
  String get securityNewPin => 'Novi PIN';

  @override
  String get securityConfirmPin => 'Unesite PIN ponovno za potvrdu.';

  @override
  String get securityPinLength => 'PIN mora imati 6 znamenki.';

  @override
  String get securityPinMismatch => 'PIN-ovi se ne podudaraju.';

  @override
  String get securityPinWrong => 'Pogrešan PIN.';

  @override
  String get securityPinSet => 'PIN je postavljen.';

  @override
  String get securityPinChanged => 'PIN je promijenjen.';

  @override
  String get securityPinRemoved => 'PIN i zaključavanje aplikacije uklonjeni.';

  @override
  String get securityBiometric => 'Biometrija';

  @override
  String get securityBiometricDescription =>
      'Koristite otisak prsta ili prepoznavanje lica za otključavanje aplikacije umjesto PIN-a.';

  @override
  String get securityBiometricEnable => 'Biometrijsko otključavanje';

  @override
  String get securityBiometricActive => 'Aktivno';

  @override
  String get securityBiometricInactive => 'Neaktivno';

  @override
  String get securityBiometricUnavailable =>
      'Biometrijska autentikacija nije dostupna na ovom uređaju.';

  @override
  String get securityNext => 'Dalje';

  @override
  String get actionRenewMdm => 'Obnovi MDM profil';

  @override
  String get actionSetName => 'Postavi naziv uređaja';

  @override
  String get actionSetNameHint => 'Unesite novi naziv uređaja';

  @override
  String get actionDeleteUser => 'Obriši korisnika';

  @override
  String get actionDeleteUserName => 'Korisničko ime';

  @override
  String get actionDeleteAllUsers => 'Obriši sve korisnike';

  @override
  String get actionForceDeletion => 'Prisilno brisanje';

  @override
  String get actionUnlockAccount => 'Otključaj račun';

  @override
  String get actionPlayLostModeSound => 'Reproduciraj zvuk izgubljenog uređaja';

  @override
  String get actionUpdateLocation => 'Ažuriraj lokaciju';

  @override
  String get erasePin => '6-znamenkasti PIN';

  @override
  String get erasePinHint => 'Potrebno za mobilne uređaje';

  @override
  String get erasePreserveDataPlan => 'Zadrži podatkovni plan';

  @override
  String get eraseDisallowProximitySetup => 'Zabrani postavljanje blizinom';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Poruka zaključavanja (neobavezno)';

  @override
  String get lockPhone => 'Telefonski broj';

  @override
  String get restartRebuildKernelCache => 'Ponovno izgradi kernel predmemoriju';

  @override
  String get restartNotifyUser => 'Obavijesti korisnika';

  @override
  String get actionRemoteDesktop => 'Udaljena radna površina';

  @override
  String get tabNotes => 'Bilješke';

  @override
  String get noNotesFound => 'Još nema bilješki';

  @override
  String get addNote => 'Dodaj bilješku';

  @override
  String get editNote => 'Uredi bilješku';

  @override
  String get deleteNote => 'Obriši bilješku';

  @override
  String get deleteNoteConfirm =>
      'Jeste li sigurni da želite obrisati ovu bilješku?';

  @override
  String get noteContent => 'Sadržaj bilješke';

  @override
  String get noteSaved => 'Bilješka spremljena.';

  @override
  String get noteDeleted => 'Bilješka obrisana.';

  @override
  String get editDevice => 'Uredi uređaj';

  @override
  String get deviceUpdated => 'Uređaj ažuriran.';

  @override
  String get deleteDevice => 'Obriši uređaj';

  @override
  String get deleteDeviceConfirm =>
      'Uređaj će biti trajno uklonjen iz MDM-a. Ova se radnja ne može poništiti.';

  @override
  String get deviceDeleted => 'Uređaj obrisan.';

  @override
  String get cancelLostMode => 'Otkaži način izgubljenog uređaja';

  @override
  String get cancelLostModeConfirm =>
      'Otkazati zahtjev za način izgubljenog uređaja na čekanju?';

  @override
  String get lostModeCancelled => 'Način izgubljenog uređaja otkazan.';

  @override
  String get tags => 'Oznake';

  @override
  String get noTags => 'Nema oznaka';

  @override
  String get addTag => 'Dodaj oznaku';

  @override
  String get tagName => 'Naziv oznake';

  @override
  String get manageTags => 'Upravljanje oznakama';

  @override
  String get auditLog => 'Revizijski zapis';

  @override
  String get noAuditEvents => 'Revizijski događaji nisu pronađeni';

  @override
  String get actionDailyCheckIn => 'Dnevna prijava';

  @override
  String get licensing => 'Licenciranje';

  @override
  String get deviceLimit => 'Ograničenje uređaja';

  @override
  String get devicesUsed => 'Korišteni uređaji';

  @override
  String get licenseType => 'Vrsta licence';

  @override
  String get appleDevices => 'Apple uređaji';

  @override
  String get deleteUser => 'Obriši korisnika';

  @override
  String get deleteUserConfirm =>
      'Jeste li sigurni da želite obrisati ovog korisnika? Ova se radnja ne može poništiti.';

  @override
  String get userDeleted => 'Korisnik obrisan.';

  @override
  String get createBlueprint => 'Kreiraj blueprint';

  @override
  String get editBlueprint => 'Uredi blueprint';

  @override
  String get deleteBlueprint => 'Obriši blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Brisanje ovog blueprinta odjavit će sve dodijeljene uređaje. Ova se radnja ne može poništiti.';

  @override
  String get blueprintCreated => 'Blueprint kreiran.';

  @override
  String get blueprintUpdated => 'Blueprint ažuriran.';

  @override
  String get blueprintDeleted => 'Blueprint obrisan.';

  @override
  String get blueprintName => 'Naziv blueprinta';

  @override
  String get blueprintDescription => 'Opis';

  @override
  String get enrollmentCode => 'Kod za registraciju';

  @override
  String get assignLibraryItem => 'Dodijeli stavku biblioteke';

  @override
  String get removeLibraryItem => 'Ukloni stavku biblioteke';

  @override
  String get libraryItemAssigned => 'Stavka biblioteke dodijeljena.';

  @override
  String get libraryItemRemoved => 'Stavka biblioteke uklonjena.';

  @override
  String get lostModeDetails => 'Detalji načina izgubljenog uređaja';

  @override
  String get lostModeEnabledBy => 'Aktivirao';

  @override
  String get lostModeEnabledAt => 'Aktivirano';

  @override
  String get searchBlueprints => 'Pretraži blueprinte...';

  @override
  String get searchVulnerabilities => 'Pretraži ranjivosti...';

  @override
  String get searchThreats => 'Pretraži prijetnje...';

  @override
  String get searchAuditLog => 'Pretraži revizijski zapis...';

  @override
  String get filterCritical => 'Kritično';

  @override
  String get filterHigh => 'Visoko';

  @override
  String get filterMedium => 'Srednje';

  @override
  String get filterLow => 'Nisko';

  @override
  String get filterClearAll => 'Očisti sve';

  @override
  String get filterTitle => 'Filtri';

  @override
  String get filterApply => 'Primijeni';

  @override
  String get filterPlatform => 'Platforma';

  @override
  String get filterSupervision => 'Nadzor';

  @override
  String get filterStatus => 'Status';

  @override
  String get adeIntegrations => 'ADE integracije';

  @override
  String get noAdeIntegrations => 'ADE integracije nisu pronađene.';

  @override
  String get adeDevices => 'ADE uređaji';

  @override
  String get noAdeDevices => 'ADE uređaji nisu pronađeni.';

  @override
  String get tokenExpiry => 'Istek tokena';

  @override
  String get tokenValid => 'Token valjan';

  @override
  String get tokenExpired => 'Token istekao';

  @override
  String get orgName => 'Organizacija';

  @override
  String get defaultBlueprint => 'Zadani blueprint';

  @override
  String get renewToken => 'Obnovi token';

  @override
  String get publicKey => 'Javni ključ';

  @override
  String get vulnerabilityDetections => 'Detekcije ranjivosti';

  @override
  String get noDetectionsFound => 'Detekcije nisu pronađene.';

  @override
  String get behavioralDetections => 'Bihevioralne detekcije';

  @override
  String get noBehavioralDetections => 'Bihevioralne detekcije nisu pronađene.';

  @override
  String get searchBehavioralDetections => 'Pretraži detekcije...';

  @override
  String get affectedDevices => 'Pogođeni uređaji';

  @override
  String get noAffectedDevices =>
      'Pogođeni uređaji nisu pronađeni. Prethodno pogođeni uređaji možda su uklonjeni.';

  @override
  String get affectedSoftware => 'Pogođeni softver';

  @override
  String get blueprintTemplates => 'Predlošci blueprinta';

  @override
  String get noTemplatesFound => 'Predlošci nisu pronađeni.';

  @override
  String get otaEnrollmentProfile => 'OTA profil za registraciju';

  @override
  String get libraryItemActivity => 'Aktivnost';

  @override
  String get libraryItemDeploymentStatus => 'Status implementacije';

  @override
  String get noActivityFound2 => 'Aktivnost nije pronađena.';

  @override
  String get noStatusFound => 'Status implementacije nije pronađen.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detekcija',
      few: '$count detekcije',
      one: '1 detekcija',
      zero: 'Nema detekcija',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count integracija',
      few: '$count integracije',
      one: '1 integracija',
      zero: 'Nema integracija',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Detalji ranjivosti';

  @override
  String get description => 'Opis';

  @override
  String get firstDetected => 'Prvo otkrivanje';

  @override
  String get lastDetected => 'Zadnje otkrivanje';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count softvera',
      few: '$count softvera',
      one: '1 softver',
      zero: 'Nema softvera',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Uredi integraciju';

  @override
  String get deleteIntegration => 'Obriši integraciju';

  @override
  String get deleteIntegrationConfirm =>
      'Jeste li sigurni da želite obrisati ovu ADE integraciju? Ova se radnja ne može poništiti.';

  @override
  String get integrationDeleted => 'Integracija obrisana.';

  @override
  String get integrationUpdated => 'Integracija ažurirana.';

  @override
  String get defaultBlueprintId => 'ID zadanog blueprinta';

  @override
  String get phone => 'Telefon';

  @override
  String get downloadOtaProfile => 'Preuzmi profil za registraciju';

  @override
  String get otaProfileCopied =>
      'Profil za registraciju kopiran u međuspremnik.';

  @override
  String get noOtaProfile => 'Profil za registraciju nije dostupan.';

  @override
  String get createTag => 'Kreiraj oznaku';

  @override
  String get editTag => 'Uredi oznaku';

  @override
  String get deleteTag => 'Obriši oznaku';

  @override
  String get deleteTagConfirm =>
      'Jeste li sigurni da želite obrisati ovu oznaku?';

  @override
  String get tagColor => 'Boja';

  @override
  String get tagCreated => 'Oznaka kreirana.';

  @override
  String get tagUpdated => 'Oznaka ažurirana.';

  @override
  String get tagDeleted => 'Oznaka obrisana.';

  @override
  String get noTagsFound => 'Oznake nisu pronađene.';

  @override
  String get libraryItemDetail => 'Stavka biblioteke';

  @override
  String get viewActivity => 'Prikaži aktivnost';

  @override
  String get viewStatus => 'Prikaži status';

  @override
  String get installations => 'Instalacije';

  @override
  String get createAdeIntegration => 'Kreiraj ADE integraciju';

  @override
  String get adeCreateDescription =>
      'Prenesite datoteku tokena poslužitelja (.p7m) iz Apple Business Managera za kreiranje nove ADE integracije.';

  @override
  String get selectTokenFile => 'Odaberi datoteku tokena';

  @override
  String tokenFileSelected(String name) {
    return 'Datoteka tokena: $name';
  }

  @override
  String get noTokenFileSelected => 'Datoteka tokena nije odabrana';

  @override
  String get integrationCreated => 'Integracija kreirana.';

  @override
  String get create => 'Kreiraj';

  @override
  String get step1GetPublicKey => 'Korak 1: Preuzmite javni ključ';

  @override
  String get step1Description =>
      'Kopirajte javni ključ i prenesite ga u Apple Business Manager.';

  @override
  String get step2UploadToken => 'Korak 2: Prenesite token poslužitelja';

  @override
  String get step2Description =>
      'Odaberite .p7m datoteku tokena preuzetu od Applea.';

  @override
  String get step3Configure => 'Korak 3: Konfigurirajte';

  @override
  String get publicKeyCopied => 'Javni ključ kopiran u međuspremnik.';

  @override
  String get renewTokenDescription =>
      'Prenesite novu .p7m datoteku tokena za obnovu tokena ove integracije.';

  @override
  String get tokenRenewed => 'Token obnovljen.';

  @override
  String get aboutLinks => 'Poveznice';

  @override
  String get aboutWebsite => 'Web stranica';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Izvorni kod';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Tehnologija';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'Upravljanje stanjem';

  @override
  String get aboutArchitecture => 'Arhitektura';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Podatkovne klase';

  @override
  String get aboutNavigationLabel => 'Navigacija';

  @override
  String get aboutOpenSourceLicenses => 'Licence otvorenog koda';

  @override
  String get aboutShowHide => 'Prebaci vidljivost';

  @override
  String get editProfileTitle => 'Uredi vezu';

  @override
  String get editProfileSubtitle => 'Ažurirajte postavke veze na vaš tenant.';

  @override
  String get apiTokenHintEdit =>
      'Ostavite prazno za zadržavanje postojećeg tokena';

  @override
  String get profileUpdated => 'Profil ažuriran.';

  @override
  String profileSwitched(String name) {
    return 'Prebačeno na $name.';
  }

  @override
  String get securityAutoLock => 'Automatsko zaključavanje';

  @override
  String get securityAutoLockDescription =>
      'Automatski zahtijevaj autentikaciju nakon što je aplikacija bila u pozadini.';

  @override
  String get timeoutImmediately => 'Odmah';

  @override
  String get timeoutSeconds30 => 'Nakon 30 sekundi';

  @override
  String get timeoutSeconds60 => 'Nakon 1 minute';

  @override
  String get timeoutSeconds120 => 'Nakon 2 minute';

  @override
  String get timeoutMinutes5 => 'Nakon 5 minuta';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Bez Blueprinta';

  @override
  String get presetSaveFilter => 'Spremi predložak filtra';

  @override
  String get presetLoad => 'Učitaj predložak';

  @override
  String get presetName => 'Naziv predloška';

  @override
  String get presetNameHint => 'npr. Nenadzirani Macovi';

  @override
  String get presetSaved => 'Predložak filtra spremljen.';

  @override
  String get presetDeleted => 'Predložak filtra obrisan.';

  @override
  String presetApplied(String name) {
    return 'Predložak \"$name\" primijenjen.';
  }

  @override
  String get presetNoPresets => 'Nema spremljenih predložaka';

  @override
  String get presetNoPresetsMessage =>
      'Spremite trenutne filtre kao predložak za brzi pristup.';

  @override
  String get presetDeleteConfirm => 'Obrisati ovaj predložak?';

  @override
  String get presetNameRequired => 'Unesite naziv predloška.';

  @override
  String selectedCount(int count) {
    return '$count odabrano';
  }

  @override
  String get selectAll => 'Odaberi sve';

  @override
  String get deselectAll => 'Poništi odabir';

  @override
  String get bulkActions => 'Radnje';

  @override
  String bulkActionsTitle(int count) {
    return 'Radnje za $count uređaja';
  }

  @override
  String get bulkActionAssignTag => 'Dodijeli oznaku';

  @override
  String get bulkActionAssignTagDescription =>
      'Dodaj oznaku svim odabranim uređajima';

  @override
  String get bulkActionAssignBlueprint => 'Dodijeli blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Premjesti odabrane uređaje u blueprint';

  @override
  String get bulkActionLock => 'Zaključaj uređaje';

  @override
  String get bulkActionLockDescription =>
      'Daljinski zaključaj sve odabrane uređaje';

  @override
  String get bulkActionRestart => 'Ponovno pokreni uređaje';

  @override
  String get bulkActionRestartDescription =>
      'Ponovno pokreni sve odabrane uređaje';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Jeste li sigurni da želite ponovno pokrenuti $count uređaja?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Radnja uspješno izvršena na $count uređaja.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Završeno na $success uređaja, $failed neuspješno.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed od $total završeno';
  }

  @override
  String get biometricReasonBulkAction =>
      'Autenticirajte se za izvršenje skupne radnje';

  @override
  String get lockPin => 'PIN za zaključavanje (neobavezno)';

  @override
  String get noTagsAvailable =>
      'Nema dostupnih oznaka. Kreirajte oznake u MDM web konzoli.';

  @override
  String get noBlueprintsAvailable => 'Nema dostupnih blueprintova.';

  @override
  String get selectADevice => 'Odaberite uređaj';

  @override
  String get selectABlueprint => 'Odaberite blueprint';

  @override
  String get clearSearch => 'Očisti pretragu';

  @override
  String get refresh => 'Osvježi';

  @override
  String get moreActions => 'Više radnji';

  @override
  String get close => 'Zatvori';

  @override
  String get onboardingSkip => 'Preskoči';

  @override
  String get onboardingNext => 'Dalje';

  @override
  String get onboardingGetStarted => 'Započnite';

  @override
  String get onboardingWelcomeTitle => 'Dobrodošli u FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Vaš mobilni zapovjedni centar za upravljanje flotom Apple uređaja. Nadzirite, upravljajte i osigurajte cijelu flotu s bilo kojeg mjesta.';

  @override
  String get onboardingDevicesTitle => 'Upravljanje uređajima';

  @override
  String get onboardingDevicesSubtitle =>
      'Potpuna vidljivost i kontrola nad svakim uređajem u vašoj floti.';

  @override
  String get onboardingDevicesFeature1 =>
      'Pregledajte sve registrirane iPhone, iPad, Mac i Apple TV uređaje';

  @override
  String get onboardingDevicesFeature2 =>
      'Šaljite udaljene naredbe: zaključavanje, ponovno pokretanje, brisanje i više';

  @override
  String get onboardingDevicesFeature3 =>
      'Pratite blueprinte, aplikacije i status sukladnosti';

  @override
  String get onboardingSecurityTitle => 'Izgrađeno za sigurnost';

  @override
  String get onboardingSecuritySubtitle =>
      'Podaci vaše flote zaštićeni su s više razina sigurnosti.';

  @override
  String get onboardingSecurityFeature1 =>
      'Biometrijska autentikacija s Face ID-jem ili otiskom prsta';

  @override
  String get onboardingSecurityFeature2 =>
      'Zaključavanje aplikacije 6-znamenkastim PIN-om';

  @override
  String get onboardingSecurityFeature3 =>
      'Automatsko zaključavanje sesije nakon isteka vremena';

  @override
  String get onboardingReadyTitle => 'Spremni za početak';

  @override
  String get onboardingReadySubtitle =>
      'Povežite svoj MDM tenant za početak upravljanja flotom Apple uređaja. U nastavku ćete postaviti API vezu i sigurnosni PIN.';

  @override
  String get searchTags => 'Pretraži oznake';

  @override
  String tagDeviceCount(int count) {
    return '$count uređaja';
  }

  @override
  String get sortTitle => 'Sortiranje';

  @override
  String get sortDirection => 'Smjer sortiranja';

  @override
  String get ascending => 'Uzlazno';

  @override
  String get descending => 'Silazno';

  @override
  String get filterSeverity => 'Ozbiljnost';

  @override
  String get filterSort => 'Filtriranje i sortiranje';

  @override
  String get statusQuarantined => 'U karanteni';

  @override
  String get statusNotQuarantined => 'Nije u karanteni';

  @override
  String get statusDetected => 'Otkriveno';

  @override
  String get statusReleased => 'Pušteno';

  @override
  String get severityCritical => 'Kritično';

  @override
  String get severityHigh => 'Visoko';

  @override
  String get severityMedium => 'Srednje';

  @override
  String get severityLow => 'Nisko';

  @override
  String threatCount(int count) {
    return '$count prijetnji';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count detekcija';
  }

  @override
  String get downloadPublicKey => 'Preuzmi';

  @override
  String get publicKeySaved => 'Javni ključ spremljen';

  @override
  String get sortBy => 'Sortiraj po';

  @override
  String get sortByCvss => 'CVSS ocjena';

  @override
  String get sortByDeviceCount => 'Pogođeni uređaji';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count ranjivosti';
  }

  @override
  String get assignTags => 'Oznake';

  @override
  String get noTagsAvailableMessage =>
      'Nema dostupnih oznaka. Prvo kreirajte oznake.';

  @override
  String get failedToLoadTags => 'Učitavanje oznaka nije uspjelo';

  @override
  String get details => 'Detalji';

  @override
  String get searchLibraryItems => 'Pretraži stavke biblioteke...';

  @override
  String get categoryCustomScript => 'Prilagođena skripta';

  @override
  String get categoryCustomApp => 'Prilagođena aplikacija';

  @override
  String get categoryCustomProfile => 'Prilagođeni profil';

  @override
  String get categoryInHouseApp => 'In-House aplikacija';

  @override
  String get categoryBuiltIn => 'Ugrađeno';

  @override
  String get categoryVppApps => 'VPP / App Store aplikacije';

  @override
  String get categoryManagedProfiles => 'Upravljani profili';

  @override
  String get categoryKandjiSetup => 'MDM postavljanje';

  @override
  String get categoryMacosRelease => 'macOS ažuriranja';

  @override
  String get categoryThreatPolicy => 'Sigurnosna pravila';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprintova',
      few: '$count blueprinta',
      one: '1 blueprintu',
    );
    return 'U $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Jednom';

  @override
  String get executionFrequencyEvery15Min => 'Svakih 15 minuta';

  @override
  String get executionFrequencyEveryDay => 'Svakodnevno';

  @override
  String get executionFrequencyNoEnforcement => 'Bez provođenja';

  @override
  String get scriptBody => 'Skripta';

  @override
  String get remediationScript => 'Korektivna skripta';

  @override
  String get allProperties => 'Sva svojstva';

  @override
  String get builtInLibraryItem => 'Ugrađena stavka biblioteke';

  @override
  String get builtInDetailsHint => 'Detalji dostupni na kartici Status';

  @override
  String get active => 'Aktivno';

  @override
  String get yes => 'Da';

  @override
  String get no => 'Ne';

  @override
  String get execution => 'Izvršavanje';

  @override
  String get restart => 'Ponovno pokretanje';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Vrsta instalacije';

  @override
  String get enforcement => 'Provođenje';

  @override
  String get runsOnMac => 'Pokreće se na Macu';

  @override
  String get runsOnIphone => 'Pokreće se na iPhoneu';

  @override
  String get runsOnIpad => 'Pokreće se na iPadu';

  @override
  String get appName => 'Naziv aplikacije';

  @override
  String get appVersion => 'Verzija aplikacije';

  @override
  String get minOsVersion => 'Min. verzija OS-a';

  @override
  String get created => 'Kreirano';

  @override
  String get updated => 'Ažurirano';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count stavki',
      few: '$count stavke',
      one: '1 stavka',
      zero: 'Nema stavki',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Riješeno';

  @override
  String get severityInformational => 'Informativno';

  @override
  String get managementState => 'Stanje upravljanja';

  @override
  String get managementStateOpen => 'Otvoreno';

  @override
  String get managementStateClosed => 'Zatvoreno';

  @override
  String get classificationMalware => 'Malware';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Sumnjivo';

  @override
  String get classificationMal => 'Zlonamjerno';

  @override
  String get blueprintRouting => 'Blueprint usmjeravanje';

  @override
  String get blueprintRoutingDesc =>
      'Kod za registraciju i usmjeravanje za ručnu / Android Work Profile registraciju';

  @override
  String get blueprintRoutingNotConfigured =>
      'Blueprint usmjeravanje nije konfigurirano za ovog zakupca.';

  @override
  String get enrollmentCodeActive => 'Aktivno';

  @override
  String get enrollmentCodeInactive => 'Neaktivno';

  @override
  String get routingActivity => 'Aktivnost usmjeravanja';

  @override
  String get noRoutingActivity => 'Aktivnost usmjeravanja nije pronađena.';

  @override
  String get selfServiceCategories => 'Self-Service kategorije';

  @override
  String get selfServiceDesc =>
      'Upravljajte Self-Service kategorijama za svoje korisnike';

  @override
  String get addCategory => 'Dodaj kategoriju';

  @override
  String get categoryName => 'Naziv kategorije';

  @override
  String get deleteCategory => 'Obriši kategoriju';

  @override
  String get deleteCategoryConfirm =>
      'Jeste li sigurni da želite obrisati ovu kategoriju?';

  @override
  String get noCategoriesFound => 'Kategorije nisu pronađene.';

  @override
  String get categoryCreated => 'Kategorija kreirana';

  @override
  String get categoryDeleted => 'Kategorija obrisana';

  @override
  String get profileBody => 'XML profila';

  @override
  String get customProfile => 'Prilagođeni profil';

  @override
  String get classification => 'Klasifikacija';

  @override
  String get mdmEnabled => 'MDM omogućen';

  @override
  String get enrolledViaDep => 'Registrirano putem DEP-a';

  @override
  String get userApprovedMdm => 'MDM odobren od korisnika';

  @override
  String get network => 'Mreža';

  @override
  String get ipAddress => 'IP adresa';

  @override
  String get wifiNetwork => 'Wi-Fi mreža';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Aktivacijska brava';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Razvojni način';

  @override
  String get adbEnabled => 'ADB omogućen';

  @override
  String get unknownSources => 'Nepoznati izvori';

  @override
  String get securityPatch => 'Sigurnosna zakrpa';

  @override
  String get provisioningUdid => 'UDID za provizioniranje';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM informacije';

  @override
  String get lastEnrollment => 'Zadnja registracija';

  @override
  String get enterpriseId => 'ID poduzeća';

  @override
  String get manufacturer => 'Proizvođač';

  @override
  String get generalStatus => 'Opći status';

  @override
  String get apiLevel => 'API razina';

  @override
  String get userApprovedEnrollment => 'Registracija odobrena od korisnika';

  @override
  String get hostname => 'Naziv domaćina';

  @override
  String get macAddress => 'MAC adresa';

  @override
  String get publicIp => 'Javna IP';

  @override
  String get volumes => 'Volumeni';

  @override
  String volumeUsed(String percent) {
    return '$percent% iskorišteno';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available slobodno od $total';
  }

  @override
  String get encrypted => 'Kriptirano';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores jezgri';
  }

  @override
  String processors(String count) {
    return '$count procesora';
  }

  @override
  String get batteryLevel => 'Razina baterije';

  @override
  String get lastUser => 'Zadnji korisnik';

  @override
  String get bootVolume => 'Volumen za pokretanje';

  @override
  String get localUsers => 'Lokalni korisnici';

  @override
  String get regularUsers => 'Standardni korisnici';

  @override
  String get systemUsers => 'Sistemski korisnici';

  @override
  String get admin => 'Administrator';

  @override
  String get assignToBlueprint => 'Dodijeli blueprintu';

  @override
  String get installOnDevice => 'Instaliraj na uređaj';

  @override
  String get selectBlueprint => 'Odaberi blueprint';

  @override
  String get selectDevice => 'Odaberi uređaj';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'VPP licence';

  @override
  String get fileName => 'Naziv datoteke';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Aktivacijska brava';

  @override
  String get prismCategoryApps => 'Aplikacije';

  @override
  String get prismCategoryApplicationFirewall => 'Vatrozid aplikacija';

  @override
  String get prismCategoryCellular => 'Mobilna mreža';

  @override
  String get prismCategoryCertificates => 'Certifikati';

  @override
  String get prismCategoryDesktopAndScreensaver =>
      'Radna površina i čuvar zaslona';

  @override
  String get prismCategoryDeviceInformation => 'Informacije o uređaju';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper i XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Instalirani profili';

  @override
  String get prismCategoryKernelExtensions => 'Kernel ekstenzije';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch agenti i daemoni';

  @override
  String get prismCategoryLocalUsers => 'Lokalni korisnici';

  @override
  String get prismCategoryStartupSettings => 'Postavke pokretanja';

  @override
  String get prismCategorySystemExtensions => 'Sistemske ekstenzije';

  @override
  String get prismCategoryTransparencyDatabase =>
      'Baza podataka transparentnosti';

  @override
  String prismRecords(int count) {
    return '$count zapisa';
  }

  @override
  String get prismNoData => 'Nema podataka za ovu kategoriju.';

  @override
  String get prismExport => 'Izvezi CSV';

  @override
  String get prismExportRequested =>
      'Izvoz zatražen. Poveznica za preuzimanje uskoro će biti dostupna.';

  @override
  String get prismFilterByFamily => 'Obitelj uređaja';

  @override
  String get prismAllFamilies => 'Sve obitelji';

  @override
  String get appearance => 'Izgled';

  @override
  String get themeMode => 'Tema';

  @override
  String get themeModeSystem => 'Sustav';

  @override
  String get themeModeLight => 'Svijetla';

  @override
  String get themeModeDark => 'Tamna';

  @override
  String get shortTypeScript => 'Skripta';

  @override
  String get shortTypeCustom => 'Prilag.';

  @override
  String get shortTypeProfile => 'Profil';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Upravlj.';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Sigurnost';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'OS ažuriranja';

  @override
  String get categoryAutoApps => 'Auto-aplikacije';

  @override
  String get autoApp => 'Auto-aplikacija';

  @override
  String get fileSize => 'Veličina datoteke';

  @override
  String get unzipLocation => 'Lokacija raspakiravanja';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Datoteka ažurirana';

  @override
  String get mdmIdentifier => 'MDM identifikator';

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
  String get typeLabel => 'Vrsta';

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
