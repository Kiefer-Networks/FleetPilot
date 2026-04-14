// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Finnish (`fi`).
class AppLocalizationsFi extends AppLocalizations {
  AppLocalizationsFi([String locale = 'fi']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Laitteet';

  @override
  String get navBlueprints => 'Blueprintit';

  @override
  String get navUsers => 'Käyttäjät';

  @override
  String get navSettings => 'Asetukset';

  @override
  String get welcomeTitle => 'Tervetuloa FleetPilotiin';

  @override
  String get welcomeSubtitle => 'Hallitse Apple-laitekanttaasi mistä tahansa.';

  @override
  String get addProfile => 'Lisää profiili';

  @override
  String get editProfile => 'Muokkaa profiilia';

  @override
  String get displayName => 'Näyttönimi';

  @override
  String get displayNameHint => 'esim. Acme Corp — Tuotanto';

  @override
  String get region => 'Alue';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Alidomain';

  @override
  String get subdomainHint => 'oma-vuokralainen';

  @override
  String get apiToken => 'API-avain';

  @override
  String get apiTokenHint => 'Liitä API-avaimesi tähän';

  @override
  String urlPreview(String url) {
    return 'API-osoite: $url';
  }

  @override
  String get verifyAndSave => 'Vahvista ja tallenna';

  @override
  String get verifying => 'Vahvistetaan yhteyttä...';

  @override
  String get connectionSuccess => 'Yhteys vahvistettu onnistuneesti!';

  @override
  String get errorInvalidToken =>
      'Virheellinen API-avain. Tarkista avaimesi hallintakonsolista.';

  @override
  String get errorInsufficientPermissions =>
      'Avaimella ei ole riittäviä oikeuksia. Varmista, että avaimella on lukuoikeus laitteisiin.';

  @override
  String get errorNetworkUnreachable =>
      'API:iin ei saatu yhteyttä. Tarkista internet-yhteytesi ja alidomain.';

  @override
  String get errorNotFound => 'Pyydettyä resurssia ei löytynyt.';

  @override
  String get errorValidation =>
      'Pyynnössä oli virheellistä tietoa. Tarkista syötteesi.';

  @override
  String get errorRateLimit =>
      'Liian monta pyyntöä. Odota hetki ja yritä uudelleen.';

  @override
  String get errorServer =>
      'Palvelimella tapahtui virhe. Yritä myöhemmin uudelleen.';

  @override
  String get errorUnexpected => 'Odottamaton virhe tapahtui. Yritä uudelleen.';

  @override
  String get retry => 'Yritä uudelleen';

  @override
  String get cancel => 'Peruuta';

  @override
  String get delete => 'Poista';

  @override
  String get save => 'Tallenna';

  @override
  String get search => 'Haku';

  @override
  String get searchDevices => 'Hae laitteita...';

  @override
  String get filterAll => 'Kaikki';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Kaikki Blueprintit';

  @override
  String loadingDevices(int count) {
    return 'Ladataan $count laitetta...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count laitetta',
      one: '1 laite',
      zero: 'Ei laitteita',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Laitteita ei löytynyt';

  @override
  String get noDevicesFoundMessage => 'Kokeile muuttaa hakua tai suodattimia.';

  @override
  String lastCheckIn(String time) {
    return 'Viimeisin kuittaus: $time';
  }

  @override
  String get compliancePass => 'Hyväksytty';

  @override
  String get complianceFail => 'Hylätty';

  @override
  String get compliancePending => 'Odottaa';

  @override
  String get deviceDetails => 'Laitteen tiedot';

  @override
  String get serialNumber => 'Sarjanumero';

  @override
  String get model => 'Malli';

  @override
  String get osVersion => 'Käyttöjärjestelmäversio';

  @override
  String get assetTag => 'Omaisuustunniste';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Rekisteröity';

  @override
  String get assignedUser => 'Määritetty käyttäjä';

  @override
  String get actions => 'Toiminnot';

  @override
  String get actionLock => 'Lukitse';

  @override
  String get actionRestart => 'Käynnistä uudelleen';

  @override
  String get actionShutdown => 'Sammuta';

  @override
  String get actionErase => 'Tyhjennä';

  @override
  String get actionBlankPush => 'Lähetä tyhjä push';

  @override
  String get actionReinstallAgent => 'Asenna agentti uudelleen';

  @override
  String get actionUpdateInventory => 'Päivitä inventaario';

  @override
  String get actionRecoveryLock => 'Palautuslukko';

  @override
  String get actionRemoteDesktopEnable => 'Ota etätyöpöytä käyttöön';

  @override
  String get actionRemoteDesktopDisable => 'Poista etätyöpöytä käytöstä';

  @override
  String get actionLostMode => 'Ota kadonnut-tila käyttöön';

  @override
  String get destructiveActionTitle => 'Vahvista tuhoava toiminto';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Tätä toimintoa ei voi kumota. Kirjoita \"$deviceName\" vahvistaaksesi.';
  }

  @override
  String get destructiveActionHint => 'Kirjoita laitteen nimi vahvistaaksesi';

  @override
  String get confirm => 'Vahvista';

  @override
  String get actionSuccess => 'Toiminto suoritettu onnistuneesti.';

  @override
  String get actionFailed => 'Toiminto epäonnistui. Yritä uudelleen.';

  @override
  String get biometricReason => 'Tunnistaudu käyttääksesi FleetPilotia';

  @override
  String get biometricReasonSecrets =>
      'Tunnistaudu nähdäksesi arkaluonteiset tiedot';

  @override
  String get biometricReasonDestructive =>
      'Tunnistaudu suorittaaksesi tämän toiminnon';

  @override
  String get biometricFailed =>
      'Tunnistautuminen epäonnistui. Yritä uudelleen.';

  @override
  String get profiles => 'Profiilit';

  @override
  String activeProfile(String name) {
    return 'Aktiivinen: $name';
  }

  @override
  String get switchProfile => 'Vaihda profiilia';

  @override
  String get deleteProfile => 'Poista profiili';

  @override
  String get deleteProfileConfirm =>
      'Haluatko varmasti poistaa tämän profiilin? Tätä toimintoa ei voi kumota.';

  @override
  String get noProfiles => 'Profiileja ei ole määritetty';

  @override
  String get settings => 'Asetukset';

  @override
  String get about => 'Tietoja';

  @override
  String version(String version) {
    return 'Versio $version';
  }

  @override
  String get validationRequired => 'Tämä kenttä on pakollinen.';

  @override
  String get validationSubdomain =>
      'Vain kirjaimet, numerot ja väliviivat sallittu. Ei väliviivaa alussa tai lopussa.';

  @override
  String get validationToken =>
      'Virheellinen avainmuoto. Pituus 20–500 merkkiä, vain aakkosnumeeriset merkit ja yleiset erottimet.';

  @override
  String pinLockedOut(int seconds) {
    return 'Liian monta epäonnistunutta yritystä. Yritä uudelleen $seconds sekunnin kuluttua.';
  }

  @override
  String get complianceStatus => 'Vaatimustenmukaisuuden tila';

  @override
  String get platform => 'Alusta';

  @override
  String get deviceName => 'Laitteen nimi';

  @override
  String get searchUsers => 'Hae käyttäjiä...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count käyttäjää',
      one: '1 käyttäjä',
      zero: 'Ei käyttäjiä',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Käyttäjiä ei löytynyt';

  @override
  String get noUsersFoundMessage => 'Kokeile muuttaa hakua tai suodattimia.';

  @override
  String get showArchived => 'Näytä arkistoidut';

  @override
  String get archived => 'Arkistoitu';

  @override
  String get email => 'Sähköposti';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprinttiä',
      one: '1 blueprint',
      zero: 'Ei blueprinttejä',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Blueprinttejä ei löytynyt';

  @override
  String get noBlueprintsFoundMessage =>
      'Blueprinttejä ei ole vielä määritetty.';

  @override
  String get enrollmentActive => 'Rekisteröinti aktiivinen';

  @override
  String get enrollmentInactive => 'Rekisteröinti ei aktiivinen';

  @override
  String get tabOverview => 'Yleiskatsaus';

  @override
  String get tabApps => 'Sovellukset';

  @override
  String get tabStatus => 'Tila';

  @override
  String get tabActivity => 'Toiminta';

  @override
  String get tabCommands => 'Komennot';

  @override
  String get hardware => 'Laitteisto';

  @override
  String get security => 'Turvallisuus';

  @override
  String get totalStorage => 'Kokonaistallennustila';

  @override
  String get availableStorage => 'Vapaa tallennustila';

  @override
  String get totalRam => 'RAM yhteensä';

  @override
  String get wifiMac => 'Wi-Fi MAC-osoite';

  @override
  String get encryption => 'Salaus';

  @override
  String get passcode => 'Pääsykoodi';

  @override
  String get noAppsFound => 'Sovelluksia ei löytynyt';

  @override
  String get noActivityFound => 'Toimintaa ei löytynyt';

  @override
  String get noCommandsFound => 'Komentoja ei löytynyt';

  @override
  String get libraryItems => 'Kirjastokohteet';

  @override
  String get parameters => 'Parametrit';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'Käyttöjärjestelmän koontiversio';

  @override
  String get cellular => 'Mobiiliverkko';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count sovellusta',
      one: '1 sovellus',
      zero: 'Ei sovelluksia',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Ö';

  @override
  String get sortZA => 'Ö → A';

  @override
  String get userDetails => 'Käyttäjän tiedot';

  @override
  String get jobTitle => 'Tehtävänimike';

  @override
  String get department => 'Osasto';

  @override
  String get createdAt => 'Luotu';

  @override
  String get updatedAt => 'Päivitetty';

  @override
  String get assignedDevices => 'Määritetyt laitteet';

  @override
  String get noAssignedDevices =>
      'Tälle käyttäjälle ei ole määritetty laitteita.';

  @override
  String get userInfo => 'Käyttäjätiedot';

  @override
  String get navMore => 'Lisää';

  @override
  String get tabSecrets => 'Salaisuudet';

  @override
  String get filevaultKey => 'FileVault-palautusavain';

  @override
  String get unlockPin => 'Lukituksen avaus -PIN';

  @override
  String get recoveryPassword => 'Palautuslukon salasana';

  @override
  String get bypassCode => 'Aktivointilukon ohituskoodi';

  @override
  String get noSecretsFound =>
      'Tälle laitteelle ei ole saatavilla salaisuuksia.';

  @override
  String get secretCopied => 'Salaisuus kopioitu leikepöydälle';

  @override
  String get threats => 'Uhat';

  @override
  String get noThreatsFound => 'Uhkia ei havaittu.';

  @override
  String get vulnerabilities => 'Haavoittuvuudet';

  @override
  String get noVulnerabilitiesFound => 'Haavoittuvuuksia ei havaittu.';

  @override
  String get aboutApp => 'Tietoja FleetPilotista';

  @override
  String get aboutDescription =>
      'FleetPilot on avoimen lähdekoodin mobiili MDM-hallintasovellus Apple-laitteille.';

  @override
  String get tapToCopy => 'Kopioi napauttamalla';

  @override
  String get devices => 'Laitteet';

  @override
  String get severity => 'Vakavuus';

  @override
  String get tabLocation => 'Sijainti';

  @override
  String get locationNotAvailable =>
      'Sijaintitietoja ei ole saatavilla tälle laitteelle.';

  @override
  String get enableLostModeHint =>
      'Ota kadonnut-tila käyttöön seurataksesi tätä laitetta.';

  @override
  String get lostModeEnabled => 'Kadonnut-tila käytössä';

  @override
  String get noLibraryItemsFound => 'Kirjastokohteita ei löytynyt.';

  @override
  String get licenses => 'Lisenssit';

  @override
  String get lostModeMessage => 'Kadonnut-tilan viesti';

  @override
  String get lostModePhone => 'Puhelinnumero';

  @override
  String get lostModeFootnote =>
      'Valinnainen viesti ja puhelinnumero näytetään laitteella';

  @override
  String get supervised => 'Valvottu';

  @override
  String get unsupervised => 'Valvomaton';

  @override
  String get filterSupervised => 'Valvottu';

  @override
  String get filterUnsupervised => 'Valvomaton';

  @override
  String get language => 'Kieli';

  @override
  String get languageSystem => 'Järjestelmän oletus';

  @override
  String get actionDisableLostMode => 'Poista kadonnut-tila käytöstä';

  @override
  String get actionClearPasscode => 'Tyhjennä pääsykoodi';

  @override
  String get filterLostMode => 'Kadonnut-tila';

  @override
  String get lostMode => 'Kadonnut-tila';

  @override
  String get sectionManagement => 'Hallinta';

  @override
  String get sectionStatus => 'Tila';

  @override
  String get statusMissing => 'Puuttuu';

  @override
  String get statusRemoved => 'Poistettu';

  @override
  String get agent => 'Agentti';

  @override
  String get identifier => 'Tunniste';

  @override
  String get processor => 'Suoritin';

  @override
  String get hardwareUuid => 'Laitteiston UUID';

  @override
  String get devicePosture => 'Laitteen turva-asento';

  @override
  String get unknownDevice => 'Tuntematon laite';

  @override
  String get securityAppLock => 'Sovelluksen lukitus';

  @override
  String get securityAppLockDescription =>
      'Aseta 6-numeroinen PIN sovelluksen suojaamiseksi. Biometrinen tunnistautuminen voidaan ottaa käyttöön PIN-koodin asettamisen jälkeen.';

  @override
  String get securityAppLockActive => 'Sovelluksen lukitus käytössä';

  @override
  String get securityAppLockInactive =>
      'Sovelluksen lukitusta ei ole määritetty';

  @override
  String get securitySetPin => 'Aseta PIN';

  @override
  String get securityChangePin => 'Vaihda PIN';

  @override
  String get securityRemovePin => 'Poista PIN';

  @override
  String get securityCurrentPin => 'Nykyinen PIN';

  @override
  String get securityNewPin => 'Uusi PIN';

  @override
  String get securityConfirmPin => 'Syötä PIN uudelleen vahvistaaksesi.';

  @override
  String get securityPinLength => 'PIN-koodin on oltava 6 numeroa.';

  @override
  String get securityPinMismatch => 'PIN-koodit eivät täsmää.';

  @override
  String get securityPinWrong => 'Väärä PIN-koodi.';

  @override
  String get securityPinSet => 'PIN-koodi on asetettu.';

  @override
  String get securityPinChanged => 'PIN-koodi on vaihdettu.';

  @override
  String get securityPinRemoved =>
      'PIN-koodi ja sovelluksen lukitus on poistettu.';

  @override
  String get securityBiometric => 'Biometrinen';

  @override
  String get securityBiometricDescription =>
      'Käytä sormenjälkeä tai kasvojentunnistusta sovelluksen avaamiseen PIN-koodin sijasta.';

  @override
  String get securityBiometricEnable => 'Biometrinen avaus';

  @override
  String get securityBiometricActive => 'Aktiivinen';

  @override
  String get securityBiometricInactive => 'Ei aktiivinen';

  @override
  String get securityBiometricUnavailable =>
      'Biometrinen tunnistautuminen ei ole käytettävissä tällä laitteella.';

  @override
  String get securityNext => 'Seuraava';

  @override
  String get actionRenewMdm => 'Uusi MDM-profiili';

  @override
  String get actionSetName => 'Aseta laitteen nimi';

  @override
  String get actionSetNameHint => 'Syötä uusi laitteen nimi';

  @override
  String get actionDeleteUser => 'Poista käyttäjä';

  @override
  String get actionDeleteUserName => 'Käyttäjänimi';

  @override
  String get actionDeleteAllUsers => 'Poista kaikki käyttäjät';

  @override
  String get actionForceDeletion => 'Pakota poisto';

  @override
  String get actionUnlockAccount => 'Avaa tili';

  @override
  String get actionPlayLostModeSound => 'Soita kadonnut-tilan ääni';

  @override
  String get actionUpdateLocation => 'Päivitä sijainti';

  @override
  String get erasePin => '6-numeroinen PIN';

  @override
  String get erasePinHint => 'Pakollinen mobiililaitteille';

  @override
  String get erasePreserveDataPlan => 'Säilytä datapaketti';

  @override
  String get eraseDisallowProximitySetup => 'Estä läheisyysasetus';

  @override
  String get eraseReturnToService => 'Palaa käyttöön';

  @override
  String get lockMessage => 'Lukitusviesti (valinnainen)';

  @override
  String get lockPhone => 'Puhelinnumero';

  @override
  String get restartRebuildKernelCache => 'Kokoa kernel-välimuisti uudelleen';

  @override
  String get restartNotifyUser => 'Ilmoita käyttäjälle';

  @override
  String get actionRemoteDesktop => 'Etätyöpöytä';

  @override
  String get tabNotes => 'Muistiinpanot';

  @override
  String get noNotesFound => 'Ei muistiinpanoja';

  @override
  String get addNote => 'Lisää muistiinpano';

  @override
  String get editNote => 'Muokkaa muistiinpanoa';

  @override
  String get deleteNote => 'Poista muistiinpano';

  @override
  String get deleteNoteConfirm =>
      'Haluatko varmasti poistaa tämän muistiinpanon?';

  @override
  String get noteContent => 'Muistiinpanon sisältö';

  @override
  String get noteSaved => 'Muistiinpano tallennettu.';

  @override
  String get noteDeleted => 'Muistiinpano poistettu.';

  @override
  String get editDevice => 'Muokkaa laitetta';

  @override
  String get deviceUpdated => 'Laite päivitetty.';

  @override
  String get deleteDevice => 'Poista laite';

  @override
  String get deleteDeviceConfirm =>
      'Tämä poistaa laitteen pysyvästi MDM:stä. Tätä toimintoa ei voi kumota.';

  @override
  String get deviceDeleted => 'Laite poistettu.';

  @override
  String get cancelLostMode => 'Peruuta kadonnut-tila';

  @override
  String get cancelLostModeConfirm =>
      'Peruutetaanko odottava kadonnut-tila-pyyntö?';

  @override
  String get lostModeCancelled => 'Kadonnut-tila peruutettu.';

  @override
  String get tags => 'Tunnisteet';

  @override
  String get noTags => 'Ei tunnisteita';

  @override
  String get addTag => 'Lisää tunniste';

  @override
  String get tagName => 'Tunnisteen nimi';

  @override
  String get manageTags => 'Hallitse tunnisteita';

  @override
  String get auditLog => 'Tarkastusloki';

  @override
  String get noAuditEvents => 'Tarkastustapahtumia ei löytynyt';

  @override
  String get actionDailyCheckIn => 'Päivittäinen kuittaus';

  @override
  String get licensing => 'Lisensointi';

  @override
  String get deviceLimit => 'Laiteraja';

  @override
  String get devicesUsed => 'Käytössä olevat laitteet';

  @override
  String get licenseType => 'Lisenssityyppi';

  @override
  String get appleDevices => 'Apple-laitteet';

  @override
  String get deleteUser => 'Poista käyttäjä';

  @override
  String get deleteUserConfirm =>
      'Haluatko varmasti poistaa tämän käyttäjän? Tätä toimintoa ei voi kumota.';

  @override
  String get userDeleted => 'Käyttäjä poistettu.';

  @override
  String get createBlueprint => 'Luo Blueprint';

  @override
  String get editBlueprint => 'Muokkaa Blueprinttiä';

  @override
  String get deleteBlueprint => 'Poista Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Blueprintin poistaminen poistaa kaikki siihen liitetyt laitteet rekisteröinnistä. Tätä toimintoa ei voi kumota.';

  @override
  String get blueprintCreated => 'Blueprint luotu.';

  @override
  String get blueprintUpdated => 'Blueprint päivitetty.';

  @override
  String get blueprintDeleted => 'Blueprint poistettu.';

  @override
  String get blueprintName => 'Blueprintin nimi';

  @override
  String get blueprintDescription => 'Kuvaus';

  @override
  String get enrollmentCode => 'Rekisteröintikoodi';

  @override
  String get assignLibraryItem => 'Liitä kirjastokohde';

  @override
  String get removeLibraryItem => 'Poista kirjastokohde';

  @override
  String get libraryItemAssigned => 'Kirjastokohde liitetty.';

  @override
  String get libraryItemRemoved => 'Kirjastokohde poistettu.';

  @override
  String get lostModeDetails => 'Kadonnut-tilan tiedot';

  @override
  String get lostModeEnabledBy => 'Käyttöön ottanut';

  @override
  String get lostModeEnabledAt => 'Käyttöönottoaika';

  @override
  String get searchBlueprints => 'Hae blueprinttejä...';

  @override
  String get searchVulnerabilities => 'Hae haavoittuvuuksia...';

  @override
  String get searchThreats => 'Hae uhkia...';

  @override
  String get searchAuditLog => 'Hae tarkastuslokista...';

  @override
  String get filterCritical => 'Kriittinen';

  @override
  String get filterHigh => 'Korkea';

  @override
  String get filterMedium => 'Keskitaso';

  @override
  String get filterLow => 'Matala';

  @override
  String get filterClearAll => 'Tyhjennä kaikki';

  @override
  String get filterTitle => 'Suodattimet';

  @override
  String get filterApply => 'Käytä';

  @override
  String get filterPlatform => 'Alusta';

  @override
  String get filterSupervision => 'Valvonta';

  @override
  String get filterStatus => 'Tila';

  @override
  String get adeIntegrations => 'ADE-integraatiot';

  @override
  String get noAdeIntegrations => 'ADE-integraatioita ei löytynyt.';

  @override
  String get adeDevices => 'ADE-laitteet';

  @override
  String get noAdeDevices => 'ADE-laitteita ei löytynyt.';

  @override
  String get tokenExpiry => 'Avaimen vanheneminen';

  @override
  String get tokenValid => 'Avain voimassa';

  @override
  String get tokenExpired => 'Avain vanhentunut';

  @override
  String get orgName => 'Organisaatio';

  @override
  String get defaultBlueprint => 'Oletus-Blueprint';

  @override
  String get renewToken => 'Uusi avain';

  @override
  String get publicKey => 'Julkinen avain';

  @override
  String get vulnerabilityDetections => 'Haavoittuvuushavainnot';

  @override
  String get noDetectionsFound => 'Havaintoja ei löytynyt.';

  @override
  String get behavioralDetections => 'Käyttäytymishavainnot';

  @override
  String get noBehavioralDetections => 'Käyttäytymishavaintoja ei löytynyt.';

  @override
  String get searchBehavioralDetections => 'Hae havaintoja...';

  @override
  String get affectedDevices => 'Vaikutuksen alaiset laitteet';

  @override
  String get noAffectedDevices =>
      'Vaikutuksen alaisia laitteita ei löytynyt. Aiemmin vaikutuksen alaiset laitteet on saatettu poistaa.';

  @override
  String get affectedSoftware => 'Vaikutuksen alainen ohjelmisto';

  @override
  String get blueprintTemplates => 'Blueprint-mallit';

  @override
  String get noTemplatesFound => 'Malleja ei löytynyt.';

  @override
  String get otaEnrollmentProfile => 'OTA-rekisteröintiprofiili';

  @override
  String get libraryItemActivity => 'Toiminta';

  @override
  String get libraryItemDeploymentStatus => 'Käyttöönoton tila';

  @override
  String get noActivityFound2 => 'Toimintaa ei löytynyt.';

  @override
  String get noStatusFound => 'Käyttöönoton tilaa ei löytynyt.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count havaintoa',
      one: '1 havainto',
      zero: 'Ei havaintoja',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count integraatiota',
      one: '1 integraatio',
      zero: 'Ei integraatioita',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Haavoittuvuuden tiedot';

  @override
  String get description => 'Kuvaus';

  @override
  String get firstDetected => 'Ensimmäinen havainto';

  @override
  String get lastDetected => 'Viimeisin havainto';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ohjelmistoa',
      one: '1 ohjelmisto',
      zero: 'Ei ohjelmistoja',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Muokkaa integraatiota';

  @override
  String get deleteIntegration => 'Poista integraatio';

  @override
  String get deleteIntegrationConfirm =>
      'Haluatko varmasti poistaa tämän ADE-integraation? Tätä ei voi kumota.';

  @override
  String get integrationDeleted => 'Integraatio poistettu.';

  @override
  String get integrationUpdated => 'Integraatio päivitetty.';

  @override
  String get defaultBlueprintId => 'Oletus-Blueprintin ID';

  @override
  String get phone => 'Puhelin';

  @override
  String get downloadOtaProfile => 'Lataa rekisteröintiprofiili';

  @override
  String get otaProfileCopied =>
      'Rekisteröintiprofiili kopioitu leikepöydälle.';

  @override
  String get noOtaProfile => 'Rekisteröintiprofiilia ei ole saatavilla.';

  @override
  String get createTag => 'Luo tunniste';

  @override
  String get editTag => 'Muokkaa tunnistetta';

  @override
  String get deleteTag => 'Poista tunniste';

  @override
  String get deleteTagConfirm => 'Haluatko varmasti poistaa tämän tunnisteen?';

  @override
  String get tagColor => 'Väri';

  @override
  String get tagCreated => 'Tunniste luotu.';

  @override
  String get tagUpdated => 'Tunniste päivitetty.';

  @override
  String get tagDeleted => 'Tunniste poistettu.';

  @override
  String get noTagsFound => 'Tunnisteita ei löytynyt.';

  @override
  String get libraryItemDetail => 'Kirjastokohde';

  @override
  String get viewActivity => 'Näytä toiminta';

  @override
  String get viewStatus => 'Näytä tila';

  @override
  String get installations => 'Asennukset';

  @override
  String get createAdeIntegration => 'Luo ADE-integraatio';

  @override
  String get adeCreateDescription =>
      'Lähetä palvelinavaimen tiedosto (.p7m) Apple Business Managerista luodaksesi uuden ADE-integraation.';

  @override
  String get selectTokenFile => 'Valitse avaintiedosto';

  @override
  String tokenFileSelected(String name) {
    return 'Avaintiedosto: $name';
  }

  @override
  String get noTokenFileSelected => 'Avaintiedostoa ei ole valittu';

  @override
  String get integrationCreated => 'Integraatio luotu.';

  @override
  String get create => 'Luo';

  @override
  String get step1GetPublicKey => 'Vaihe 1: Lataa julkinen avain';

  @override
  String get step1Description =>
      'Kopioi julkinen avain ja lataa se Apple Business Manageriin.';

  @override
  String get step2UploadToken => 'Vaihe 2: Lähetä palvelinavain';

  @override
  String get step2Description => 'Valitse Applelta ladattu .p7m-avaintiedosto.';

  @override
  String get step3Configure => 'Vaihe 3: Määritä';

  @override
  String get publicKeyCopied => 'Julkinen avain kopioitu leikepöydälle.';

  @override
  String get renewTokenDescription =>
      'Lähetä uusi .p7m-avaintiedosto uusiaksesi tämän integraation avaimen.';

  @override
  String get tokenRenewed => 'Avain uusittu.';

  @override
  String get aboutLinks => 'Linkit';

  @override
  String get aboutWebsite => 'Verkkosivu';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Lähdekoodi';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Teknologiapino';

  @override
  String get aboutFramework => 'Kehys';

  @override
  String get aboutStateManagement => 'Tilanhallinta';

  @override
  String get aboutArchitecture => 'Arkkitehtuuri';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Dataluokat';

  @override
  String get aboutNavigationLabel => 'Navigointi';

  @override
  String get aboutOpenSourceLicenses => 'Avoimen lähdekoodin lisenssit';

  @override
  String get aboutShowHide => 'Vaihda näkyvyys';

  @override
  String get editProfileTitle => 'Muokkaa yhteyttä';

  @override
  String get editProfileSubtitle => 'Päivitä vuokralaisen yhteysasetukset.';

  @override
  String get apiTokenHintEdit => 'Jätä tyhjäksi säilyttääksesi nykyinen avain';

  @override
  String get profileUpdated => 'Profiili päivitetty.';

  @override
  String profileSwitched(String name) {
    return 'Vaihdettu profiiliin $name.';
  }

  @override
  String get securityAutoLock => 'Automaattinen lukitus';

  @override
  String get securityAutoLockDescription =>
      'Vaadi tunnistautuminen automaattisesti, kun sovellus on ollut taustalla.';

  @override
  String get timeoutImmediately => 'Heti';

  @override
  String get timeoutSeconds30 => '30 sekunnin jälkeen';

  @override
  String get timeoutSeconds60 => '1 minuutin jälkeen';

  @override
  String get timeoutSeconds120 => '2 minuutin jälkeen';

  @override
  String get timeoutMinutes5 => '5 minuutin jälkeen';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Ei Blueprinttiä';

  @override
  String get presetSaveFilter => 'Tallenna suodatinasetus';

  @override
  String get presetLoad => 'Lataa asetus';

  @override
  String get presetName => 'Asetuksen nimi';

  @override
  String get presetNameHint => 'esim. Valvomattomat Macit';

  @override
  String get presetSaved => 'Suodatinasetus tallennettu.';

  @override
  String get presetDeleted => 'Suodatinasetus poistettu.';

  @override
  String presetApplied(String name) {
    return 'Asetus \"$name\" otettu käyttöön.';
  }

  @override
  String get presetNoPresets => 'Ei tallennettuja asetuksia';

  @override
  String get presetNoPresetsMessage =>
      'Tallenna nykyiset suodattimet asetukseksi nopeaa käyttöä varten.';

  @override
  String get presetDeleteConfirm => 'Poistetaanko tämä asetus?';

  @override
  String get presetNameRequired => 'Anna asetukselle nimi.';

  @override
  String selectedCount(int count) {
    return '$count valittu';
  }

  @override
  String get selectAll => 'Valitse kaikki';

  @override
  String get deselectAll => 'Poista kaikki valinnat';

  @override
  String get bulkActions => 'Toiminnot';

  @override
  String bulkActionsTitle(int count) {
    return 'Toiminnot $count laitteelle';
  }

  @override
  String get bulkActionAssignTag => 'Liitä tunniste';

  @override
  String get bulkActionAssignTagDescription =>
      'Lisää tunniste kaikkiin valittuihin laitteisiin';

  @override
  String get bulkActionAssignBlueprint => 'Liitä Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Siirrä valitut laitteet blueprinttiin';

  @override
  String get bulkActionLock => 'Lukitse laitteet';

  @override
  String get bulkActionLockDescription =>
      'Lukitse kaikki valitut laitteet etänä';

  @override
  String get bulkActionRestart => 'Käynnistä laitteet uudelleen';

  @override
  String get bulkActionRestartDescription =>
      'Käynnistä kaikki valitut laitteet uudelleen';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Haluatko varmasti käynnistää $count laitetta uudelleen?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Toiminto suoritettu onnistuneesti $count laitteelle.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Suoritettu $success laitteelle, $failed epäonnistui.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed/$total suoritettu';
  }

  @override
  String get biometricReasonBulkAction =>
      'Tunnistaudu suorittaaksesi joukkotoiminnon';

  @override
  String get lockPin => 'Lukitus-PIN (valinnainen)';

  @override
  String get noTagsAvailable =>
      'Tunnisteita ei ole saatavilla. Luo tunnisteita MDM-hallintakonsolissa.';

  @override
  String get noBlueprintsAvailable => 'Blueprinttejä ei ole saatavilla.';

  @override
  String get selectADevice => 'Valitse laite';

  @override
  String get selectABlueprint => 'Valitse Blueprint';

  @override
  String get clearSearch => 'Tyhjennä haku';

  @override
  String get refresh => 'Päivitä';

  @override
  String get moreActions => 'Lisätoiminnot';

  @override
  String get close => 'Sulje';

  @override
  String get onboardingSkip => 'Ohita';

  @override
  String get onboardingNext => 'Seuraava';

  @override
  String get onboardingGetStarted => 'Aloita';

  @override
  String get onboardingWelcomeTitle => 'Tervetuloa FleetPilotiin';

  @override
  String get onboardingWelcomeSubtitle =>
      'Mobiili komentokeskuksesi Apple-laitekannan hallintaan. Seuraa, hallitse ja suojaa koko laitekantaasi mistä tahansa.';

  @override
  String get onboardingDevicesTitle => 'Laitehallinta';

  @override
  String get onboardingDevicesSubtitle =>
      'Täysi näkyvyys ja hallinta jokaiseen laitteeseen laitekannassasi.';

  @override
  String get onboardingDevicesFeature1 =>
      'Näe kaikki rekisteröidyt iPhonet, iPadit, Macit ja Apple TV:t';

  @override
  String get onboardingDevicesFeature2 =>
      'Lähetä etäkomentoja: lukitse, käynnistä uudelleen, tyhjennä ja muuta';

  @override
  String get onboardingDevicesFeature3 =>
      'Seuraa blueprinttejä, sovelluksia ja vaatimustenmukaisuuden tilaa';

  @override
  String get onboardingSecurityTitle => 'Rakennettu turvallisuutta varten';

  @override
  String get onboardingSecuritySubtitle =>
      'Laitekantasi tiedot pysyvät suojattuina useilla turvallisuuskerroksilla.';

  @override
  String get onboardingSecurityFeature1 =>
      'Biometrinen tunnistautuminen Face ID:llä tai sormenjäljellä';

  @override
  String get onboardingSecurityFeature2 =>
      '6-numeroinen PIN-lukitus sovelluksen käyttöön';

  @override
  String get onboardingSecurityFeature3 =>
      'Automaattinen istunnon lukitus aikakatkaisun jälkeen';

  @override
  String get onboardingReadyTitle => 'Valmis käyttöön';

  @override
  String get onboardingReadySubtitle =>
      'Yhdistä MDM-vuokralainen aloittaaksesi Apple-laitekannan hallinnan. Seuraavaksi määrität API-yhteyden ja turva-PIN:n.';

  @override
  String get searchTags => 'Hae tunnisteita';

  @override
  String tagDeviceCount(int count) {
    return '$count laitetta';
  }

  @override
  String get sortTitle => 'Lajittelu';

  @override
  String get sortDirection => 'Lajittelusuunta';

  @override
  String get ascending => 'Nouseva';

  @override
  String get descending => 'Laskeva';

  @override
  String get filterSeverity => 'Vakavuus';

  @override
  String get filterSort => 'Suodata ja lajittele';

  @override
  String get statusQuarantined => 'Karanteenissa';

  @override
  String get statusNotQuarantined => 'Ei karanteenissa';

  @override
  String get statusDetected => 'Havaittu';

  @override
  String get statusReleased => 'Vapautettu';

  @override
  String get severityCritical => 'Kriittinen';

  @override
  String get severityHigh => 'Korkea';

  @override
  String get severityMedium => 'Keskitaso';

  @override
  String get severityLow => 'Matala';

  @override
  String threatCount(int count) {
    return '$count uhkaa';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count havaintoa';
  }

  @override
  String get downloadPublicKey => 'Lataa';

  @override
  String get publicKeySaved => 'Julkinen avain tallennettu';

  @override
  String get sortBy => 'Lajittele';

  @override
  String get sortByCvss => 'CVSS-pistemäärä';

  @override
  String get sortByDeviceCount => 'Laitteet joihin vaikuttaa';

  @override
  String get sortByCveId => 'CVE-tunniste';

  @override
  String vulnCount(int count) {
    return '$count haavoittuvuutta';
  }

  @override
  String get assignTags => 'Tunnisteet';

  @override
  String get noTagsAvailableMessage =>
      'Tunnisteita ei ole saatavilla. Luo tunnisteita ensin.';

  @override
  String get failedToLoadTags => 'Tunnisteiden lataaminen epäonnistui';

  @override
  String get details => 'Tiedot';

  @override
  String get searchLibraryItems => 'Hae kirjastokohteita...';

  @override
  String get categoryCustomScript => 'Mukautettu komentosarja';

  @override
  String get categoryCustomApp => 'Mukautettu sovellus';

  @override
  String get categoryCustomProfile => 'Mukautettu profiili';

  @override
  String get categoryInHouseApp => 'Sisäinen sovellus';

  @override
  String get categoryBuiltIn => 'Sisäänrakennettu';

  @override
  String get categoryVppApps => 'VPP / App Store -sovellukset';

  @override
  String get categoryManagedProfiles => 'Hallitut profiilit';

  @override
  String get categoryKandjiSetup => 'MDM-asennus';

  @override
  String get categoryMacosRelease => 'macOS-päivitykset';

  @override
  String get categoryThreatPolicy => 'Turvallisuuskäytännöt';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprintissä',
      one: '1 blueprintissä',
    );
    return '$_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Kerran';

  @override
  String get executionFrequencyEvery15Min => '15 minuutin välein';

  @override
  String get executionFrequencyEveryDay => 'Päivittäin';

  @override
  String get executionFrequencyNoEnforcement => 'Ei pakotusta';

  @override
  String get scriptBody => 'Komentosarja';

  @override
  String get remediationScript => 'Korjauskomentosarja';

  @override
  String get allProperties => 'Kaikki ominaisuudet';

  @override
  String get builtInLibraryItem => 'Sisäänrakennettu kirjastokohde';

  @override
  String get builtInDetailsHint => 'Tiedot saatavilla Tila-välilehdellä';

  @override
  String get active => 'Aktiivinen';

  @override
  String get yes => 'Kyllä';

  @override
  String get no => 'Ei';

  @override
  String get execution => 'Suoritus';

  @override
  String get restart => 'Uudelleenkäynnistys';

  @override
  String get selfService => 'Itsepalvelu';

  @override
  String get installType => 'Asennustyyppi';

  @override
  String get enforcement => 'Pakotus';

  @override
  String get runsOnMac => 'Toimii Macissa';

  @override
  String get runsOnIphone => 'Toimii iPhonessa';

  @override
  String get runsOnIpad => 'Toimii iPadissa';

  @override
  String get appName => 'Sovelluksen nimi';

  @override
  String get appVersion => 'Sovelluksen versio';

  @override
  String get minOsVersion => 'Käyttöjärjestelmän vähimmäisversio';

  @override
  String get created => 'Luotu';

  @override
  String get updated => 'Päivitetty';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kohdetta',
      one: '1 kohde',
      zero: 'Ei kohteita',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Ratkaistu';

  @override
  String get severityInformational => 'Tiedoksi';

  @override
  String get managementState => 'Hallinnan tila';

  @override
  String get managementStateOpen => 'Avoin';

  @override
  String get managementStateClosed => 'Suljettu';

  @override
  String get classificationMalware => 'Haittaohjelma';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Epäilyttävä';

  @override
  String get classificationMal => 'Haitallinen';

  @override
  String get blueprintRouting => 'Blueprint-reititys';

  @override
  String get blueprintRoutingDesc =>
      'Rekisteröintikoodi ja reititys manuaalista / Android Work Profile -rekisteröintiä varten';

  @override
  String get blueprintRoutingNotConfigured =>
      'Blueprint-reititystä ei ole määritetty tälle vuokralaiselle.';

  @override
  String get enrollmentCodeActive => 'Aktiivinen';

  @override
  String get enrollmentCodeInactive => 'Ei aktiivinen';

  @override
  String get routingActivity => 'Reititystoiminta';

  @override
  String get noRoutingActivity => 'Reititystoimintaa ei löytynyt.';

  @override
  String get selfServiceCategories => 'Itsepalvelukategoriat';

  @override
  String get selfServiceDesc =>
      'Hallitse itsepalvelukategorioita käyttäjillesi';

  @override
  String get addCategory => 'Lisää kategoria';

  @override
  String get categoryName => 'Kategorian nimi';

  @override
  String get deleteCategory => 'Poista kategoria';

  @override
  String get deleteCategoryConfirm =>
      'Haluatko varmasti poistaa tämän kategorian?';

  @override
  String get noCategoriesFound => 'Kategorioita ei löytynyt.';

  @override
  String get categoryCreated => 'Kategoria luotu';

  @override
  String get categoryDeleted => 'Kategoria poistettu';

  @override
  String get profileBody => 'Profiilin XML';

  @override
  String get customProfile => 'Mukautettu profiili';

  @override
  String get classification => 'Luokitus';

  @override
  String get mdmEnabled => 'MDM käytössä';

  @override
  String get enrolledViaDep => 'Rekisteröity DEP:n kautta';

  @override
  String get userApprovedMdm => 'Käyttäjän hyväksymä MDM';

  @override
  String get network => 'Verkko';

  @override
  String get ipAddress => 'IP-osoite';

  @override
  String get wifiNetwork => 'WiFi-verkko';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Aktivointilukko';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Kehittäjätila';

  @override
  String get adbEnabled => 'ADB käytössä';

  @override
  String get unknownSources => 'Tuntemattomat lähteet';

  @override
  String get securityPatch => 'Tietoturvapäivitys';

  @override
  String get provisioningUdid => 'Provisioinnin UDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM-tiedot';

  @override
  String get lastEnrollment => 'Viimeisin rekisteröinti';

  @override
  String get enterpriseId => 'Yritystunniste';

  @override
  String get manufacturer => 'Valmistaja';

  @override
  String get generalStatus => 'Yleinen tila';

  @override
  String get apiLevel => 'API-taso';

  @override
  String get userApprovedEnrollment => 'Käyttäjän hyväksymä rekisteröinti';

  @override
  String get hostname => 'Isäntänimi';

  @override
  String get macAddress => 'MAC-osoite';

  @override
  String get publicIp => 'Julkinen IP';

  @override
  String get volumes => 'Taltiot';

  @override
  String volumeUsed(String percent) {
    return '$percent % käytetty';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available vapaana / $total';
  }

  @override
  String get encrypted => 'Salattu';

  @override
  String get cpuInfo => 'Suoritin';

  @override
  String processorCores(String cores) {
    return '$cores ydintä';
  }

  @override
  String processors(String count) {
    return '$count suoritinta';
  }

  @override
  String get batteryLevel => 'Akun varaustaso';

  @override
  String get lastUser => 'Viimeisin käyttäjä';

  @override
  String get bootVolume => 'Käynnistystaltio';

  @override
  String get localUsers => 'Paikalliset käyttäjät';

  @override
  String get regularUsers => 'Tavalliset käyttäjät';

  @override
  String get systemUsers => 'Järjestelmäkäyttäjät';

  @override
  String get admin => 'Ylläpitäjä';

  @override
  String get assignToBlueprint => 'Liitä Blueprinttiin';

  @override
  String get installOnDevice => 'Asenna laitteelle';

  @override
  String get selectBlueprint => 'Valitse Blueprint';

  @override
  String get selectDevice => 'Valitse laite';

  @override
  String get selfServiceEnabled => 'Itsepalvelu';

  @override
  String get vppLicenses => 'VPP-lisenssit';

  @override
  String get fileName => 'Tiedostonimi';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Laitetiedustelu';

  @override
  String get prismCategoryActivationLock => 'Aktivointilukko';

  @override
  String get prismCategoryApps => 'Sovellukset';

  @override
  String get prismCategoryApplicationFirewall => 'Sovelluspalomuu';

  @override
  String get prismCategoryCellular => 'Mobiiliverkko';

  @override
  String get prismCategoryCertificates => 'Varmenteet';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Työpöytä ja näytönsäästäjä';

  @override
  String get prismCategoryDeviceInformation => 'Laitteen tiedot';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper ja XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Asennetut profiilit';

  @override
  String get prismCategoryKernelExtensions => 'Kernel-laajennukset';

  @override
  String get prismCategoryLaunchAgentsAndDaemons =>
      'Launch Agentit ja Daemonit';

  @override
  String get prismCategoryLocalUsers => 'Paikalliset käyttäjät';

  @override
  String get prismCategoryStartupSettings => 'Käynnistysasetukset';

  @override
  String get prismCategorySystemExtensions => 'Järjestelmälaajennukset';

  @override
  String get prismCategoryTransparencyDatabase => 'Läpinäkyvyystietokanta';

  @override
  String prismRecords(int count) {
    return '$count tietuetta';
  }

  @override
  String get prismNoData => 'Tietoja ei ole saatavilla tälle kategorialle.';

  @override
  String get prismExport => 'Vie CSV';

  @override
  String get prismExportRequested =>
      'Vienti pyydetty. Tarkista latauslinkki hetken kuluttua.';

  @override
  String get prismFilterByFamily => 'Laiteperhe';

  @override
  String get prismAllFamilies => 'Kaikki perheet';

  @override
  String get appearance => 'Ulkoasu';

  @override
  String get themeMode => 'Teema';

  @override
  String get themeModeSystem => 'Järjestelmä';

  @override
  String get themeModeLight => 'Vaalea';

  @override
  String get themeModeDark => 'Tumma';

  @override
  String get shortTypeScript => 'Komentosarja';

  @override
  String get shortTypeCustom => 'Mukautettu';

  @override
  String get shortTypeProfile => 'Profiili';

  @override
  String get shortTypeInHouse => 'Sisäinen';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Hallittu';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Turvallisuus';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'Käyttöjärjestelmäpäivitykset';

  @override
  String get categoryAutoApps => 'Automaattiset sovellukset';

  @override
  String get autoApp => 'Automaattinen sovellus';

  @override
  String get fileSize => 'Tiedostokoko';

  @override
  String get unzipLocation => 'Purkamiskohde';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Tiedosto päivitetty';

  @override
  String get mdmIdentifier => 'MDM-tunniste';

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
  String get typeLabel => 'Tyyppi';

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
