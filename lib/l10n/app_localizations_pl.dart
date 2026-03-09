// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Polish (`pl`).
class AppLocalizationsPl extends AppLocalizations {
  AppLocalizationsPl([String locale = 'pl']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Urządzenia';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Użytkownicy';

  @override
  String get navSettings => 'Ustawienia';

  @override
  String get welcomeTitle => 'Witaj w FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Zarządzaj flotą urządzeń Apple z dowolnego miejsca.';

  @override
  String get addProfile => 'Dodaj profil';

  @override
  String get editProfile => 'Edytuj profil';

  @override
  String get displayName => 'Nazwa wyświetlana';

  @override
  String get displayNameHint => 'np. Acme Corp — Prod';

  @override
  String get region => 'Region';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Subdomena';

  @override
  String get subdomainHint => 'twoj-tenant';

  @override
  String get apiToken => 'Token API';

  @override
  String get apiTokenHint => 'Wklej token API tutaj';

  @override
  String urlPreview(String url) {
    return 'URL API: $url';
  }

  @override
  String get verifyAndSave => 'Zweryfikuj i zapisz';

  @override
  String get verifying => 'Weryfikowanie połączenia...';

  @override
  String get connectionSuccess => 'Połączenie zweryfikowane pomyślnie!';

  @override
  String get errorInvalidToken =>
      'Nieprawidłowy token API. Sprawdź swój token w konsoli webowej.';

  @override
  String get errorInsufficientPermissions =>
      'Niewystarczające uprawnienia. Upewnij się, że token ma dostęp do odczytu urządzeń.';

  @override
  String get errorNetworkUnreachable =>
      'API niedostępne. Sprawdź połączenie internetowe i subdomenę.';

  @override
  String get errorNotFound => 'Żądany zasób nie został znaleziony.';

  @override
  String get errorValidation =>
      'Żądanie zawierało nieprawidłowe dane. Sprawdź wprowadzone dane.';

  @override
  String get errorRateLimit =>
      'Zbyt wiele żądań. Poczekaj chwilę i spróbuj ponownie.';

  @override
  String get errorServer => 'Serwer napotkał błąd. Spróbuj ponownie później.';

  @override
  String get errorUnexpected =>
      'Wystąpił nieoczekiwany błąd. Spróbuj ponownie.';

  @override
  String get retry => 'Ponów';

  @override
  String get cancel => 'Anuluj';

  @override
  String get delete => 'Usuń';

  @override
  String get save => 'Zapisz';

  @override
  String get search => 'Szukaj';

  @override
  String get searchDevices => 'Szukaj urządzeń...';

  @override
  String get filterAll => 'Wszystkie';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Wszystkie Blueprinty';

  @override
  String loadingDevices(int count) {
    return 'Ładowanie $count urządzeń...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count urządzeń',
      many: '$count urządzeń',
      few: '$count urządzenia',
      one: '1 urządzenie',
      zero: 'Brak urządzeń',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Nie znaleziono urządzeń';

  @override
  String get noDevicesFoundMessage => 'Dostosuj wyszukiwanie lub filtry.';

  @override
  String lastCheckIn(String time) {
    return 'Ostatnie zgłoszenie: $time';
  }

  @override
  String get compliancePass => 'Zgodne';

  @override
  String get complianceFail => 'Niezgodne';

  @override
  String get compliancePending => 'Oczekujące';

  @override
  String get deviceDetails => 'Szczegóły urządzenia';

  @override
  String get serialNumber => 'Numer seryjny';

  @override
  String get model => 'Model';

  @override
  String get osVersion => 'Wersja OS';

  @override
  String get assetTag => 'Tag zasobu';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Data rejestracji';

  @override
  String get assignedUser => 'Przypisany użytkownik';

  @override
  String get actions => 'Akcje';

  @override
  String get actionLock => 'Zablokuj';

  @override
  String get actionRestart => 'Uruchom ponownie';

  @override
  String get actionShutdown => 'Wyłącz';

  @override
  String get actionErase => 'Wymaż';

  @override
  String get actionBlankPush => 'Wyślij Blank Push';

  @override
  String get actionReinstallAgent => 'Zainstaluj ponownie agenta';

  @override
  String get actionUpdateInventory => 'Aktualizuj inwentarz';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Włącz Remote Desktop';

  @override
  String get actionRemoteDesktopDisable => 'Wyłącz Remote Desktop';

  @override
  String get actionLostMode => 'Włącz tryb utracony';

  @override
  String get destructiveActionTitle => 'Potwierdź destrukcyjną akcję';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Tej akcji nie można cofnąć. Wpisz \"$deviceName\" w celu potwierdzenia.';
  }

  @override
  String get destructiveActionHint =>
      'Wpisz nazwę urządzenia w celu potwierdzenia';

  @override
  String get confirm => 'Potwierdź';

  @override
  String get actionSuccess => 'Akcja wykonana pomyślnie.';

  @override
  String get actionFailed => 'Akcja nie powiodła się. Spróbuj ponownie.';

  @override
  String get biometricReason => 'Uwierzytelnij się, aby korzystać z FleetPilot';

  @override
  String get biometricReasonSecrets =>
      'Uwierzytelnij się, aby wyświetlić poufne dane';

  @override
  String get biometricReasonDestructive =>
      'Uwierzytelnij się, aby wykonać tę akcję';

  @override
  String get biometricFailed =>
      'Uwierzytelnianie nie powiodło się. Spróbuj ponownie.';

  @override
  String get profiles => 'Profile';

  @override
  String activeProfile(String name) {
    return 'Aktywny: $name';
  }

  @override
  String get switchProfile => 'Zmień profil';

  @override
  String get deleteProfile => 'Usuń profil';

  @override
  String get deleteProfileConfirm =>
      'Czy na pewno chcesz usunąć ten profil? Tej akcji nie można cofnąć.';

  @override
  String get noProfiles => 'Brak skonfigurowanych profili';

  @override
  String get settings => 'Ustawienia';

  @override
  String get about => 'O aplikacji';

  @override
  String version(String version) {
    return 'Wersja $version';
  }

  @override
  String get validationRequired => 'To pole jest wymagane.';

  @override
  String get validationSubdomain =>
      'Dozwolone tylko litery, cyfry i myślniki. Brak myślników na początku lub końcu.';

  @override
  String get validationToken =>
      'Nieprawidłowy format tokena. 20–500 znaków, tylko znaki alfanumeryczne i typowe separatory.';

  @override
  String pinLockedOut(int seconds) {
    return 'Zbyt wiele nieudanych prób. Spróbuj ponownie za $seconds sekund.';
  }

  @override
  String get complianceStatus => 'Status zgodności';

  @override
  String get platform => 'Platforma';

  @override
  String get deviceName => 'Nazwa urządzenia';

  @override
  String get searchUsers => 'Szukaj użytkowników...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count użytkowników',
      many: '$count użytkowników',
      few: '$count użytkowników',
      one: '1 użytkownik',
      zero: 'Brak użytkowników',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Nie znaleziono użytkowników';

  @override
  String get noUsersFoundMessage => 'Dostosuj wyszukiwanie lub filtry.';

  @override
  String get showArchived => 'Pokaż zarchiwizowanych';

  @override
  String get archived => 'Zarchiwizowany';

  @override
  String get email => 'E-mail';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprintów',
      many: '$count Blueprintów',
      few: '$count Blueprinty',
      one: '1 Blueprint',
      zero: 'Brak Blueprintów',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Nie znaleziono Blueprintów';

  @override
  String get noBlueprintsFoundMessage =>
      'Nie skonfigurowano jeszcze żadnych Blueprintów.';

  @override
  String get enrollmentActive => 'Rejestracja aktywna';

  @override
  String get enrollmentInactive => 'Rejestracja nieaktywna';

  @override
  String get tabOverview => 'Przegląd';

  @override
  String get tabApps => 'Aplikacje';

  @override
  String get tabStatus => 'Status';

  @override
  String get tabActivity => 'Aktywność';

  @override
  String get tabCommands => 'Polecenia';

  @override
  String get hardware => 'Sprzęt';

  @override
  String get security => 'Bezpieczeństwo';

  @override
  String get totalStorage => 'Pamięć całkowita';

  @override
  String get availableStorage => 'Dostępna pamięć';

  @override
  String get totalRam => 'Całkowity RAM';

  @override
  String get wifiMac => 'Adres MAC Wi-Fi';

  @override
  String get encryption => 'Szyfrowanie';

  @override
  String get passcode => 'Kod dostępu';

  @override
  String get noAppsFound => 'Nie znaleziono aplikacji';

  @override
  String get noActivityFound => 'Nie znaleziono aktywności';

  @override
  String get noCommandsFound => 'Nie znaleziono poleceń';

  @override
  String get libraryItems => 'Elementy biblioteki';

  @override
  String get parameters => 'Parametry';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'Wersja kompilacji OS';

  @override
  String get cellular => 'Sieć komórkowa';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikacji',
      many: '$count aplikacji',
      few: '$count aplikacje',
      one: '1 aplikacja',
      zero: 'Brak aplikacji',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Szczegóły użytkownika';

  @override
  String get jobTitle => 'Stanowisko';

  @override
  String get department => 'Dział';

  @override
  String get createdAt => 'Utworzono';

  @override
  String get updatedAt => 'Zaktualizowano';

  @override
  String get assignedDevices => 'Przypisane urządzenia';

  @override
  String get noAssignedDevices =>
      'Temu użytkownikowi nie przypisano żadnych urządzeń.';

  @override
  String get userInfo => 'Informacje o użytkowniku';

  @override
  String get navMore => 'Więcej';

  @override
  String get tabSecrets => 'Sekrety';

  @override
  String get filevaultKey => 'Klucz odzyskiwania FileVault';

  @override
  String get unlockPin => 'PIN odblokowujący';

  @override
  String get recoveryPassword => 'Hasło Recovery Lock';

  @override
  String get bypassCode => 'Kod obejścia blokady aktywacji';

  @override
  String get noSecretsFound => 'Brak sekretów dla tego urządzenia.';

  @override
  String get secretCopied => 'Sekret skopiowany do schowka';

  @override
  String get threats => 'Zagrożenia';

  @override
  String get noThreatsFound => 'Nie wykryto zagrożeń.';

  @override
  String get vulnerabilities => 'Podatności';

  @override
  String get noVulnerabilitiesFound => 'Nie wykryto podatności.';

  @override
  String get aboutApp => 'O FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot to otwartoźródłowa aplikacja do zarządzania MDM flotami urządzeń Apple.';

  @override
  String get tapToCopy => 'Dotknij, aby skopiować';

  @override
  String get devices => 'Urządzenia';

  @override
  String get severity => 'Ważność';

  @override
  String get tabLocation => 'Lokalizacja';

  @override
  String get locationNotAvailable =>
      'Dane lokalizacji nie są dostępne dla tego urządzenia.';

  @override
  String get enableLostModeHint =>
      'Włącz tryb utracony, aby zlokalizować to urządzenie.';

  @override
  String get lostModeEnabled => 'Tryb utracony włączony';

  @override
  String get noLibraryItemsFound => 'Nie znaleziono elementów biblioteki.';

  @override
  String get licenses => 'Licencje';

  @override
  String get lostModeMessage => 'Wiadomość trybu utraconego';

  @override
  String get lostModePhone => 'Numer telefonu';

  @override
  String get lostModeFootnote =>
      'Opcjonalna wiadomość i numer telefonu wyświetlane na urządzeniu';

  @override
  String get supervised => 'Nadzorowane';

  @override
  String get unsupervised => 'Nienadzorowane';

  @override
  String get filterSupervised => 'Nadzorowane';

  @override
  String get filterUnsupervised => 'Nienadzorowane';

  @override
  String get language => 'Język';

  @override
  String get languageSystem => 'Domyślny systemowy';

  @override
  String get actionDisableLostMode => 'Wyłącz tryb utracony';

  @override
  String get actionClearPasscode => 'Wyczyść kod dostępu';

  @override
  String get filterLostMode => 'Tryb utracony';

  @override
  String get lostMode => 'Tryb utracony';

  @override
  String get sectionManagement => 'Zarządzanie';

  @override
  String get sectionStatus => 'Status';

  @override
  String get statusMissing => 'Brakujący';

  @override
  String get statusRemoved => 'Usunięty';

  @override
  String get agent => 'Agent';

  @override
  String get identifier => 'Identyfikator';

  @override
  String get processor => 'Procesor';

  @override
  String get hardwareUuid => 'UUID sprzętu';

  @override
  String get devicePosture => 'Stan urządzenia';

  @override
  String get unknownDevice => 'Nieznane urządzenie';

  @override
  String get securityAppLock => 'Blokada aplikacji';

  @override
  String get securityAppLockDescription =>
      'Ustaw 6-cyfrowy PIN, aby chronić aplikację. Uwierzytelnianie biometryczne można włączyć po ustawieniu PIN-u.';

  @override
  String get securityAppLockActive => 'Blokada aplikacji włączona';

  @override
  String get securityAppLockInactive =>
      'Brak skonfigurowanej blokady aplikacji';

  @override
  String get securitySetPin => 'Ustaw PIN';

  @override
  String get securityChangePin => 'Zmień PIN';

  @override
  String get securityRemovePin => 'Usuń PIN';

  @override
  String get securityCurrentPin => 'Aktualny PIN';

  @override
  String get securityNewPin => 'Nowy PIN';

  @override
  String get securityConfirmPin =>
      'Wprowadź PIN ponownie w celu potwierdzenia.';

  @override
  String get securityPinLength => 'PIN musi mieć 6 cyfr.';

  @override
  String get securityPinMismatch => 'Kody PIN nie są zgodne.';

  @override
  String get securityPinWrong => 'Nieprawidłowy PIN.';

  @override
  String get securityPinSet => 'PIN został ustawiony.';

  @override
  String get securityPinChanged => 'PIN został zmieniony.';

  @override
  String get securityPinRemoved => 'PIN i blokada aplikacji zostały usunięte.';

  @override
  String get securityBiometric => 'Biometria';

  @override
  String get securityBiometricDescription =>
      'Używaj odcisku palca lub rozpoznawania twarzy do odblokowania aplikacji zamiast PIN-u.';

  @override
  String get securityBiometricEnable => 'Odblokowanie biometryczne';

  @override
  String get securityBiometricActive => 'Aktywna';

  @override
  String get securityBiometricInactive => 'Nieaktywna';

  @override
  String get securityBiometricUnavailable =>
      'Uwierzytelnianie biometryczne nie jest dostępne na tym urządzeniu.';

  @override
  String get securityNext => 'Dalej';

  @override
  String get actionRenewMdm => 'Odnów profil MDM';

  @override
  String get actionSetName => 'Ustaw nazwę urządzenia';

  @override
  String get actionSetNameHint => 'Wprowadź nową nazwę urządzenia';

  @override
  String get actionDeleteUser => 'Usuń użytkownika';

  @override
  String get actionDeleteUserName => 'Nazwa użytkownika';

  @override
  String get actionDeleteAllUsers => 'Usuń wszystkich użytkowników';

  @override
  String get actionForceDeletion => 'Wymuś usunięcie';

  @override
  String get actionUnlockAccount => 'Odblokuj konto';

  @override
  String get actionPlayLostModeSound => 'Odtwórz dźwięk trybu utraconego';

  @override
  String get actionUpdateLocation => 'Aktualizuj lokalizację';

  @override
  String get erasePin => '6-cyfrowy PIN';

  @override
  String get erasePinHint => 'Wymagany dla urządzeń mobilnych';

  @override
  String get erasePreserveDataPlan => 'Zachowaj plan danych';

  @override
  String get eraseDisallowProximitySetup => 'Zablokuj konfigurację zbliżeniową';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Wiadomość blokady (opcjonalnie)';

  @override
  String get lockPhone => 'Numer telefonu';

  @override
  String get restartRebuildKernelCache => 'Przebuduj pamięć podręczną jądra';

  @override
  String get restartNotifyUser => 'Powiadom użytkownika';

  @override
  String get actionRemoteDesktop => 'Remote Desktop';

  @override
  String get tabNotes => 'Notatki';

  @override
  String get noNotesFound => 'Brak notatek';

  @override
  String get addNote => 'Dodaj notatkę';

  @override
  String get editNote => 'Edytuj notatkę';

  @override
  String get deleteNote => 'Usuń notatkę';

  @override
  String get deleteNoteConfirm => 'Czy na pewno chcesz usunąć tę notatkę?';

  @override
  String get noteContent => 'Treść notatki';

  @override
  String get noteSaved => 'Notatka zapisana.';

  @override
  String get noteDeleted => 'Notatka usunięta.';

  @override
  String get editDevice => 'Edytuj urządzenie';

  @override
  String get deviceUpdated => 'Urządzenie zaktualizowane.';

  @override
  String get deleteDevice => 'Usuń urządzenie';

  @override
  String get deleteDeviceConfirm =>
      'Urządzenie zostanie trwale usunięte z MDM. Tej akcji nie można cofnąć.';

  @override
  String get deviceDeleted => 'Urządzenie usunięte.';

  @override
  String get cancelLostMode => 'Anuluj tryb utracony';

  @override
  String get cancelLostModeConfirm =>
      'Anulować oczekujące żądanie trybu utraconego?';

  @override
  String get lostModeCancelled => 'Tryb utracony anulowany.';

  @override
  String get tags => 'Tagi';

  @override
  String get noTags => 'Brak tagów';

  @override
  String get addTag => 'Dodaj tag';

  @override
  String get tagName => 'Nazwa tagu';

  @override
  String get manageTags => 'Zarządzaj tagami';

  @override
  String get auditLog => 'Dziennik audytu';

  @override
  String get noAuditEvents => 'Nie znaleziono zdarzeń audytu';

  @override
  String get actionDailyCheckIn => 'Codzienne zgłoszenie';

  @override
  String get licensing => 'Licencjonowanie';

  @override
  String get deviceLimit => 'Limit urządzeń';

  @override
  String get devicesUsed => 'Użyte urządzenia';

  @override
  String get licenseType => 'Typ licencji';

  @override
  String get appleDevices => 'Urządzenia Apple';

  @override
  String get deleteUser => 'Usuń użytkownika';

  @override
  String get deleteUserConfirm =>
      'Czy na pewno chcesz usunąć tego użytkownika? Tej akcji nie można cofnąć.';

  @override
  String get userDeleted => 'Użytkownik usunięty.';

  @override
  String get createBlueprint => 'Utwórz Blueprint';

  @override
  String get editBlueprint => 'Edytuj Blueprint';

  @override
  String get deleteBlueprint => 'Usuń Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Usunięcie tego Blueprintu spowoduje wyrejestrowanie wszystkich przypisanych urządzeń. Tej akcji nie można cofnąć.';

  @override
  String get blueprintCreated => 'Blueprint utworzony.';

  @override
  String get blueprintUpdated => 'Blueprint zaktualizowany.';

  @override
  String get blueprintDeleted => 'Blueprint usunięty.';

  @override
  String get blueprintName => 'Nazwa Blueprintu';

  @override
  String get blueprintDescription => 'Opis';

  @override
  String get enrollmentCode => 'Kod rejestracji';

  @override
  String get assignLibraryItem => 'Przypisz element biblioteki';

  @override
  String get removeLibraryItem => 'Usuń element biblioteki';

  @override
  String get libraryItemAssigned => 'Element biblioteki przypisany.';

  @override
  String get libraryItemRemoved => 'Element biblioteki usunięty.';

  @override
  String get lostModeDetails => 'Szczegóły trybu utraconego';

  @override
  String get lostModeEnabledBy => 'Włączony przez';

  @override
  String get lostModeEnabledAt => 'Włączony';

  @override
  String get searchBlueprints => 'Szukaj Blueprintów...';

  @override
  String get searchVulnerabilities => 'Szukaj podatności...';

  @override
  String get searchThreats => 'Szukaj zagrożeń...';

  @override
  String get searchAuditLog => 'Szukaj w dzienniku audytu...';

  @override
  String get filterCritical => 'Krytyczny';

  @override
  String get filterHigh => 'Wysoki';

  @override
  String get filterMedium => 'Średni';

  @override
  String get filterLow => 'Niski';

  @override
  String get filterClearAll => 'Wyczyść wszystkie';

  @override
  String get filterTitle => 'Filtry';

  @override
  String get filterApply => 'Zastosuj';

  @override
  String get filterPlatform => 'Platforma';

  @override
  String get filterSupervision => 'Nadzór';

  @override
  String get filterStatus => 'Status';

  @override
  String get adeIntegrations => 'Integracje ADE';

  @override
  String get noAdeIntegrations => 'Nie znaleziono integracji ADE.';

  @override
  String get adeDevices => 'Urządzenia ADE';

  @override
  String get noAdeDevices => 'Nie znaleziono urządzeń ADE.';

  @override
  String get tokenExpiry => 'Wygaśnięcie tokena';

  @override
  String get tokenValid => 'Token ważny';

  @override
  String get tokenExpired => 'Token wygasł';

  @override
  String get orgName => 'Organizacja';

  @override
  String get defaultBlueprint => 'Domyślny Blueprint';

  @override
  String get renewToken => 'Odnów token';

  @override
  String get publicKey => 'Klucz publiczny';

  @override
  String get vulnerabilityDetections => 'Wykrycia podatności';

  @override
  String get noDetectionsFound => 'Nie znaleziono wykryć.';

  @override
  String get behavioralDetections => 'Wykrycia behawioralne';

  @override
  String get noBehavioralDetections => 'Nie znaleziono wykryć behawioralnych.';

  @override
  String get searchBehavioralDetections => 'Szukaj wykryć...';

  @override
  String get affectedDevices => 'Dotknięte urządzenia';

  @override
  String get noAffectedDevices =>
      'Nie znaleziono dotkniętych urządzeń. Wcześniej dotknięte urządzenia mogły zostać usunięte.';

  @override
  String get affectedSoftware => 'Dotknięte oprogramowanie';

  @override
  String get blueprintTemplates => 'Szablony Blueprintów';

  @override
  String get noTemplatesFound => 'Nie znaleziono szablonów.';

  @override
  String get otaEnrollmentProfile => 'Profil rejestracji OTA';

  @override
  String get libraryItemActivity => 'Aktywność';

  @override
  String get libraryItemDeploymentStatus => 'Status wdrożenia';

  @override
  String get noActivityFound2 => 'Nie znaleziono aktywności.';

  @override
  String get noStatusFound => 'Nie znaleziono statusu wdrożenia.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count wykryć',
      many: '$count wykryć',
      few: '$count wykrycia',
      one: '1 wykrycie',
      zero: 'Brak wykryć',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count integracji',
      many: '$count integracji',
      few: '$count integracje',
      one: '1 integracja',
      zero: 'Brak integracji',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Szczegóły podatności';

  @override
  String get description => 'Opis';

  @override
  String get firstDetected => 'Pierwsze wykrycie';

  @override
  String get lastDetected => 'Ostatnie wykrycie';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count oprogramowań',
      many: '$count oprogramowań',
      few: '$count oprogramowania',
      one: '1 oprogramowanie',
      zero: 'Brak oprogramowania',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Edytuj integrację';

  @override
  String get deleteIntegration => 'Usuń integrację';

  @override
  String get deleteIntegrationConfirm =>
      'Czy na pewno chcesz usunąć tę integrację ADE? Tej akcji nie można cofnąć.';

  @override
  String get integrationDeleted => 'Integracja usunięta.';

  @override
  String get integrationUpdated => 'Integracja zaktualizowana.';

  @override
  String get defaultBlueprintId => 'ID domyślnego Blueprintu';

  @override
  String get phone => 'Telefon';

  @override
  String get downloadOtaProfile => 'Pobierz profil rejestracji';

  @override
  String get otaProfileCopied => 'Profil rejestracji skopiowany do schowka.';

  @override
  String get noOtaProfile => 'Brak dostępnego profilu rejestracji.';

  @override
  String get createTag => 'Utwórz tag';

  @override
  String get editTag => 'Edytuj tag';

  @override
  String get deleteTag => 'Usuń tag';

  @override
  String get deleteTagConfirm => 'Czy na pewno chcesz usunąć ten tag?';

  @override
  String get tagColor => 'Kolor';

  @override
  String get tagCreated => 'Tag utworzony.';

  @override
  String get tagUpdated => 'Tag zaktualizowany.';

  @override
  String get tagDeleted => 'Tag usunięty.';

  @override
  String get noTagsFound => 'Nie znaleziono tagów.';

  @override
  String get libraryItemDetail => 'Element biblioteki';

  @override
  String get viewActivity => 'Pokaż aktywność';

  @override
  String get viewStatus => 'Pokaż status';

  @override
  String get installations => 'Instalacje';

  @override
  String get createAdeIntegration => 'Utwórz integrację ADE';

  @override
  String get adeCreateDescription =>
      'Prześlij plik tokena serwera (.p7m) z Apple Business Manager, aby utworzyć nową integrację ADE.';

  @override
  String get selectTokenFile => 'Wybierz plik tokena';

  @override
  String tokenFileSelected(String name) {
    return 'Plik tokena: $name';
  }

  @override
  String get noTokenFileSelected => 'Nie wybrano pliku tokena';

  @override
  String get integrationCreated => 'Integracja utworzona.';

  @override
  String get create => 'Utwórz';

  @override
  String get step1GetPublicKey => 'Krok 1: Pobierz klucz publiczny';

  @override
  String get step1Description =>
      'Skopiuj klucz publiczny i prześlij go do Apple Business Manager.';

  @override
  String get step2UploadToken => 'Krok 2: Prześlij token serwera';

  @override
  String get step2Description => 'Wybierz plik tokena .p7m pobrany od Apple.';

  @override
  String get step3Configure => 'Krok 3: Skonfiguruj';

  @override
  String get publicKeyCopied => 'Klucz publiczny skopiowany do schowka.';

  @override
  String get renewTokenDescription =>
      'Prześlij nowy plik tokena .p7m, aby odnowić token tej integracji.';

  @override
  String get tokenRenewed => 'Token odnowiony.';

  @override
  String get aboutLinks => 'Linki';

  @override
  String get aboutWebsite => 'Strona internetowa';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Kod źródłowy';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Technologia';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'Zarządzanie stanem';

  @override
  String get aboutArchitecture => 'Architektura';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Klasy danych';

  @override
  String get aboutNavigationLabel => 'Nawigacja';

  @override
  String get aboutOpenSourceLicenses => 'Licencje Open Source';

  @override
  String get aboutShowHide => 'Przełącz widoczność';

  @override
  String get editProfileTitle => 'Edytuj połączenie';

  @override
  String get editProfileSubtitle =>
      'Zaktualizuj ustawienia połączenia z tenantem.';

  @override
  String get apiTokenHintEdit =>
      'Pozostaw puste, aby zachować istniejący token';

  @override
  String get profileUpdated => 'Profil zaktualizowany.';

  @override
  String profileSwitched(String name) {
    return 'Przełączono na $name.';
  }

  @override
  String get securityAutoLock => 'Automatyczna blokada';

  @override
  String get securityAutoLockDescription =>
      'Automatycznie wymagaj uwierzytelnienia po przejściu aplikacji w tło.';

  @override
  String get timeoutImmediately => 'Natychmiast';

  @override
  String get timeoutSeconds30 => 'Po 30 sekundach';

  @override
  String get timeoutSeconds60 => 'Po 1 minucie';

  @override
  String get timeoutSeconds120 => 'Po 2 minutach';

  @override
  String get timeoutMinutes5 => 'Po 5 minutach';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Brak Blueprintu';

  @override
  String get presetSaveFilter => 'Zapisz preset filtrów';

  @override
  String get presetLoad => 'Wczytaj preset';

  @override
  String get presetName => 'Nazwa presetu';

  @override
  String get presetNameHint => 'np. Nienadzorowane Maki';

  @override
  String get presetSaved => 'Preset filtrów zapisany.';

  @override
  String get presetDeleted => 'Preset filtrów usunięty.';

  @override
  String presetApplied(String name) {
    return 'Preset \"$name\" zastosowany.';
  }

  @override
  String get presetNoPresets => 'Brak zapisanych presetów';

  @override
  String get presetNoPresetsMessage =>
      'Zapisz aktualne filtry jako preset, aby mieć szybki dostęp.';

  @override
  String get presetDeleteConfirm => 'Usunąć ten preset?';

  @override
  String get presetNameRequired => 'Podaj nazwę presetu.';

  @override
  String selectedCount(int count) {
    return '$count zaznaczono';
  }

  @override
  String get selectAll => 'Zaznacz wszystkie';

  @override
  String get deselectAll => 'Odznacz wszystkie';

  @override
  String get bulkActions => 'Akcje';

  @override
  String bulkActionsTitle(int count) {
    return 'Akcje dla $count urządzeń';
  }

  @override
  String get bulkActionAssignTag => 'Przypisz tag';

  @override
  String get bulkActionAssignTagDescription =>
      'Dodaj tag do wszystkich zaznaczonych urządzeń';

  @override
  String get bulkActionAssignBlueprint => 'Przypisz Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Przenieś zaznaczone urządzenia do Blueprintu';

  @override
  String get bulkActionLock => 'Zablokuj urządzenia';

  @override
  String get bulkActionLockDescription =>
      'Zdalnie zablokuj wszystkie zaznaczone urządzenia';

  @override
  String get bulkActionRestart => 'Uruchom ponownie urządzenia';

  @override
  String get bulkActionRestartDescription =>
      'Uruchom ponownie wszystkie zaznaczone urządzenia';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Czy na pewno chcesz uruchomić ponownie $count urządzeń?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Akcja wykonana pomyślnie na $count urządzeniach.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Ukończono na $success urządzeniach, $failed nie powiodło się.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return 'Ukończono $completed z $total';
  }

  @override
  String get biometricReasonBulkAction =>
      'Uwierzytelnij się, aby wykonać akcję zbiorczą';

  @override
  String get lockPin => 'PIN blokady (opcjonalnie)';

  @override
  String get noTagsAvailable =>
      'Brak dostępnych tagów. Utwórz tagi w konsoli webowej MDM.';

  @override
  String get noBlueprintsAvailable => 'Brak dostępnych Blueprintów.';

  @override
  String get selectADevice => 'Wybierz urządzenie';

  @override
  String get selectABlueprint => 'Wybierz Blueprint';

  @override
  String get clearSearch => 'Wyczyść wyszukiwanie';

  @override
  String get refresh => 'Odśwież';

  @override
  String get moreActions => 'Więcej akcji';

  @override
  String get close => 'Zamknij';

  @override
  String get onboardingSkip => 'Pomiń';

  @override
  String get onboardingNext => 'Dalej';

  @override
  String get onboardingGetStarted => 'Rozpocznij';

  @override
  String get onboardingWelcomeTitle => 'Witaj w FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Twoje mobilne centrum dowodzenia do zarządzania flotą urządzeń Apple. Monitoruj, zarządzaj i zabezpieczaj całą flotę z dowolnego miejsca.';

  @override
  String get onboardingDevicesTitle => 'Zarządzanie urządzeniami';

  @override
  String get onboardingDevicesSubtitle =>
      'Pełna widoczność i kontrola nad każdym urządzeniem w Twojej flocie.';

  @override
  String get onboardingDevicesFeature1 =>
      'Przeglądaj wszystkie zarejestrowane iPhone\'y, iPady, Maki i Apple TV';

  @override
  String get onboardingDevicesFeature2 =>
      'Wysyłaj polecenia zdalne: blokowanie, restart, wymazanie i więcej';

  @override
  String get onboardingDevicesFeature3 =>
      'Śledź Blueprinty, aplikacje i status zgodności';

  @override
  String get onboardingSecurityTitle => 'Zbudowane z myślą o bezpieczeństwie';

  @override
  String get onboardingSecuritySubtitle =>
      'Dane Twojej floty są chronione wieloma warstwami zabezpieczeń.';

  @override
  String get onboardingSecurityFeature1 =>
      'Uwierzytelnianie biometryczne za pomocą Face ID lub odcisku palca';

  @override
  String get onboardingSecurityFeature2 =>
      '6-cyfrowa blokada PIN do dostępu do aplikacji';

  @override
  String get onboardingSecurityFeature3 =>
      'Automatyczna blokada sesji po przekroczeniu limitu czasu';

  @override
  String get onboardingReadyTitle => 'Gotowy do startu';

  @override
  String get onboardingReadySubtitle =>
      'Połącz swojego tenanta MDM, aby rozpocząć zarządzanie flotą urządzeń Apple. W następnym kroku skonfigurujesz połączenie API i PIN bezpieczeństwa.';

  @override
  String get searchTags => 'Szukaj tagów';

  @override
  String tagDeviceCount(int count) {
    return '$count urządzeń';
  }

  @override
  String get sortTitle => 'Sortowanie';

  @override
  String get sortDirection => 'Kierunek sortowania';

  @override
  String get ascending => 'Rosnąco';

  @override
  String get descending => 'Malejąco';

  @override
  String get filterSeverity => 'Ważność';

  @override
  String get filterSort => 'Filtruj i sortuj';

  @override
  String get statusQuarantined => 'Kwarantanna';

  @override
  String get statusNotQuarantined => 'Bez kwarantanny';

  @override
  String get statusDetected => 'Wykryto';

  @override
  String get statusReleased => 'Zwolniony';

  @override
  String get severityCritical => 'Krytyczny';

  @override
  String get severityHigh => 'Wysoki';

  @override
  String get severityMedium => 'Średni';

  @override
  String get severityLow => 'Niski';

  @override
  String threatCount(int count) {
    return '$count zagrożeń';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count wykryć';
  }

  @override
  String get downloadPublicKey => 'Pobierz';

  @override
  String get publicKeySaved => 'Klucz publiczny zapisany';

  @override
  String get sortBy => 'Sortuj według';

  @override
  String get sortByCvss => 'Ocena CVSS';

  @override
  String get sortByDeviceCount => 'Dotknięte urządzenia';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count podatności';
  }

  @override
  String get assignTags => 'Tagi';

  @override
  String get noTagsAvailableMessage =>
      'Brak dostępnych tagów. Najpierw utwórz tagi.';

  @override
  String get failedToLoadTags => 'Nie udało się załadować tagów';

  @override
  String get details => 'Szczegóły';

  @override
  String get searchLibraryItems => 'Szukaj elementów biblioteki...';

  @override
  String get categoryCustomScript => 'Skrypt niestandardowy';

  @override
  String get categoryCustomApp => 'Aplikacja niestandardowa';

  @override
  String get categoryCustomProfile => 'Profil niestandardowy';

  @override
  String get categoryInHouseApp => 'Aplikacja wewnętrzna';

  @override
  String get categoryBuiltIn => 'Wbudowane';

  @override
  String get categoryVppApps => 'VPP / Aplikacje App Store';

  @override
  String get categoryManagedProfiles => 'Profile zarządzane';

  @override
  String get categoryKandjiSetup => 'Konfiguracja MDM';

  @override
  String get categoryMacosRelease => 'Aktualizacje macOS';

  @override
  String get categoryThreatPolicy => 'Polityki bezpieczeństwa';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprintach',
      many: '$count Blueprintach',
      few: '$count Blueprintach',
      one: '1 Blueprincie',
    );
    return 'W $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Jednorazowo';

  @override
  String get executionFrequencyEvery15Min => 'Co 15 minut';

  @override
  String get executionFrequencyEveryDay => 'Codziennie';

  @override
  String get executionFrequencyNoEnforcement => 'Bez wymuszania';

  @override
  String get scriptBody => 'Skrypt';

  @override
  String get remediationScript => 'Skrypt naprawczy';

  @override
  String get allProperties => 'Wszystkie właściwości';

  @override
  String get builtInLibraryItem => 'Wbudowany element biblioteki';

  @override
  String get builtInDetailsHint => 'Szczegóły dostępne na karcie Status';

  @override
  String get active => 'Aktywny';

  @override
  String get yes => 'Tak';

  @override
  String get no => 'Nie';

  @override
  String get execution => 'Wykonanie';

  @override
  String get restart => 'Restart';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Typ instalacji';

  @override
  String get enforcement => 'Wymuszanie';

  @override
  String get runsOnMac => 'Działa na Mac';

  @override
  String get runsOnIphone => 'Działa na iPhone';

  @override
  String get runsOnIpad => 'Działa na iPad';

  @override
  String get appName => 'Nazwa aplikacji';

  @override
  String get appVersion => 'Wersja aplikacji';

  @override
  String get minOsVersion => 'Min. wersja OS';

  @override
  String get created => 'Utworzono';

  @override
  String get updated => 'Zaktualizowano';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count elementów',
      many: '$count elementów',
      few: '$count elementy',
      one: '1 element',
      zero: 'Brak elementów',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Rozwiązany';

  @override
  String get severityInformational => 'Informacyjny';

  @override
  String get managementState => 'Stan zarządzania';

  @override
  String get managementStateOpen => 'Otwarty';

  @override
  String get managementStateClosed => 'Zamknięty';

  @override
  String get classificationMalware => 'Malware';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Podejrzany';

  @override
  String get classificationMal => 'Szkodliwy';

  @override
  String get blueprintRouting => 'Routing Blueprintów';

  @override
  String get blueprintRoutingDesc =>
      'Kod rejestracji i routing dla ręcznej rejestracji / Android Work Profile';

  @override
  String get blueprintRoutingNotConfigured =>
      'Routing Blueprintów nie jest skonfigurowany dla tego tenanta.';

  @override
  String get enrollmentCodeActive => 'Aktywny';

  @override
  String get enrollmentCodeInactive => 'Nieaktywny';

  @override
  String get routingActivity => 'Aktywność routingu';

  @override
  String get noRoutingActivity => 'Nie znaleziono aktywności routingu.';

  @override
  String get selfServiceCategories => 'Kategorie Self-Service';

  @override
  String get selfServiceDesc =>
      'Zarządzaj kategoriami Self-Service dla swoich użytkowników';

  @override
  String get addCategory => 'Dodaj kategorię';

  @override
  String get categoryName => 'Nazwa kategorii';

  @override
  String get deleteCategory => 'Usuń kategorię';

  @override
  String get deleteCategoryConfirm =>
      'Czy na pewno chcesz usunąć tę kategorię?';

  @override
  String get noCategoriesFound => 'Nie znaleziono kategorii.';

  @override
  String get categoryCreated => 'Kategoria utworzona';

  @override
  String get categoryDeleted => 'Kategoria usunięta';

  @override
  String get profileBody => 'XML profilu';

  @override
  String get customProfile => 'Profil niestandardowy';

  @override
  String get classification => 'Klasyfikacja';

  @override
  String get mdmEnabled => 'MDM włączone';

  @override
  String get enrolledViaDep => 'Zarejestrowano przez DEP';

  @override
  String get userApprovedMdm => 'MDM zatwierdzone przez użytkownika';

  @override
  String get network => 'Sieć';

  @override
  String get ipAddress => 'Adres IP';

  @override
  String get wifiNetwork => 'Sieć Wi-Fi';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Blokada aktywacji';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Tryb programisty';

  @override
  String get adbEnabled => 'ADB włączone';

  @override
  String get unknownSources => 'Nieznane źródła';

  @override
  String get securityPatch => 'Poprawka zabezpieczeń';

  @override
  String get provisioningUdid => 'UDID provisioningu';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'Informacje MDM';

  @override
  String get lastEnrollment => 'Ostatnia rejestracja';

  @override
  String get enterpriseId => 'ID przedsiębiorstwa';

  @override
  String get manufacturer => 'Producent';

  @override
  String get generalStatus => 'Status ogólny';

  @override
  String get apiLevel => 'Poziom API';

  @override
  String get userApprovedEnrollment =>
      'Rejestracja zatwierdzona przez użytkownika';

  @override
  String get hostname => 'Nazwa hosta';

  @override
  String get macAddress => 'Adres MAC';

  @override
  String get publicIp => 'Publiczny IP';

  @override
  String get volumes => 'Woluminy';

  @override
  String volumeUsed(String percent) {
    return '$percent% zajęte';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available wolne z $total';
  }

  @override
  String get encrypted => 'Zaszyfrowany';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores rdzeni';
  }

  @override
  String processors(String count) {
    return '$count procesorów';
  }

  @override
  String get batteryLevel => 'Poziom baterii';

  @override
  String get lastUser => 'Ostatni użytkownik';

  @override
  String get bootVolume => 'Wolumin rozruchowy';

  @override
  String get localUsers => 'Użytkownicy lokalni';

  @override
  String get regularUsers => 'Użytkownicy standardowi';

  @override
  String get systemUsers => 'Użytkownicy systemowi';

  @override
  String get admin => 'Administrator';

  @override
  String get assignToBlueprint => 'Przypisz do Blueprintu';

  @override
  String get installOnDevice => 'Zainstaluj na urządzeniu';

  @override
  String get selectBlueprint => 'Wybierz Blueprint';

  @override
  String get selectDevice => 'Wybierz urządzenie';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'Licencje VPP';

  @override
  String get fileName => 'Nazwa pliku';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Blokada aktywacji';

  @override
  String get prismCategoryApps => 'Aplikacje';

  @override
  String get prismCategoryApplicationFirewall => 'Zapora aplikacji';

  @override
  String get prismCategoryCellular => 'Sieć komórkowa';

  @override
  String get prismCategoryCertificates => 'Certyfikaty';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Pulpit i wygaszacz ekranu';

  @override
  String get prismCategoryDeviceInformation => 'Informacje o urządzeniu';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper i XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Zainstalowane profile';

  @override
  String get prismCategoryKernelExtensions => 'Rozszerzenia jądra';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents i Daemons';

  @override
  String get prismCategoryLocalUsers => 'Użytkownicy lokalni';

  @override
  String get prismCategoryStartupSettings => 'Ustawienia uruchamiania';

  @override
  String get prismCategorySystemExtensions => 'Rozszerzenia systemowe';

  @override
  String get prismCategoryTransparencyDatabase => 'Baza danych przejrzystości';

  @override
  String prismRecords(int count) {
    return '$count rekordów';
  }

  @override
  String get prismNoData => 'Brak danych dla tej kategorii.';

  @override
  String get prismExport => 'Eksportuj CSV';

  @override
  String get prismExportRequested =>
      'Eksport zlecony. Link do pobrania będzie wkrótce dostępny.';

  @override
  String get prismFilterByFamily => 'Rodzina urządzeń';

  @override
  String get prismAllFamilies => 'Wszystkie rodziny';

  @override
  String get appearance => 'Wygląd';

  @override
  String get themeMode => 'Motyw';

  @override
  String get themeModeSystem => 'Systemowy';

  @override
  String get themeModeLight => 'Jasny';

  @override
  String get themeModeDark => 'Ciemny';

  @override
  String get shortTypeScript => 'Skrypt';

  @override
  String get shortTypeCustom => 'Własne';

  @override
  String get shortTypeProfile => 'Profil';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Zarządzane';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Bezpieczeństwo';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'Aktualizacje OS';

  @override
  String get categoryAutoApps => 'Aplikacje automatyczne';

  @override
  String get autoApp => 'Aplikacja automatyczna';

  @override
  String get fileSize => 'Rozmiar pliku';

  @override
  String get unzipLocation => 'Lokalizacja rozpakowania';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Plik zaktualizowany';

  @override
  String get mdmIdentifier => 'Identyfikator MDM';

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
