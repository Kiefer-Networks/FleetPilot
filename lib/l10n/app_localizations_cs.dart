// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Czech (`cs`).
class AppLocalizationsCs extends AppLocalizations {
  AppLocalizationsCs([String locale = 'cs']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Zařízení';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Uživatelé';

  @override
  String get navSettings => 'Nastavení';

  @override
  String get welcomeTitle => 'Vítejte ve FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Spravujte svou flotilu zařízení Apple odkudkoli.';

  @override
  String get addProfile => 'Přidat profil';

  @override
  String get editProfile => 'Upravit profil';

  @override
  String get displayName => 'Zobrazovaný název';

  @override
  String get displayNameHint => 'např. Acme Corp — Prod';

  @override
  String get region => 'Region';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Subdoména';

  @override
  String get subdomainHint => 'váš-tenant';

  @override
  String get apiToken => 'API token';

  @override
  String get apiTokenHint => 'Vložte API token zde';

  @override
  String urlPreview(String url) {
    return 'API URL: $url';
  }

  @override
  String get verifyAndSave => 'Ověřit a uložit';

  @override
  String get verifying => 'Ověřování připojení...';

  @override
  String get connectionSuccess => 'Připojení úspěšně ověřeno!';

  @override
  String get errorInvalidToken =>
      'Neplatný API token. Zkontrolujte prosím svůj token ve webové konzoli.';

  @override
  String get errorInsufficientPermissions =>
      'Nedostatečná oprávnění. Ujistěte se, že token má přístup ke čtení zařízení.';

  @override
  String get errorNetworkUnreachable =>
      'API nedostupné. Zkontrolujte své internetové připojení a subdoménu.';

  @override
  String get errorNotFound => 'Požadovaný prostředek nebyl nalezen.';

  @override
  String get errorValidation =>
      'Požadavek obsahoval neplatná data. Zkontrolujte prosím svůj vstup.';

  @override
  String get errorRateLimit =>
      'Příliš mnoho požadavků. Počkejte prosím chvíli a zkuste to znovu.';

  @override
  String get errorServer =>
      'Na serveru došlo k chybě. Zkuste to prosím později.';

  @override
  String get errorUnexpected =>
      'Došlo k neočekávané chybě. Zkuste to prosím znovu.';

  @override
  String get retry => 'Opakovat';

  @override
  String get cancel => 'Zrušit';

  @override
  String get delete => 'Smazat';

  @override
  String get save => 'Uložit';

  @override
  String get search => 'Hledat';

  @override
  String get searchDevices => 'Hledat zařízení...';

  @override
  String get filterAll => 'Vše';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Všechny blueprinty';

  @override
  String loadingDevices(int count) {
    return 'Načítání $count zařízení...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count zařízení',
      many: '$count zařízení',
      few: '$count zařízení',
      one: '1 zařízení',
      zero: 'Žádná zařízení',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Žádná zařízení nenalezena';

  @override
  String get noDevicesFoundMessage => 'Upravte vyhledávání nebo filtry.';

  @override
  String lastCheckIn(String time) {
    return 'Poslední check-in: $time';
  }

  @override
  String get compliancePass => 'Splněno';

  @override
  String get complianceFail => 'Nesplněno';

  @override
  String get compliancePending => 'Čekající';

  @override
  String get deviceDetails => 'Podrobnosti zařízení';

  @override
  String get serialNumber => 'Sériové číslo';

  @override
  String get model => 'Model';

  @override
  String get osVersion => 'Verze OS';

  @override
  String get assetTag => 'Inventární štítek';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Registrováno';

  @override
  String get assignedUser => 'Přiřazený uživatel';

  @override
  String get actions => 'Akce';

  @override
  String get actionLock => 'Zamknout';

  @override
  String get actionRestart => 'Restartovat';

  @override
  String get actionShutdown => 'Vypnout';

  @override
  String get actionErase => 'Vymazat';

  @override
  String get actionBlankPush => 'Odeslat Blank Push';

  @override
  String get actionReinstallAgent => 'Přeinstalovat agenta';

  @override
  String get actionUpdateInventory => 'Aktualizovat inventář';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Aktivovat Remote Desktop';

  @override
  String get actionRemoteDesktopDisable => 'Deaktivovat Remote Desktop';

  @override
  String get actionLostMode => 'Aktivovat režim ztráty';

  @override
  String get destructiveActionTitle => 'Potvrdit destruktivní akci';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Tuto akci nelze vrátit zpět. Pro potvrzení zadejte \"$deviceName\".';
  }

  @override
  String get destructiveActionHint => 'Zadejte název zařízení pro potvrzení';

  @override
  String get confirm => 'Potvrdit';

  @override
  String get actionSuccess => 'Akce úspěšně provedena.';

  @override
  String get actionFailed => 'Akce se nezdařila. Zkuste to prosím znovu.';

  @override
  String get biometricReason => 'Ověřte se pro FleetPilot';

  @override
  String get biometricReasonSecrets => 'Ověřte se pro zobrazení citlivých dat';

  @override
  String get biometricReasonDestructive => 'Ověřte se pro provedení této akce';

  @override
  String get biometricFailed => 'Ověření se nezdařilo. Zkuste to prosím znovu.';

  @override
  String get profiles => 'Profily';

  @override
  String activeProfile(String name) {
    return 'Aktivní: $name';
  }

  @override
  String get switchProfile => 'Přepnout profil';

  @override
  String get deleteProfile => 'Smazat profil';

  @override
  String get deleteProfileConfirm =>
      'Opravdu chcete smazat tento profil? Tuto akci nelze vrátit zpět.';

  @override
  String get noProfiles => 'Žádné profily nejsou nakonfigurovány';

  @override
  String get settings => 'Nastavení';

  @override
  String get about => 'O aplikaci';

  @override
  String version(String version) {
    return 'Verze $version';
  }

  @override
  String get validationRequired => 'Toto pole je povinné.';

  @override
  String get validationSubdomain =>
      'Povolena jsou pouze písmena, čísla a pomlčky. Žádné úvodní ani koncové pomlčky.';

  @override
  String get validationToken =>
      'Neplatný formát tokenu. 20–500 znaků, pouze alfanumerické znaky a běžné oddělovače.';

  @override
  String pinLockedOut(int seconds) {
    return 'Příliš mnoho neúspěšných pokusů. Zkuste to znovu za $seconds sekund.';
  }

  @override
  String get complianceStatus => 'Stav souladu';

  @override
  String get platform => 'Platforma';

  @override
  String get deviceName => 'Název zařízení';

  @override
  String get searchUsers => 'Hledat uživatele...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uživatelů',
      many: '$count uživatelů',
      few: '$count uživatelé',
      one: '1 uživatel',
      zero: 'Žádní uživatelé',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Žádní uživatelé nenalezeni';

  @override
  String get noUsersFoundMessage => 'Upravte vyhledávání nebo filtry.';

  @override
  String get showArchived => 'Zobrazit archivované';

  @override
  String get archived => 'Archivováno';

  @override
  String get email => 'E-mail';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprintů',
      many: '$count blueprintů',
      few: '$count blueprinty',
      one: '1 blueprint',
      zero: 'Žádné blueprinty',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Žádné blueprinty nenalezeny';

  @override
  String get noBlueprintsFoundMessage =>
      'Zatím nebyly nakonfigurovány žádné blueprinty.';

  @override
  String get enrollmentActive => 'Registrace aktivní';

  @override
  String get enrollmentInactive => 'Registrace neaktivní';

  @override
  String get tabOverview => 'Přehled';

  @override
  String get tabApps => 'Aplikace';

  @override
  String get tabStatus => 'Stav';

  @override
  String get tabActivity => 'Aktivita';

  @override
  String get tabCommands => 'Příkazy';

  @override
  String get hardware => 'Hardware';

  @override
  String get security => 'Zabezpečení';

  @override
  String get totalStorage => 'Celkové úložiště';

  @override
  String get availableStorage => 'Dostupné úložiště';

  @override
  String get totalRam => 'Celková RAM';

  @override
  String get wifiMac => 'Wi-Fi MAC adresa';

  @override
  String get encryption => 'Šifrování';

  @override
  String get passcode => 'Přístupový kód';

  @override
  String get noAppsFound => 'Žádné aplikace nenalezeny';

  @override
  String get noActivityFound => 'Žádná aktivita nenalezena';

  @override
  String get noCommandsFound => 'Žádné příkazy nenalezeny';

  @override
  String get libraryItems => 'Prvky knihovny';

  @override
  String get parameters => 'Parametry';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'Sestavení OS';

  @override
  String get cellular => 'Mobilní síť';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikací',
      many: '$count aplikací',
      few: '$count aplikace',
      one: '1 aplikace',
      zero: 'Žádné aplikace',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Podrobnosti uživatele';

  @override
  String get jobTitle => 'Pracovní pozice';

  @override
  String get department => 'Oddělení';

  @override
  String get createdAt => 'Vytvořeno';

  @override
  String get updatedAt => 'Aktualizováno';

  @override
  String get assignedDevices => 'Přiřazená zařízení';

  @override
  String get noAssignedDevices =>
      'Tomuto uživateli nejsou přiřazena žádná zařízení.';

  @override
  String get userInfo => 'Informace o uživateli';

  @override
  String get navMore => 'Více';

  @override
  String get tabSecrets => 'Tajné klíče';

  @override
  String get filevaultKey => 'Obnovovací klíč FileVault';

  @override
  String get unlockPin => 'Odemykací PIN';

  @override
  String get recoveryPassword => 'Heslo Recovery Lock';

  @override
  String get bypassCode => 'Kód pro obejití aktivačního zámku';

  @override
  String get noSecretsFound =>
      'Pro toto zařízení nejsou dostupné žádné tajné klíče.';

  @override
  String get secretCopied => 'Tajný klíč zkopírován do schránky';

  @override
  String get threats => 'Hrozby';

  @override
  String get noThreatsFound => 'Nebyly zjištěny žádné hrozby.';

  @override
  String get vulnerabilities => 'Zranitelnosti';

  @override
  String get noVulnerabilitiesFound => 'Nebyly zjištěny žádné zranitelnosti.';

  @override
  String get aboutApp => 'O aplikaci FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot je open-source aplikace pro správu MDM flotil zařízení Apple.';

  @override
  String get tapToCopy => 'Klepněte pro zkopírování';

  @override
  String get devices => 'Zařízení';

  @override
  String get severity => 'Závažnost';

  @override
  String get tabLocation => 'Poloha';

  @override
  String get locationNotAvailable =>
      'Údaje o poloze nejsou pro toto zařízení dostupné.';

  @override
  String get enableLostModeHint =>
      'Aktivujte režim ztráty pro lokalizaci tohoto zařízení.';

  @override
  String get lostModeEnabled => 'Režim ztráty aktivován';

  @override
  String get noLibraryItemsFound => 'Žádné prvky knihovny nenalezeny.';

  @override
  String get licenses => 'Licence';

  @override
  String get lostModeMessage => 'Zpráva režimu ztráty';

  @override
  String get lostModePhone => 'Telefonní číslo';

  @override
  String get lostModeFootnote =>
      'Volitelná zpráva a telefonní číslo zobrazené na zařízení';

  @override
  String get supervised => 'Pod dohledem';

  @override
  String get unsupervised => 'Bez dohledu';

  @override
  String get filterSupervised => 'Pod dohledem';

  @override
  String get filterUnsupervised => 'Bez dohledu';

  @override
  String get language => 'Jazyk';

  @override
  String get languageSystem => 'Výchozí systémový';

  @override
  String get actionDisableLostMode => 'Deaktivovat režim ztráty';

  @override
  String get actionClearPasscode => 'Vymazat přístupový kód';

  @override
  String get filterLostMode => 'Režim ztráty';

  @override
  String get lostMode => 'Režim ztráty';

  @override
  String get sectionManagement => 'Správa';

  @override
  String get sectionStatus => 'Stav';

  @override
  String get statusMissing => 'Chybí';

  @override
  String get statusRemoved => 'Odstraněno';

  @override
  String get agent => 'Agent';

  @override
  String get identifier => 'Identifikátor';

  @override
  String get processor => 'Procesor';

  @override
  String get hardwareUuid => 'UUID hardwaru';

  @override
  String get devicePosture => 'Stav zařízení';

  @override
  String get unknownDevice => 'Neznámé zařízení';

  @override
  String get securityAppLock => 'Zámek aplikace';

  @override
  String get securityAppLockDescription =>
      'Nastavte 6místný PIN pro ochranu aplikace. Biometrické ověření lze aktivovat po nastavení PINu.';

  @override
  String get securityAppLockActive => 'Zámek aplikace aktivován';

  @override
  String get securityAppLockInactive =>
      'Žádný zámek aplikace není nakonfigurován';

  @override
  String get securitySetPin => 'Nastavit PIN';

  @override
  String get securityChangePin => 'Změnit PIN';

  @override
  String get securityRemovePin => 'Odebrat PIN';

  @override
  String get securityCurrentPin => 'Aktuální PIN';

  @override
  String get securityNewPin => 'Nový PIN';

  @override
  String get securityConfirmPin => 'Zadejte PIN znovu pro potvrzení.';

  @override
  String get securityPinLength => 'PIN musí mít 6 číslic.';

  @override
  String get securityPinMismatch => 'PINy se neshodují.';

  @override
  String get securityPinWrong => 'Nesprávný PIN.';

  @override
  String get securityPinSet => 'PIN byl nastaven.';

  @override
  String get securityPinChanged => 'PIN byl změněn.';

  @override
  String get securityPinRemoved => 'PIN a zámek aplikace byly odebrány.';

  @override
  String get securityBiometric => 'Biometrie';

  @override
  String get securityBiometricDescription =>
      'Použijte otisk prstu nebo rozpoznání obličeje k odemknutí aplikace místo PINu.';

  @override
  String get securityBiometricEnable => 'Biometrické odemknutí';

  @override
  String get securityBiometricActive => 'Aktivní';

  @override
  String get securityBiometricInactive => 'Neaktivní';

  @override
  String get securityBiometricUnavailable =>
      'Biometrické ověření není na tomto zařízení dostupné.';

  @override
  String get securityNext => 'Další';

  @override
  String get actionRenewMdm => 'Obnovit MDM profil';

  @override
  String get actionSetName => 'Nastavit název zařízení';

  @override
  String get actionSetNameHint => 'Zadejte nový název zařízení';

  @override
  String get actionDeleteUser => 'Smazat uživatele';

  @override
  String get actionDeleteUserName => 'Uživatelské jméno';

  @override
  String get actionDeleteAllUsers => 'Smazat všechny uživatele';

  @override
  String get actionForceDeletion => 'Vynutit smazání';

  @override
  String get actionUnlockAccount => 'Odemknout účet';

  @override
  String get actionPlayLostModeSound => 'Přehrát zvuk režimu ztráty';

  @override
  String get actionUpdateLocation => 'Aktualizovat polohu';

  @override
  String get erasePin => '6místný PIN';

  @override
  String get erasePinHint => 'Vyžadováno pro mobilní zařízení';

  @override
  String get erasePreserveDataPlan => 'Zachovat datový tarif';

  @override
  String get eraseDisallowProximitySetup => 'Zakázat nastavení v blízkosti';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Zpráva zámku (volitelná)';

  @override
  String get lockPhone => 'Telefonní číslo';

  @override
  String get restartRebuildKernelCache => 'Znovu sestavit mezipaměť jádra';

  @override
  String get restartNotifyUser => 'Upozornit uživatele';

  @override
  String get actionRemoteDesktop => 'Remote Desktop';

  @override
  String get tabNotes => 'Poznámky';

  @override
  String get noNotesFound => 'Zatím žádné poznámky';

  @override
  String get addNote => 'Přidat poznámku';

  @override
  String get editNote => 'Upravit poznámku';

  @override
  String get deleteNote => 'Smazat poznámku';

  @override
  String get deleteNoteConfirm => 'Opravdu chcete smazat tuto poznámku?';

  @override
  String get noteContent => 'Obsah poznámky';

  @override
  String get noteSaved => 'Poznámka uložena.';

  @override
  String get noteDeleted => 'Poznámka smazána.';

  @override
  String get editDevice => 'Upravit zařízení';

  @override
  String get deviceUpdated => 'Zařízení aktualizováno.';

  @override
  String get deleteDevice => 'Smazat zařízení';

  @override
  String get deleteDeviceConfirm =>
      'Zařízení bude trvale odebráno z MDM. Tuto akci nelze vrátit zpět.';

  @override
  String get deviceDeleted => 'Zařízení smazáno.';

  @override
  String get cancelLostMode => 'Zrušit režim ztráty';

  @override
  String get cancelLostModeConfirm =>
      'Zrušit čekající požadavek na režim ztráty?';

  @override
  String get lostModeCancelled => 'Režim ztráty zrušen.';

  @override
  String get tags => 'Štítky';

  @override
  String get noTags => 'Žádné štítky';

  @override
  String get addTag => 'Přidat štítek';

  @override
  String get tagName => 'Název štítku';

  @override
  String get manageTags => 'Spravovat štítky';

  @override
  String get auditLog => 'Auditní protokol';

  @override
  String get noAuditEvents => 'Žádné auditní události nenalezeny';

  @override
  String get actionDailyCheckIn => 'Denní check-in';

  @override
  String get licensing => 'Licencování';

  @override
  String get deviceLimit => 'Limit zařízení';

  @override
  String get devicesUsed => 'Použitá zařízení';

  @override
  String get licenseType => 'Typ licence';

  @override
  String get appleDevices => 'Zařízení Apple';

  @override
  String get deleteUser => 'Smazat uživatele';

  @override
  String get deleteUserConfirm =>
      'Opravdu chcete smazat tohoto uživatele? Tuto akci nelze vrátit zpět.';

  @override
  String get userDeleted => 'Uživatel smazán.';

  @override
  String get createBlueprint => 'Vytvořit blueprint';

  @override
  String get editBlueprint => 'Upravit blueprint';

  @override
  String get deleteBlueprint => 'Smazat blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Smazání tohoto blueprintu odregistruje všechna přiřazená zařízení. Tuto akci nelze vrátit zpět.';

  @override
  String get blueprintCreated => 'Blueprint vytvořen.';

  @override
  String get blueprintUpdated => 'Blueprint aktualizován.';

  @override
  String get blueprintDeleted => 'Blueprint smazán.';

  @override
  String get blueprintName => 'Název blueprintu';

  @override
  String get blueprintDescription => 'Popis';

  @override
  String get enrollmentCode => 'Registrační kód';

  @override
  String get assignLibraryItem => 'Přiřadit prvek knihovny';

  @override
  String get removeLibraryItem => 'Odebrat prvek knihovny';

  @override
  String get libraryItemAssigned => 'Prvek knihovny přiřazen.';

  @override
  String get libraryItemRemoved => 'Prvek knihovny odebrán.';

  @override
  String get lostModeDetails => 'Podrobnosti režimu ztráty';

  @override
  String get lostModeEnabledBy => 'Aktivoval';

  @override
  String get lostModeEnabledAt => 'Aktivováno dne';

  @override
  String get searchBlueprints => 'Hledat blueprinty...';

  @override
  String get searchVulnerabilities => 'Hledat zranitelnosti...';

  @override
  String get searchThreats => 'Hledat hrozby...';

  @override
  String get searchAuditLog => 'Hledat v auditním protokolu...';

  @override
  String get filterCritical => 'Kritické';

  @override
  String get filterHigh => 'Vysoké';

  @override
  String get filterMedium => 'Střední';

  @override
  String get filterLow => 'Nízké';

  @override
  String get filterClearAll => 'Vymazat vše';

  @override
  String get filterTitle => 'Filtry';

  @override
  String get filterApply => 'Použít';

  @override
  String get filterPlatform => 'Platforma';

  @override
  String get filterSupervision => 'Dohled';

  @override
  String get filterStatus => 'Stav';

  @override
  String get adeIntegrations => 'Integrace ADE';

  @override
  String get noAdeIntegrations => 'Žádné integrace ADE nenalezeny.';

  @override
  String get adeDevices => 'Zařízení ADE';

  @override
  String get noAdeDevices => 'Žádná zařízení ADE nenalezena.';

  @override
  String get tokenExpiry => 'Expirace tokenu';

  @override
  String get tokenValid => 'Token platný';

  @override
  String get tokenExpired => 'Token expiroval';

  @override
  String get orgName => 'Organizace';

  @override
  String get defaultBlueprint => 'Výchozí blueprint';

  @override
  String get renewToken => 'Obnovit token';

  @override
  String get publicKey => 'Veřejný klíč';

  @override
  String get vulnerabilityDetections => 'Detekce zranitelností';

  @override
  String get noDetectionsFound => 'Žádné detekce nenalezeny.';

  @override
  String get behavioralDetections => 'Behaviorální detekce';

  @override
  String get noBehavioralDetections => 'Žádné behaviorální detekce nenalezeny.';

  @override
  String get searchBehavioralDetections => 'Hledat detekce...';

  @override
  String get affectedDevices => 'Zasažená zařízení';

  @override
  String get noAffectedDevices =>
      'Žádná zasažená zařízení nenalezena. Dříve zasažená zařízení mohla být odebrána.';

  @override
  String get affectedSoftware => 'Zasažený software';

  @override
  String get blueprintTemplates => 'Šablony blueprintů';

  @override
  String get noTemplatesFound => 'Žádné šablony nenalezeny.';

  @override
  String get otaEnrollmentProfile => 'Profil OTA registrace';

  @override
  String get libraryItemActivity => 'Aktivita';

  @override
  String get libraryItemDeploymentStatus => 'Stav nasazení';

  @override
  String get noActivityFound2 => 'Žádná aktivita nenalezena.';

  @override
  String get noStatusFound => 'Žádný stav nasazení nenalezen.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detekcí',
      many: '$count detekcí',
      few: '$count detekce',
      one: '1 detekce',
      zero: 'Žádné detekce',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count integrací',
      many: '$count integrací',
      few: '$count integrace',
      one: '1 integrace',
      zero: 'Žádné integrace',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Podrobnosti zranitelnosti';

  @override
  String get description => 'Popis';

  @override
  String get firstDetected => 'Poprvé zjištěno';

  @override
  String get lastDetected => 'Naposledy zjištěno';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count software',
      many: '$count software',
      few: '$count software',
      one: '1 software',
      zero: 'Žádný software',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Upravit integraci';

  @override
  String get deleteIntegration => 'Smazat integraci';

  @override
  String get deleteIntegrationConfirm =>
      'Opravdu chcete smazat tuto integraci ADE? Tuto akci nelze vrátit zpět.';

  @override
  String get integrationDeleted => 'Integrace smazána.';

  @override
  String get integrationUpdated => 'Integrace aktualizována.';

  @override
  String get defaultBlueprintId => 'ID výchozího blueprintu';

  @override
  String get phone => 'Telefon';

  @override
  String get downloadOtaProfile => 'Stáhnout registrační profil';

  @override
  String get otaProfileCopied => 'Registrační profil zkopírován do schránky.';

  @override
  String get noOtaProfile => 'Žádný registrační profil není dostupný.';

  @override
  String get createTag => 'Vytvořit štítek';

  @override
  String get editTag => 'Upravit štítek';

  @override
  String get deleteTag => 'Smazat štítek';

  @override
  String get deleteTagConfirm => 'Opravdu chcete smazat tento štítek?';

  @override
  String get tagColor => 'Barva';

  @override
  String get tagCreated => 'Štítek vytvořen.';

  @override
  String get tagUpdated => 'Štítek aktualizován.';

  @override
  String get tagDeleted => 'Štítek smazán.';

  @override
  String get noTagsFound => 'Žádné štítky nenalezeny.';

  @override
  String get libraryItemDetail => 'Prvek knihovny';

  @override
  String get viewActivity => 'Zobrazit aktivitu';

  @override
  String get viewStatus => 'Zobrazit stav';

  @override
  String get installations => 'Instalace';

  @override
  String get createAdeIntegration => 'Vytvořit integraci ADE';

  @override
  String get adeCreateDescription =>
      'Nahrajte soubor s tokenem serveru (.p7m) z Apple Business Manageru pro vytvoření nové integrace ADE.';

  @override
  String get selectTokenFile => 'Vybrat soubor tokenu';

  @override
  String tokenFileSelected(String name) {
    return 'Soubor tokenu: $name';
  }

  @override
  String get noTokenFileSelected => 'Nebyl vybrán žádný soubor tokenu';

  @override
  String get integrationCreated => 'Integrace vytvořena.';

  @override
  String get create => 'Vytvořit';

  @override
  String get step1GetPublicKey => 'Krok 1: Stáhnout veřejný klíč';

  @override
  String get step1Description =>
      'Zkopírujte veřejný klíč a nahrajte jej do Apple Business Manageru.';

  @override
  String get step2UploadToken => 'Krok 2: Nahrát token serveru';

  @override
  String get step2Description =>
      'Vyberte soubor tokenu .p7m, který jste stáhli od Apple.';

  @override
  String get step3Configure => 'Krok 3: Konfigurace';

  @override
  String get publicKeyCopied => 'Veřejný klíč zkopírován do schránky.';

  @override
  String get renewTokenDescription =>
      'Nahrajte nový soubor tokenu .p7m pro obnovení tokenu této integrace.';

  @override
  String get tokenRenewed => 'Token obnoven.';

  @override
  String get aboutLinks => 'Odkazy';

  @override
  String get aboutWebsite => 'Webová stránka';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Zdrojový kód';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Technologie';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'Správa stavu';

  @override
  String get aboutArchitecture => 'Architektura';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Datové třídy';

  @override
  String get aboutNavigationLabel => 'Navigace';

  @override
  String get aboutOpenSourceLicenses => 'Open Source licence';

  @override
  String get aboutShowHide => 'Přepnout viditelnost';

  @override
  String get editProfileTitle => 'Upravit připojení';

  @override
  String get editProfileSubtitle =>
      'Aktualizujte nastavení připojení k tenantovi.';

  @override
  String get apiTokenHintEdit =>
      'Ponechte prázdné pro zachování stávajícího tokenu';

  @override
  String get profileUpdated => 'Profil aktualizován.';

  @override
  String profileSwitched(String name) {
    return 'Přepnuto na $name.';
  }

  @override
  String get securityAutoLock => 'Automatický zámek';

  @override
  String get securityAutoLockDescription =>
      'Automaticky vyžadovat ověření po přepnutí aplikace na pozadí.';

  @override
  String get timeoutImmediately => 'Ihned';

  @override
  String get timeoutSeconds30 => 'Po 30 sekundách';

  @override
  String get timeoutSeconds60 => 'Po 1 minutě';

  @override
  String get timeoutSeconds120 => 'Po 2 minutách';

  @override
  String get timeoutMinutes5 => 'Po 5 minutách';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Žádný blueprint';

  @override
  String get presetSaveFilter => 'Uložit předvolbu filtrů';

  @override
  String get presetLoad => 'Načíst předvolbu';

  @override
  String get presetName => 'Název předvolby';

  @override
  String get presetNameHint => 'např. Nehlídané Macy';

  @override
  String get presetSaved => 'Předvolba filtrů uložena.';

  @override
  String get presetDeleted => 'Předvolba filtrů smazána.';

  @override
  String presetApplied(String name) {
    return 'Předvolba \"$name\" použita.';
  }

  @override
  String get presetNoPresets => 'Žádné uložené předvolby';

  @override
  String get presetNoPresetsMessage =>
      'Uložte aktuální filtry jako předvolbu pro rychlý přístup.';

  @override
  String get presetDeleteConfirm => 'Smazat tuto předvolbu?';

  @override
  String get presetNameRequired => 'Zadejte prosím název předvolby.';

  @override
  String selectedCount(int count) {
    return '$count vybráno';
  }

  @override
  String get selectAll => 'Vybrat vše';

  @override
  String get deselectAll => 'Zrušit výběr';

  @override
  String get bulkActions => 'Akce';

  @override
  String bulkActionsTitle(int count) {
    return 'Akce pro $count zařízení';
  }

  @override
  String get bulkActionAssignTag => 'Přiřadit štítek';

  @override
  String get bulkActionAssignTagDescription =>
      'Přidat štítek ke všem vybraným zařízením';

  @override
  String get bulkActionAssignBlueprint => 'Přiřadit blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Přesunout vybraná zařízení do blueprintu';

  @override
  String get bulkActionLock => 'Zamknout zařízení';

  @override
  String get bulkActionLockDescription =>
      'Vzdáleně zamknout všechna vybraná zařízení';

  @override
  String get bulkActionRestart => 'Restartovat zařízení';

  @override
  String get bulkActionRestartDescription =>
      'Restartovat všechna vybraná zařízení';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Opravdu chcete restartovat $count zařízení?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Akce na $count zařízeních úspěšně dokončena.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Dokončeno na $success zařízeních, $failed se nezdařilo.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed z $total dokončeno';
  }

  @override
  String get biometricReasonBulkAction =>
      'Ověřte se pro provedení hromadné akce';

  @override
  String get lockPin => 'PIN zámku (volitelný)';

  @override
  String get noTagsAvailable =>
      'Žádné štítky nejsou dostupné. Vytvořte štítky ve webové konzoli MDM.';

  @override
  String get noBlueprintsAvailable => 'Žádné blueprinty nejsou dostupné.';

  @override
  String get selectADevice => 'Vybrat zařízení';

  @override
  String get selectABlueprint => 'Vybrat blueprint';

  @override
  String get clearSearch => 'Vymazat hledání';

  @override
  String get refresh => 'Obnovit';

  @override
  String get moreActions => 'Další akce';

  @override
  String get close => 'Zavřít';

  @override
  String get onboardingSkip => 'Přeskočit';

  @override
  String get onboardingNext => 'Další';

  @override
  String get onboardingGetStarted => 'Začít';

  @override
  String get onboardingWelcomeTitle => 'Vítejte ve FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Vaše mobilní řídicí centrum pro správu flotily zařízení Apple. Sledujte, spravujte a zabezpečte celou svou flotilu odkudkoli.';

  @override
  String get onboardingDevicesTitle => 'Správa zařízení';

  @override
  String get onboardingDevicesSubtitle =>
      'Plná přehlednost a kontrola nad každým zařízením ve vaší flotile.';

  @override
  String get onboardingDevicesFeature1 =>
      'Zobrazení všech registrovaných iPhonů, iPadů, Maců a Apple TV';

  @override
  String get onboardingDevicesFeature2 =>
      'Odesílání vzdálených příkazů: Zamknout, Restartovat, Vymazat a další';

  @override
  String get onboardingDevicesFeature3 =>
      'Sledování blueprintů, aplikací a stavu souladu';

  @override
  String get onboardingSecurityTitle => 'Vytvořeno pro bezpečnost';

  @override
  String get onboardingSecuritySubtitle =>
      'Data vaší flotily zůstávají chráněna několika vrstvami zabezpečení.';

  @override
  String get onboardingSecurityFeature1 =>
      'Biometrické ověření pomocí Face ID nebo otisku prstu';

  @override
  String get onboardingSecurityFeature2 =>
      '6místný PIN zámek pro přístup do aplikace';

  @override
  String get onboardingSecurityFeature3 =>
      'Automatický zámek relace po vypršení časového limitu';

  @override
  String get onboardingReadyTitle => 'Připraveno ke spuštění';

  @override
  String get onboardingReadySubtitle =>
      'Připojte svého MDM tenanta a začněte spravovat flotilu zařízení Apple. Dále nastavíte API připojení a bezpečnostní PIN.';

  @override
  String get searchTags => 'Hledat štítky';

  @override
  String tagDeviceCount(int count) {
    return '$count zařízení';
  }

  @override
  String get sortTitle => 'Řazení';

  @override
  String get sortDirection => 'Směr řazení';

  @override
  String get ascending => 'Vzestupně';

  @override
  String get descending => 'Sestupně';

  @override
  String get filterSeverity => 'Závažnost';

  @override
  String get filterSort => 'Filtrovat a řadit';

  @override
  String get statusQuarantined => 'V karanténě';

  @override
  String get statusNotQuarantined => 'Není v karanténě';

  @override
  String get statusDetected => 'Zjištěno';

  @override
  String get statusReleased => 'Uvolněno';

  @override
  String get severityCritical => 'Kritická';

  @override
  String get severityHigh => 'Vysoká';

  @override
  String get severityMedium => 'Střední';

  @override
  String get severityLow => 'Nízká';

  @override
  String threatCount(int count) {
    return '$count hrozeb';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count detekcí';
  }

  @override
  String get downloadPublicKey => 'Stáhnout';

  @override
  String get publicKeySaved => 'Veřejný klíč uložen';

  @override
  String get sortBy => 'Řadit podle';

  @override
  String get sortByCvss => 'CVSS skóre';

  @override
  String get sortByDeviceCount => 'Zasažená zařízení';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count zranitelností';
  }

  @override
  String get assignTags => 'Štítky';

  @override
  String get noTagsAvailableMessage =>
      'Žádné štítky nejsou dostupné. Nejprve vytvořte štítky.';

  @override
  String get failedToLoadTags => 'Nepodařilo se načíst štítky';

  @override
  String get details => 'Podrobnosti';

  @override
  String get searchLibraryItems => 'Hledat prvky knihovny...';

  @override
  String get categoryCustomScript => 'Vlastní skript';

  @override
  String get categoryCustomApp => 'Vlastní aplikace';

  @override
  String get categoryCustomProfile => 'Vlastní profil';

  @override
  String get categoryInHouseApp => 'Interní aplikace';

  @override
  String get categoryBuiltIn => 'Vestavěné';

  @override
  String get categoryVppApps => 'VPP / App Store aplikace';

  @override
  String get categoryManagedProfiles => 'Spravované profily';

  @override
  String get categoryKandjiSetup => 'Nastavení MDM';

  @override
  String get categoryMacosRelease => 'Aktualizace macOS';

  @override
  String get categoryThreatPolicy => 'Bezpečnostní zásady';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprintech',
      many: '$count blueprintech',
      few: '$count blueprintech',
      one: '1 blueprintu',
    );
    return 'V $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Jednorázově';

  @override
  String get executionFrequencyEvery15Min => 'Každých 15 minut';

  @override
  String get executionFrequencyEveryDay => 'Denně';

  @override
  String get executionFrequencyNoEnforcement => 'Bez vynucení';

  @override
  String get scriptBody => 'Skript';

  @override
  String get remediationScript => 'Nápravný skript';

  @override
  String get allProperties => 'Všechny vlastnosti';

  @override
  String get builtInLibraryItem => 'Vestavěný prvek knihovny';

  @override
  String get builtInDetailsHint => 'Podrobnosti jsou dostupné na záložce Stav';

  @override
  String get active => 'Aktivní';

  @override
  String get yes => 'Ano';

  @override
  String get no => 'Ne';

  @override
  String get execution => 'Spuštění';

  @override
  String get restart => 'Restart';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Typ instalace';

  @override
  String get enforcement => 'Vynucení';

  @override
  String get runsOnMac => 'Běží na Macu';

  @override
  String get runsOnIphone => 'Běží na iPhonu';

  @override
  String get runsOnIpad => 'Běží na iPadu';

  @override
  String get appName => 'Název aplikace';

  @override
  String get appVersion => 'Verze aplikace';

  @override
  String get minOsVersion => 'Min. verze OS';

  @override
  String get created => 'Vytvořeno';

  @override
  String get updated => 'Aktualizováno';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count prvků',
      many: '$count prvků',
      few: '$count prvky',
      one: '1 prvek',
      zero: 'Žádné prvky',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Vyřešeno';

  @override
  String get severityInformational => 'Informativní';

  @override
  String get managementState => 'Stav správy';

  @override
  String get managementStateOpen => 'Otevřeno';

  @override
  String get managementStateClosed => 'Uzavřeno';

  @override
  String get classificationMalware => 'Malware';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Podezřelé';

  @override
  String get classificationMal => 'Škodlivé';

  @override
  String get blueprintRouting => 'Směrování blueprintu';

  @override
  String get blueprintRoutingDesc =>
      'Registrační kód a směrování pro manuální / Android Work Profile registraci';

  @override
  String get blueprintRoutingNotConfigured =>
      'Směrování blueprintu není pro tohoto tenanta nakonfigurováno.';

  @override
  String get enrollmentCodeActive => 'Aktivní';

  @override
  String get enrollmentCodeInactive => 'Neaktivní';

  @override
  String get routingActivity => 'Aktivita směrování';

  @override
  String get noRoutingActivity => 'Žádná aktivita směrování nenalezena.';

  @override
  String get selfServiceCategories => 'Kategorie Self-Service';

  @override
  String get selfServiceDesc =>
      'Spravujte kategorie Self-Service pro své uživatele';

  @override
  String get addCategory => 'Přidat kategorii';

  @override
  String get categoryName => 'Název kategorie';

  @override
  String get deleteCategory => 'Smazat kategorii';

  @override
  String get deleteCategoryConfirm => 'Opravdu chcete smazat tuto kategorii?';

  @override
  String get noCategoriesFound => 'Žádné kategorie nenalezeny.';

  @override
  String get categoryCreated => 'Kategorie vytvořena';

  @override
  String get categoryDeleted => 'Kategorie smazána';

  @override
  String get profileBody => 'XML profilu';

  @override
  String get customProfile => 'Vlastní profil';

  @override
  String get classification => 'Klasifikace';

  @override
  String get mdmEnabled => 'MDM aktivováno';

  @override
  String get enrolledViaDep => 'Registrováno přes DEP';

  @override
  String get userApprovedMdm => 'Uživatelem schválené MDM';

  @override
  String get network => 'Síť';

  @override
  String get ipAddress => 'IP adresa';

  @override
  String get wifiNetwork => 'Wi-Fi síť';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Aktivační zámek';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Vývojářský režim';

  @override
  String get adbEnabled => 'ADB aktivováno';

  @override
  String get unknownSources => 'Neznámé zdroje';

  @override
  String get securityPatch => 'Bezpečnostní záplata';

  @override
  String get provisioningUdid => 'Provisioning UDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM informace';

  @override
  String get lastEnrollment => 'Poslední registrace';

  @override
  String get enterpriseId => 'Enterprise ID';

  @override
  String get manufacturer => 'Výrobce';

  @override
  String get generalStatus => 'Obecný stav';

  @override
  String get apiLevel => 'Úroveň API';

  @override
  String get userApprovedEnrollment => 'Uživatelem schválená registrace';

  @override
  String get hostname => 'Název hostitele';

  @override
  String get macAddress => 'MAC adresa';

  @override
  String get publicIp => 'Veřejná IP';

  @override
  String get volumes => 'Svazky';

  @override
  String volumeUsed(String percent) {
    return '$percent% obsazeno';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available volných z $total';
  }

  @override
  String get encrypted => 'Šifrováno';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores jader';
  }

  @override
  String processors(String count) {
    return '$count procesorů';
  }

  @override
  String get batteryLevel => 'Úroveň baterie';

  @override
  String get lastUser => 'Poslední uživatel';

  @override
  String get bootVolume => 'Spouštěcí svazek';

  @override
  String get localUsers => 'Místní uživatelé';

  @override
  String get regularUsers => 'Standardní uživatelé';

  @override
  String get systemUsers => 'Systémoví uživatelé';

  @override
  String get admin => 'Správce';

  @override
  String get assignToBlueprint => 'Přiřadit k blueprintu';

  @override
  String get installOnDevice => 'Nainstalovat na zařízení';

  @override
  String get selectBlueprint => 'Vybrat blueprint';

  @override
  String get selectDevice => 'Vybrat zařízení';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'VPP licence';

  @override
  String get fileName => 'Název souboru';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Aktivační zámek';

  @override
  String get prismCategoryApps => 'Aplikace';

  @override
  String get prismCategoryApplicationFirewall => 'Aplikační firewall';

  @override
  String get prismCategoryCellular => 'Mobilní síť';

  @override
  String get prismCategoryCertificates => 'Certifikáty';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Plocha a spořič obrazovky';

  @override
  String get prismCategoryDeviceInformation => 'Informace o zařízení';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper a XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Nainstalované profily';

  @override
  String get prismCategoryKernelExtensions => 'Kernel Extensions';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents a Daemons';

  @override
  String get prismCategoryLocalUsers => 'Místní uživatelé';

  @override
  String get prismCategoryStartupSettings => 'Nastavení spuštění';

  @override
  String get prismCategorySystemExtensions => 'Systémová rozšíření';

  @override
  String get prismCategoryTransparencyDatabase => 'Databáze transparentnosti';

  @override
  String prismRecords(int count) {
    return '$count záznamů';
  }

  @override
  String get prismNoData => 'Pro tuto kategorii nejsou dostupná žádná data.';

  @override
  String get prismExport => 'Exportovat CSV';

  @override
  String get prismExportRequested =>
      'Export vyžádán. Odkaz ke stažení bude brzy dostupný.';

  @override
  String get prismFilterByFamily => 'Rodina zařízení';

  @override
  String get prismAllFamilies => 'Všechny rodiny';

  @override
  String get appearance => 'Vzhled';

  @override
  String get themeMode => 'Motiv';

  @override
  String get themeModeSystem => 'Systémový';

  @override
  String get themeModeLight => 'Světlý';

  @override
  String get themeModeDark => 'Tmavý';

  @override
  String get shortTypeScript => 'Skript';

  @override
  String get shortTypeCustom => 'Vlastní';

  @override
  String get shortTypeProfile => 'Profil';

  @override
  String get shortTypeInHouse => 'Interní';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Spravované';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Zabezpečení';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'Aktualizace OS';

  @override
  String get categoryAutoApps => 'Automatické aplikace';

  @override
  String get autoApp => 'Automatická aplikace';

  @override
  String get fileSize => 'Velikost souboru';

  @override
  String get unzipLocation => 'Místo rozbalení';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Soubor aktualizován';

  @override
  String get mdmIdentifier => 'MDM identifikátor';

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
