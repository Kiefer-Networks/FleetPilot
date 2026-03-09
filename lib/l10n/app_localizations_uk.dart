// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Ukrainian (`uk`).
class AppLocalizationsUk extends AppLocalizations {
  AppLocalizationsUk([String locale = 'uk']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Пристрої';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Користувачі';

  @override
  String get navSettings => 'Налаштування';

  @override
  String get welcomeTitle => 'Ласкаво просимо до FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Керуйте своїм парком пристроїв Apple звідусіль.';

  @override
  String get addProfile => 'Додати профіль';

  @override
  String get editProfile => 'Редагувати профіль';

  @override
  String get displayName => 'Відображуване ім\'я';

  @override
  String get displayNameHint => 'напр. Acme Corp — Prod';

  @override
  String get region => 'Регіон';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Субдомен';

  @override
  String get subdomainHint => 'ваш-тенант';

  @override
  String get apiToken => 'API-токен';

  @override
  String get apiTokenHint => 'Вставте API-токен тут';

  @override
  String urlPreview(String url) {
    return 'API URL: $url';
  }

  @override
  String get verifyAndSave => 'Перевірити і зберегти';

  @override
  String get verifying => 'Перевірка з\'єднання...';

  @override
  String get connectionSuccess => 'З\'єднання успішно перевірено!';

  @override
  String get errorInvalidToken =>
      'Недійсний API-токен. Будь ласка, перевірте свій токен у вебконсолі.';

  @override
  String get errorInsufficientPermissions =>
      'Недостатньо прав. Переконайтеся, що токен має доступ на читання пристроїв.';

  @override
  String get errorNetworkUnreachable =>
      'API недоступний. Перевірте інтернет-з\'єднання та субдомен.';

  @override
  String get errorNotFound => 'Запитаний ресурс не знайдено.';

  @override
  String get errorValidation =>
      'Запит містив недійсні дані. Будь ласка, перевірте введені дані.';

  @override
  String get errorRateLimit => 'Забагато запитів. Зачекайте і спробуйте знову.';

  @override
  String get errorServer => 'На сервері сталася помилка. Спробуйте пізніше.';

  @override
  String get errorUnexpected =>
      'Сталася неочікувана помилка. Спробуйте ще раз.';

  @override
  String get retry => 'Повторити';

  @override
  String get cancel => 'Скасувати';

  @override
  String get delete => 'Видалити';

  @override
  String get save => 'Зберегти';

  @override
  String get search => 'Пошук';

  @override
  String get searchDevices => 'Шукати пристрої...';

  @override
  String get filterAll => 'Усі';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Усі Blueprints';

  @override
  String loadingDevices(int count) {
    return 'Завантаження $count пристроїв...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пристроїв',
      many: '$count пристроїв',
      few: '$count пристрої',
      one: '1 пристрій',
      zero: 'Немає пристроїв',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Пристроїв не знайдено';

  @override
  String get noDevicesFoundMessage => 'Змініть пошуковий запит або фільтри.';

  @override
  String lastCheckIn(String time) {
    return 'Остання реєстрація: $time';
  }

  @override
  String get compliancePass => 'Пройдено';

  @override
  String get complianceFail => 'Не пройдено';

  @override
  String get compliancePending => 'Очікується';

  @override
  String get deviceDetails => 'Деталі пристрою';

  @override
  String get serialNumber => 'Серійний номер';

  @override
  String get model => 'Модель';

  @override
  String get osVersion => 'Версія ОС';

  @override
  String get assetTag => 'Інвентарна мітка';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Зареєстровано';

  @override
  String get assignedUser => 'Призначений користувач';

  @override
  String get actions => 'Дії';

  @override
  String get actionLock => 'Заблокувати';

  @override
  String get actionRestart => 'Перезавантажити';

  @override
  String get actionShutdown => 'Вимкнути';

  @override
  String get actionErase => 'Стерти';

  @override
  String get actionBlankPush => 'Надіслати Blank Push';

  @override
  String get actionReinstallAgent => 'Перевстановити агент';

  @override
  String get actionUpdateInventory => 'Оновити інвентар';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Увімкнути віддалений робочий стіл';

  @override
  String get actionRemoteDesktopDisable => 'Вимкнути віддалений робочий стіл';

  @override
  String get actionLostMode => 'Увімкнути режим втрати';

  @override
  String get destructiveActionTitle => 'Підтвердити деструктивну дію';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Цю дію не можна скасувати. Введіть \"$deviceName\" для підтвердження.';
  }

  @override
  String get destructiveActionHint =>
      'Введіть назву пристрою для підтвердження';

  @override
  String get confirm => 'Підтвердити';

  @override
  String get actionSuccess => 'Дію успішно виконано.';

  @override
  String get actionFailed => 'Дію не вдалося виконати. Спробуйте ще раз.';

  @override
  String get biometricReason => 'Автентифікуйтеся для доступу до FleetPilot';

  @override
  String get biometricReasonSecrets =>
      'Автентифікуйтеся для перегляду конфіденційних даних';

  @override
  String get biometricReasonDestructive =>
      'Автентифікуйтеся для виконання цієї дії';

  @override
  String get biometricFailed => 'Автентифікацію не пройдено. Спробуйте ще раз.';

  @override
  String get profiles => 'Профілі';

  @override
  String activeProfile(String name) {
    return 'Активний: $name';
  }

  @override
  String get switchProfile => 'Змінити профіль';

  @override
  String get deleteProfile => 'Видалити профіль';

  @override
  String get deleteProfileConfirm =>
      'Ви дійсно хочете видалити цей профіль? Цю дію не можна скасувати.';

  @override
  String get noProfiles => 'Немає налаштованих профілів';

  @override
  String get settings => 'Налаштування';

  @override
  String get about => 'Про застосунок';

  @override
  String version(String version) {
    return 'Версія $version';
  }

  @override
  String get validationRequired => 'Це поле є обов\'язковим.';

  @override
  String get validationSubdomain =>
      'Дозволено лише літери, цифри та дефіси. Без дефісів на початку або в кінці.';

  @override
  String get validationToken =>
      'Невірний формат токена. 20–500 символів, лише літери, цифри та типові роздільники.';

  @override
  String pinLockedOut(int seconds) {
    return 'Забагато невдалих спроб. Спробуйте через $seconds секунд.';
  }

  @override
  String get complianceStatus => 'Статус відповідності';

  @override
  String get platform => 'Платформа';

  @override
  String get deviceName => 'Назва пристрою';

  @override
  String get searchUsers => 'Шукати користувачів...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count користувачів',
      many: '$count користувачів',
      few: '$count користувачі',
      one: '1 користувач',
      zero: 'Немає користувачів',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Користувачів не знайдено';

  @override
  String get noUsersFoundMessage => 'Змініть пошуковий запит або фільтри.';

  @override
  String get showArchived => 'Показати архівовані';

  @override
  String get archived => 'Архівовано';

  @override
  String get email => 'Електронна пошта';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprints',
      many: '$count Blueprints',
      few: '$count Blueprints',
      one: '1 Blueprint',
      zero: 'Немає Blueprints',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Blueprints не знайдено';

  @override
  String get noBlueprintsFoundMessage => 'Blueprints ще не налаштовано.';

  @override
  String get enrollmentActive => 'Реєстрація активна';

  @override
  String get enrollmentInactive => 'Реєстрація неактивна';

  @override
  String get tabOverview => 'Огляд';

  @override
  String get tabApps => 'Застосунки';

  @override
  String get tabStatus => 'Статус';

  @override
  String get tabActivity => 'Активність';

  @override
  String get tabCommands => 'Команди';

  @override
  String get hardware => 'Апаратне забезпечення';

  @override
  String get security => 'Безпека';

  @override
  String get totalStorage => 'Загальне сховище';

  @override
  String get availableStorage => 'Доступне сховище';

  @override
  String get totalRam => 'Загальний обсяг RAM';

  @override
  String get wifiMac => 'MAC-адреса Wi-Fi';

  @override
  String get encryption => 'Шифрування';

  @override
  String get passcode => 'Код доступу';

  @override
  String get noAppsFound => 'Застосунків не знайдено';

  @override
  String get noActivityFound => 'Активності не знайдено';

  @override
  String get noCommandsFound => 'Команд не знайдено';

  @override
  String get libraryItems => 'Елементи бібліотеки';

  @override
  String get parameters => 'Параметри';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'Збірка ОС';

  @override
  String get cellular => 'Мобільний зв\'язок';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count застосунків',
      many: '$count застосунків',
      few: '$count застосунки',
      one: '1 застосунок',
      zero: 'Немає застосунків',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'А → Я';

  @override
  String get sortZA => 'Я → А';

  @override
  String get userDetails => 'Деталі користувача';

  @override
  String get jobTitle => 'Посада';

  @override
  String get department => 'Відділ';

  @override
  String get createdAt => 'Створено';

  @override
  String get updatedAt => 'Оновлено';

  @override
  String get assignedDevices => 'Призначені пристрої';

  @override
  String get noAssignedDevices =>
      'Цьому користувачу не призначено жодного пристрою.';

  @override
  String get userInfo => 'Інформація про користувача';

  @override
  String get navMore => 'Більше';

  @override
  String get tabSecrets => 'Секрети';

  @override
  String get filevaultKey => 'Ключ відновлення FileVault';

  @override
  String get unlockPin => 'PIN розблокування';

  @override
  String get recoveryPassword => 'Пароль Recovery Lock';

  @override
  String get bypassCode => 'Код обходу блокування активації';

  @override
  String get noSecretsFound => 'Для цього пристрою немає доступних секретів.';

  @override
  String get secretCopied => 'Секрет скопійовано до буфера обміну';

  @override
  String get threats => 'Загрози';

  @override
  String get noThreatsFound => 'Загроз не виявлено.';

  @override
  String get vulnerabilities => 'Вразливості';

  @override
  String get noVulnerabilitiesFound => 'Вразливостей не виявлено.';

  @override
  String get aboutApp => 'Про FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot — це MDM-застосунок з відкритим кодом для керування парком пристроїв Apple.';

  @override
  String get tapToCopy => 'Натисніть, щоб скопіювати';

  @override
  String get devices => 'Пристрої';

  @override
  String get severity => 'Серйозність';

  @override
  String get tabLocation => 'Місцезнаходження';

  @override
  String get locationNotAvailable =>
      'Дані про місцезнаходження для цього пристрою недоступні.';

  @override
  String get enableLostModeHint =>
      'Увімкніть режим втрати, щоб відстежити цей пристрій.';

  @override
  String get lostModeEnabled => 'Режим втрати увімкнено';

  @override
  String get noLibraryItemsFound => 'Елементів бібліотеки не знайдено.';

  @override
  String get licenses => 'Ліцензії';

  @override
  String get lostModeMessage => 'Повідомлення режиму втрати';

  @override
  String get lostModePhone => 'Номер телефону';

  @override
  String get lostModeFootnote =>
      'Необов\'язкове повідомлення та номер телефону, що відображаються на пристрої';

  @override
  String get supervised => 'Контрольований';

  @override
  String get unsupervised => 'Неконтрольований';

  @override
  String get filterSupervised => 'Контрольовані';

  @override
  String get filterUnsupervised => 'Неконтрольовані';

  @override
  String get language => 'Мова';

  @override
  String get languageSystem => 'Системна за замовчуванням';

  @override
  String get actionDisableLostMode => 'Вимкнути режим втрати';

  @override
  String get actionClearPasscode => 'Очистити код доступу';

  @override
  String get filterLostMode => 'Режим втрати';

  @override
  String get lostMode => 'Режим втрати';

  @override
  String get sectionManagement => 'Керування';

  @override
  String get sectionStatus => 'Статус';

  @override
  String get statusMissing => 'Відсутній';

  @override
  String get statusRemoved => 'Видалено';

  @override
  String get agent => 'Агент';

  @override
  String get identifier => 'Ідентифікатор';

  @override
  String get processor => 'Процесор';

  @override
  String get hardwareUuid => 'UUID обладнання';

  @override
  String get devicePosture => 'Стан пристрою';

  @override
  String get unknownDevice => 'Невідомий пристрій';

  @override
  String get securityAppLock => 'Блокування застосунку';

  @override
  String get securityAppLockDescription =>
      'Встановіть 6-значний PIN для захисту застосунку. Біометричну автентифікацію можна увімкнути після встановлення PIN.';

  @override
  String get securityAppLockActive => 'Блокування застосунку активне';

  @override
  String get securityAppLockInactive => 'Блокування застосунку не налаштовано';

  @override
  String get securitySetPin => 'Встановити PIN';

  @override
  String get securityChangePin => 'Змінити PIN';

  @override
  String get securityRemovePin => 'Видалити PIN';

  @override
  String get securityCurrentPin => 'Поточний PIN';

  @override
  String get securityNewPin => 'Новий PIN';

  @override
  String get securityConfirmPin => 'Введіть PIN ще раз для підтвердження.';

  @override
  String get securityPinLength => 'PIN має містити 6 цифр.';

  @override
  String get securityPinMismatch => 'PIN-коди не збігаються.';

  @override
  String get securityPinWrong => 'Невірний PIN.';

  @override
  String get securityPinSet => 'PIN встановлено.';

  @override
  String get securityPinChanged => 'PIN змінено.';

  @override
  String get securityPinRemoved => 'PIN і блокування застосунку видалено.';

  @override
  String get securityBiometric => 'Біометрія';

  @override
  String get securityBiometricDescription =>
      'Використовуйте відбиток пальця або розпізнавання обличчя для розблокування застосунку замість PIN.';

  @override
  String get securityBiometricEnable => 'Біометричне розблокування';

  @override
  String get securityBiometricActive => 'Активна';

  @override
  String get securityBiometricInactive => 'Неактивна';

  @override
  String get securityBiometricUnavailable =>
      'Біометрична автентифікація недоступна на цьому пристрої.';

  @override
  String get securityNext => 'Далі';

  @override
  String get actionRenewMdm => 'Оновити MDM-профіль';

  @override
  String get actionSetName => 'Встановити назву пристрою';

  @override
  String get actionSetNameHint => 'Введіть нову назву пристрою';

  @override
  String get actionDeleteUser => 'Видалити користувача';

  @override
  String get actionDeleteUserName => 'Ім\'я користувача';

  @override
  String get actionDeleteAllUsers => 'Видалити всіх користувачів';

  @override
  String get actionForceDeletion => 'Примусове видалення';

  @override
  String get actionUnlockAccount => 'Розблокувати обліковий запис';

  @override
  String get actionPlayLostModeSound => 'Відтворити звук режиму втрати';

  @override
  String get actionUpdateLocation => 'Оновити місцезнаходження';

  @override
  String get erasePin => '6-значний PIN';

  @override
  String get erasePinHint => 'Обов\'язковий для мобільних пристроїв';

  @override
  String get erasePreserveDataPlan => 'Зберегти тарифний план';

  @override
  String get eraseDisallowProximitySetup =>
      'Заборонити налаштування через близькість';

  @override
  String get eraseReturnToService => 'Повернення до обслуговування';

  @override
  String get lockMessage => 'Повідомлення блокування';

  @override
  String get lockPhone => 'Номер телефону';

  @override
  String get restartRebuildKernelCache => 'Перебудувати кеш ядра';

  @override
  String get restartNotifyUser => 'Сповістити користувача';

  @override
  String get actionRemoteDesktop => 'Віддалений робочий стіл';

  @override
  String get tabNotes => 'Нотатки';

  @override
  String get noNotesFound => 'Нотаток ще немає';

  @override
  String get addNote => 'Додати нотатку';

  @override
  String get editNote => 'Редагувати нотатку';

  @override
  String get deleteNote => 'Видалити нотатку';

  @override
  String get deleteNoteConfirm => 'Ви дійсно хочете видалити цю нотатку?';

  @override
  String get noteContent => 'Вміст нотатки';

  @override
  String get noteSaved => 'Нотатку збережено.';

  @override
  String get noteDeleted => 'Нотатку видалено.';

  @override
  String get editDevice => 'Редагувати пристрій';

  @override
  String get deviceUpdated => 'Пристрій оновлено.';

  @override
  String get deleteDevice => 'Видалити пристрій';

  @override
  String get deleteDeviceConfirm =>
      'Пристрій буде назавжди видалено з MDM. Цю дію не можна скасувати.';

  @override
  String get deviceDeleted => 'Пристрій видалено.';

  @override
  String get cancelLostMode => 'Скасувати режим втрати';

  @override
  String get cancelLostModeConfirm =>
      'Скасувати очікуваний запит на режим втрати?';

  @override
  String get lostModeCancelled => 'Режим втрати скасовано.';

  @override
  String get tags => 'Теги';

  @override
  String get noTags => 'Немає тегів';

  @override
  String get addTag => 'Додати тег';

  @override
  String get tagName => 'Назва тегу';

  @override
  String get manageTags => 'Керувати тегами';

  @override
  String get auditLog => 'Журнал аудиту';

  @override
  String get noAuditEvents => 'Подій аудиту не знайдено';

  @override
  String get actionDailyCheckIn => 'Щоденна реєстрація';

  @override
  String get licensing => 'Ліцензування';

  @override
  String get deviceLimit => 'Ліміт пристроїв';

  @override
  String get devicesUsed => 'Використано пристроїв';

  @override
  String get licenseType => 'Тип ліцензії';

  @override
  String get appleDevices => 'Пристрої Apple';

  @override
  String get deleteUser => 'Видалити користувача';

  @override
  String get deleteUserConfirm =>
      'Ви дійсно хочете видалити цього користувача? Цю дію не можна скасувати.';

  @override
  String get userDeleted => 'Користувача видалено.';

  @override
  String get createBlueprint => 'Створити Blueprint';

  @override
  String get editBlueprint => 'Редагувати Blueprint';

  @override
  String get deleteBlueprint => 'Видалити Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Видалення цього Blueprint призведе до скасування реєстрації всіх призначених пристроїв. Цю дію не можна скасувати.';

  @override
  String get blueprintCreated => 'Blueprint створено.';

  @override
  String get blueprintUpdated => 'Blueprint оновлено.';

  @override
  String get blueprintDeleted => 'Blueprint видалено.';

  @override
  String get blueprintName => 'Назва Blueprint';

  @override
  String get blueprintDescription => 'Опис';

  @override
  String get enrollmentCode => 'Код реєстрації';

  @override
  String get assignLibraryItem => 'Призначити елемент бібліотеки';

  @override
  String get removeLibraryItem => 'Видалити елемент бібліотеки';

  @override
  String get libraryItemAssigned => 'Елемент бібліотеки призначено.';

  @override
  String get libraryItemRemoved => 'Елемент бібліотеки видалено.';

  @override
  String get lostModeDetails => 'Деталі режиму втрати';

  @override
  String get lostModeEnabledBy => 'Увімкнено';

  @override
  String get lostModeEnabledAt => 'Увімкнено о';

  @override
  String get searchBlueprints => 'Шукати Blueprints...';

  @override
  String get searchVulnerabilities => 'Шукати вразливості...';

  @override
  String get searchThreats => 'Шукати загрози...';

  @override
  String get searchAuditLog => 'Шукати в журналі аудиту...';

  @override
  String get filterCritical => 'Критичний';

  @override
  String get filterHigh => 'Високий';

  @override
  String get filterMedium => 'Середній';

  @override
  String get filterLow => 'Низький';

  @override
  String get filterClearAll => 'Очистити все';

  @override
  String get filterTitle => 'Фільтри';

  @override
  String get filterApply => 'Застосувати';

  @override
  String get filterPlatform => 'Платформа';

  @override
  String get filterSupervision => 'Контроль';

  @override
  String get filterStatus => 'Статус';

  @override
  String get adeIntegrations => 'Інтеграції ADE';

  @override
  String get noAdeIntegrations => 'Інтеграцій ADE не знайдено.';

  @override
  String get adeDevices => 'Пристрої ADE';

  @override
  String get noAdeDevices => 'Пристроїв ADE не знайдено.';

  @override
  String get tokenExpiry => 'Термін дії токена';

  @override
  String get tokenValid => 'Токен дійсний';

  @override
  String get tokenExpired => 'Токен протермінований';

  @override
  String get orgName => 'Організація';

  @override
  String get defaultBlueprint => 'Blueprint за замовчуванням';

  @override
  String get renewToken => 'Оновити токен';

  @override
  String get publicKey => 'Відкритий ключ';

  @override
  String get vulnerabilityDetections => 'Виявлення вразливостей';

  @override
  String get noDetectionsFound => 'Виявлень не знайдено.';

  @override
  String get behavioralDetections => 'Поведінкові виявлення';

  @override
  String get noBehavioralDetections => 'Поведінкових виявлень не знайдено.';

  @override
  String get searchBehavioralDetections => 'Шукати виявлення...';

  @override
  String get affectedDevices => 'Уражені пристрої';

  @override
  String get noAffectedDevices =>
      'Уражених пристроїв не знайдено. Раніше уражені пристрої могли бути видалені.';

  @override
  String get affectedSoftware => 'Уражене програмне забезпечення';

  @override
  String get blueprintTemplates => 'Шаблони Blueprint';

  @override
  String get noTemplatesFound => 'Шаблонів не знайдено.';

  @override
  String get otaEnrollmentProfile => 'Профіль реєстрації OTA';

  @override
  String get libraryItemActivity => 'Активність';

  @override
  String get libraryItemDeploymentStatus => 'Статус розгортання';

  @override
  String get noActivityFound2 => 'Активності не знайдено.';

  @override
  String get noStatusFound => 'Статусу розгортання не знайдено.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count виявлень',
      many: '$count виявлень',
      few: '$count виявлення',
      one: '1 виявлення',
      zero: 'Немає виявлень',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count інтеграцій',
      many: '$count інтеграцій',
      few: '$count інтеграції',
      one: '1 інтеграція',
      zero: 'Немає інтеграцій',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Деталі вразливості';

  @override
  String get description => 'Опис';

  @override
  String get firstDetected => 'Перше виявлення';

  @override
  String get lastDetected => 'Останнє виявлення';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count програм',
      many: '$count програм',
      few: '$count програми',
      one: '1 програма',
      zero: 'Немає ПЗ',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Редагувати інтеграцію';

  @override
  String get deleteIntegration => 'Видалити інтеграцію';

  @override
  String get deleteIntegrationConfirm =>
      'Ви впевнені, що хочете видалити цю інтеграцію ADE? Цю дію не можна скасувати.';

  @override
  String get integrationDeleted => 'Інтеграцію видалено.';

  @override
  String get integrationUpdated => 'Інтеграцію оновлено.';

  @override
  String get defaultBlueprintId => 'ID Blueprint за замовчуванням';

  @override
  String get phone => 'Телефон';

  @override
  String get downloadOtaProfile => 'Завантажити профіль реєстрації';

  @override
  String get otaProfileCopied =>
      'Профіль реєстрації скопійовано до буфера обміну.';

  @override
  String get noOtaProfile => 'Профіль реєстрації недоступний.';

  @override
  String get createTag => 'Створити тег';

  @override
  String get editTag => 'Редагувати тег';

  @override
  String get deleteTag => 'Видалити тег';

  @override
  String get deleteTagConfirm => 'Ви впевнені, що хочете видалити цей тег?';

  @override
  String get tagColor => 'Колір';

  @override
  String get tagCreated => 'Тег створено.';

  @override
  String get tagUpdated => 'Тег оновлено.';

  @override
  String get tagDeleted => 'Тег видалено.';

  @override
  String get noTagsFound => 'Тегів не знайдено.';

  @override
  String get libraryItemDetail => 'Елемент бібліотеки';

  @override
  String get viewActivity => 'Переглянути активність';

  @override
  String get viewStatus => 'Переглянути статус';

  @override
  String get installations => 'Встановлення';

  @override
  String get createAdeIntegration => 'Створити інтеграцію ADE';

  @override
  String get adeCreateDescription =>
      'Завантажте файл серверного токена (.p7m) з Apple Business Manager, щоб створити нову інтеграцію ADE.';

  @override
  String get selectTokenFile => 'Вибрати файл токена';

  @override
  String tokenFileSelected(String name) {
    return 'Файл токена: $name';
  }

  @override
  String get noTokenFileSelected => 'Файл токена не вибрано';

  @override
  String get integrationCreated => 'Інтеграцію створено.';

  @override
  String get create => 'Створити';

  @override
  String get step1GetPublicKey => 'Крок 1: Завантажити відкритий ключ';

  @override
  String get step1Description =>
      'Скопіюйте відкритий ключ та завантажте його в Apple Business Manager.';

  @override
  String get step2UploadToken => 'Крок 2: Завантажити серверний токен';

  @override
  String get step2Description =>
      'Виберіть файл токена .p7m, завантажений з Apple.';

  @override
  String get step3Configure => 'Крок 3: Налаштувати';

  @override
  String get publicKeyCopied => 'Відкритий ключ скопійовано до буфера обміну.';

  @override
  String get renewTokenDescription =>
      'Завантажте новий файл токена .p7m для оновлення токена цієї інтеграції.';

  @override
  String get tokenRenewed => 'Токен оновлено.';

  @override
  String get aboutLinks => 'Посилання';

  @override
  String get aboutWebsite => 'Вебсайт';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Вихідний код';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Технології';

  @override
  String get aboutFramework => 'Фреймворк';

  @override
  String get aboutStateManagement => 'Керування станом';

  @override
  String get aboutArchitecture => 'Архітектура';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Класи даних';

  @override
  String get aboutNavigationLabel => 'Навігація';

  @override
  String get aboutOpenSourceLicenses => 'Ліцензії відкритого коду';

  @override
  String get aboutShowHide => 'Перемкнути видимість';

  @override
  String get editProfileTitle => 'Редагувати з\'єднання';

  @override
  String get editProfileSubtitle =>
      'Оновіть налаштування з\'єднання з тенантом.';

  @override
  String get apiTokenHintEdit => 'Залиште порожнім, щоб зберегти наявний токен';

  @override
  String get profileUpdated => 'Профіль оновлено.';

  @override
  String profileSwitched(String name) {
    return 'Перемкнено на $name.';
  }

  @override
  String get securityAutoLock => 'Автоматичне блокування';

  @override
  String get securityAutoLockDescription =>
      'Автоматично вимагати автентифікацію після того, як застосунок був у фоновому режимі.';

  @override
  String get timeoutImmediately => 'Негайно';

  @override
  String get timeoutSeconds30 => 'Через 30 секунд';

  @override
  String get timeoutSeconds60 => 'Через 1 хвилину';

  @override
  String get timeoutSeconds120 => 'Через 2 хвилини';

  @override
  String get timeoutMinutes5 => 'Через 5 хвилин';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Без Blueprint';

  @override
  String get presetSaveFilter => 'Зберегти набір фільтрів';

  @override
  String get presetLoad => 'Завантажити набір';

  @override
  String get presetName => 'Назва набору';

  @override
  String get presetNameHint => 'напр. Неконтрольовані Mac';

  @override
  String get presetSaved => 'Набір фільтрів збережено.';

  @override
  String get presetDeleted => 'Набір фільтрів видалено.';

  @override
  String presetApplied(String name) {
    return 'Набір \"$name\" застосовано.';
  }

  @override
  String get presetNoPresets => 'Немає збережених наборів';

  @override
  String get presetNoPresetsMessage =>
      'Збережіть поточні фільтри як набір для швидкого доступу.';

  @override
  String get presetDeleteConfirm => 'Видалити цей набір?';

  @override
  String get presetNameRequired => 'Будь ласка, введіть назву для набору.';

  @override
  String selectedCount(int count) {
    return '$count вибрано';
  }

  @override
  String get selectAll => 'Вибрати все';

  @override
  String get deselectAll => 'Скасувати вибір';

  @override
  String get bulkActions => 'Дії';

  @override
  String bulkActionsTitle(int count) {
    return 'Дії для $count пристроїв';
  }

  @override
  String get bulkActionAssignTag => 'Призначити тег';

  @override
  String get bulkActionAssignTagDescription =>
      'Додати тег до всіх вибраних пристроїв';

  @override
  String get bulkActionAssignBlueprint => 'Призначити Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Перемістити вибрані пристрої до Blueprint';

  @override
  String get bulkActionLock => 'Заблокувати пристрої';

  @override
  String get bulkActionLockDescription =>
      'Віддалено заблокувати всі вибрані пристрої';

  @override
  String get bulkActionRestart => 'Перезавантажити пристрої';

  @override
  String get bulkActionRestartDescription =>
      'Перезавантажити всі вибрані пристрої';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Ви дійсно хочете перезавантажити $count пристроїв?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Дію успішно виконано на $count пристроях.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Виконано на $success пристроях, $failed невдалих.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed з $total завершено';
  }

  @override
  String get biometricReasonBulkAction =>
      'Автентифікуйтеся для виконання масової дії';

  @override
  String get lockPin => 'PIN блокування (необов\'язковий)';

  @override
  String get noTagsAvailable =>
      'Немає доступних тегів. Створіть теги у вебконсолі MDM.';

  @override
  String get noBlueprintsAvailable => 'Немає доступних Blueprints.';

  @override
  String get selectADevice => 'Вибрати пристрій';

  @override
  String get selectABlueprint => 'Вибрати Blueprint';

  @override
  String get clearSearch => 'Очистити пошук';

  @override
  String get refresh => 'Оновити';

  @override
  String get moreActions => 'Більше дій';

  @override
  String get close => 'Закрити';

  @override
  String get onboardingSkip => 'Пропустити';

  @override
  String get onboardingNext => 'Далі';

  @override
  String get onboardingGetStarted => 'Розпочати';

  @override
  String get onboardingWelcomeTitle => 'Ласкаво просимо до FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Ваш мобільний командний центр для керування парком пристроїв Apple. Контролюйте, керуйте та захищайте весь свій парк звідусіль.';

  @override
  String get onboardingDevicesTitle => 'Керування пристроями';

  @override
  String get onboardingDevicesSubtitle =>
      'Повна видимість і контроль над кожним пристроєм у вашому парку.';

  @override
  String get onboardingDevicesFeature1 =>
      'Перегляд усіх зареєстрованих iPhone, iPad, Mac та Apple TV';

  @override
  String get onboardingDevicesFeature2 =>
      'Надсилання віддалених команд: блокування, перезавантаження, стирання та інше';

  @override
  String get onboardingDevicesFeature3 =>
      'Відстеження Blueprints, застосунків та статусу відповідності';

  @override
  String get onboardingSecurityTitle => 'Створено для безпеки';

  @override
  String get onboardingSecuritySubtitle =>
      'Дані вашого парку захищені кількома рівнями безпеки.';

  @override
  String get onboardingSecurityFeature1 =>
      'Біометрична автентифікація за допомогою Face ID або відбитка пальця';

  @override
  String get onboardingSecurityFeature2 =>
      '6-значний PIN для доступу до застосунку';

  @override
  String get onboardingSecurityFeature3 =>
      'Автоматичне блокування сеансу після тайм-ауту';

  @override
  String get onboardingReadyTitle => 'Готові до старту';

  @override
  String get onboardingReadySubtitle =>
      'Підключіть свій MDM-тенант, щоб почати керування парком пристроїв Apple. Далі ви налаштуєте API-з\'єднання та PIN безпеки.';

  @override
  String get searchTags => 'Шукати теги';

  @override
  String tagDeviceCount(int count) {
    return '$count пристроїв';
  }

  @override
  String get sortTitle => 'Сортування';

  @override
  String get sortDirection => 'Напрямок сортування';

  @override
  String get ascending => 'За зростанням';

  @override
  String get descending => 'За спаданням';

  @override
  String get filterSeverity => 'Серйозність';

  @override
  String get filterSort => 'Фільтрувати та сортувати';

  @override
  String get statusQuarantined => 'На карантині';

  @override
  String get statusNotQuarantined => 'Не ізольований';

  @override
  String get statusDetected => 'Виявлено';

  @override
  String get statusReleased => 'Випущено';

  @override
  String get severityCritical => 'Критичний';

  @override
  String get severityHigh => 'Високий';

  @override
  String get severityMedium => 'Середній';

  @override
  String get severityLow => 'Низький';

  @override
  String threatCount(int count) {
    return '$count загроз';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count виявлень';
  }

  @override
  String get downloadPublicKey => 'Завантажити';

  @override
  String get publicKeySaved => 'Відкритий ключ збережено';

  @override
  String get sortBy => 'Сортувати за';

  @override
  String get sortByCvss => 'Оцінка CVSS';

  @override
  String get sortByDeviceCount => 'Уражені пристрої';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count вразливостей';
  }

  @override
  String get assignTags => 'Теги';

  @override
  String get noTagsAvailableMessage =>
      'Немає доступних тегів. Спочатку створіть теги.';

  @override
  String get failedToLoadTags => 'Не вдалося завантажити теги';

  @override
  String get details => 'Деталі';

  @override
  String get searchLibraryItems => 'Шукати елементи бібліотеки...';

  @override
  String get categoryCustomScript => 'Власний скрипт';

  @override
  String get categoryCustomApp => 'Власний застосунок';

  @override
  String get categoryCustomProfile => 'Власний профіль';

  @override
  String get categoryInHouseApp => 'Внутрішній застосунок';

  @override
  String get categoryBuiltIn => 'Вбудований';

  @override
  String get categoryVppApps => 'Застосунки VPP / App Store';

  @override
  String get categoryManagedProfiles => 'Керовані профілі';

  @override
  String get categoryKandjiSetup => 'Налаштування MDM';

  @override
  String get categoryMacosRelease => 'Оновлення macOS';

  @override
  String get categoryThreatPolicy => 'Політики безпеки';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprints',
      many: '$count Blueprints',
      few: '$count Blueprints',
      one: '1 Blueprint',
    );
    return 'У $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Одноразово';

  @override
  String get executionFrequencyEvery15Min => 'Кожні 15 хвилин';

  @override
  String get executionFrequencyEveryDay => 'Щодня';

  @override
  String get executionFrequencyNoEnforcement => 'Без примусу';

  @override
  String get scriptBody => 'Скрипт';

  @override
  String get remediationScript => 'Скрипт виправлення';

  @override
  String get allProperties => 'Усі властивості';

  @override
  String get builtInLibraryItem => 'Вбудований елемент бібліотеки';

  @override
  String get builtInDetailsHint => 'Деталі доступні на вкладці Статус';

  @override
  String get active => 'Активний';

  @override
  String get yes => 'Так';

  @override
  String get no => 'Ні';

  @override
  String get execution => 'Виконання';

  @override
  String get restart => 'Перезавантаження';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Тип встановлення';

  @override
  String get enforcement => 'Примус';

  @override
  String get runsOnMac => 'Працює на Mac';

  @override
  String get runsOnIphone => 'Працює на iPhone';

  @override
  String get runsOnIpad => 'Працює на iPad';

  @override
  String get appName => 'Назва застосунку';

  @override
  String get appVersion => 'Версія застосунку';

  @override
  String get minOsVersion => 'Мін. версія ОС';

  @override
  String get created => 'Створено';

  @override
  String get updated => 'Оновлено';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count елементів',
      many: '$count елементів',
      few: '$count елементи',
      one: '1 елемент',
      zero: 'Немає елементів',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Вирішено';

  @override
  String get severityInformational => 'Інформаційний';

  @override
  String get managementState => 'Стан керування';

  @override
  String get managementStateOpen => 'Відкрито';

  @override
  String get managementStateClosed => 'Закрито';

  @override
  String get classificationMalware => 'Шкідливе ПЗ';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Підозрілий';

  @override
  String get classificationMal => 'Зловмисний';

  @override
  String get blueprintRouting => 'Маршрутизація Blueprint';

  @override
  String get blueprintRoutingDesc =>
      'Код реєстрації та маршрутизація для ручної реєстрації / Android Work Profile';

  @override
  String get blueprintRoutingNotConfigured =>
      'Маршрутизацію Blueprint не налаштовано для цього тенанта.';

  @override
  String get enrollmentCodeActive => 'Активний';

  @override
  String get enrollmentCodeInactive => 'Неактивний';

  @override
  String get routingActivity => 'Активність маршрутизації';

  @override
  String get noRoutingActivity => 'Активності маршрутизації не знайдено.';

  @override
  String get selfServiceCategories => 'Категорії Self-Service';

  @override
  String get selfServiceDesc =>
      'Керування категоріями Self-Service для ваших користувачів';

  @override
  String get addCategory => 'Додати категорію';

  @override
  String get categoryName => 'Назва категорії';

  @override
  String get deleteCategory => 'Видалити категорію';

  @override
  String get deleteCategoryConfirm => 'Ви дійсно хочете видалити цю категорію?';

  @override
  String get noCategoriesFound => 'Категорій не знайдено.';

  @override
  String get categoryCreated => 'Категорію створено';

  @override
  String get categoryDeleted => 'Категорію видалено';

  @override
  String get profileBody => 'XML профілю';

  @override
  String get customProfile => 'Власний профіль';

  @override
  String get classification => 'Класифікація';

  @override
  String get mdmEnabled => 'MDM увімкнено';

  @override
  String get enrolledViaDep => 'Зареєстровано через DEP';

  @override
  String get userApprovedMdm => 'MDM схвалений користувачем';

  @override
  String get network => 'Мережа';

  @override
  String get ipAddress => 'IP-адреса';

  @override
  String get wifiNetwork => 'Мережа Wi-Fi';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Блокування активації';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Режим розробника';

  @override
  String get adbEnabled => 'ADB увімкнено';

  @override
  String get unknownSources => 'Невідомі джерела';

  @override
  String get securityPatch => 'Патч безпеки';

  @override
  String get provisioningUdid => 'UDID ініціалізації';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'Інформація MDM';

  @override
  String get lastEnrollment => 'Остання реєстрація';

  @override
  String get enterpriseId => 'ID підприємства';

  @override
  String get manufacturer => 'Виробник';

  @override
  String get generalStatus => 'Загальний статус';

  @override
  String get apiLevel => 'Рівень API';

  @override
  String get userApprovedEnrollment => 'Реєстрація схвалена користувачем';

  @override
  String get hostname => 'Ім\'я хоста';

  @override
  String get macAddress => 'MAC-адреса';

  @override
  String get publicIp => 'Публічна IP';

  @override
  String get volumes => 'Томи';

  @override
  String volumeUsed(String percent) {
    return '$percent% використано';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available вільно з $total';
  }

  @override
  String get encrypted => 'Зашифровано';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores ядер';
  }

  @override
  String processors(String count) {
    return '$count процесорів';
  }

  @override
  String get batteryLevel => 'Рівень заряду';

  @override
  String get lastUser => 'Останній користувач';

  @override
  String get bootVolume => 'Завантажувальний том';

  @override
  String get localUsers => 'Локальні користувачі';

  @override
  String get regularUsers => 'Звичайні користувачі';

  @override
  String get systemUsers => 'Системні користувачі';

  @override
  String get admin => 'Адмін';

  @override
  String get assignToBlueprint => 'Призначити до Blueprint';

  @override
  String get installOnDevice => 'Встановити на пристрій';

  @override
  String get selectBlueprint => 'Вибрати Blueprint';

  @override
  String get selectDevice => 'Вибрати пристрій';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'Ліцензії VPP';

  @override
  String get fileName => 'Назва файлу';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Блокування активації';

  @override
  String get prismCategoryApps => 'Застосунки';

  @override
  String get prismCategoryApplicationFirewall => 'Брандмауер застосунків';

  @override
  String get prismCategoryCellular => 'Мобільний зв\'язок';

  @override
  String get prismCategoryCertificates => 'Сертифікати';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Робочий стіл та заставка';

  @override
  String get prismCategoryDeviceInformation => 'Інформація про пристрій';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper та XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Встановлені профілі';

  @override
  String get prismCategoryKernelExtensions => 'Розширення ядра';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Агенти запуску та демони';

  @override
  String get prismCategoryLocalUsers => 'Локальні користувачі';

  @override
  String get prismCategoryStartupSettings => 'Параметри запуску';

  @override
  String get prismCategorySystemExtensions => 'Системні розширення';

  @override
  String get prismCategoryTransparencyDatabase => 'База даних прозорості';

  @override
  String prismRecords(int count) {
    return '$count записів';
  }

  @override
  String get prismNoData => 'Для цієї категорії немає доступних даних.';

  @override
  String get prismExport => 'Експортувати CSV';

  @override
  String get prismExportRequested =>
      'Експорт запитано. Посилання для завантаження буде доступне незабаром.';

  @override
  String get prismFilterByFamily => 'Сімейство пристроїв';

  @override
  String get prismAllFamilies => 'Усі сімейства';

  @override
  String get appearance => 'Зовнішній вигляд';

  @override
  String get themeMode => 'Тема';

  @override
  String get themeModeSystem => 'Системна';

  @override
  String get themeModeLight => 'Світла';

  @override
  String get themeModeDark => 'Темна';

  @override
  String get shortTypeScript => 'Скрипт';

  @override
  String get shortTypeCustom => 'Власний';

  @override
  String get shortTypeProfile => 'Профіль';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Керований';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Безпека';

  @override
  String get shortTypeAuto => 'Авто';

  @override
  String get categoryOsUpdates => 'Оновлення ОС';

  @override
  String get categoryAutoApps => 'Автозастосунки';

  @override
  String get autoApp => 'Автозастосунок';

  @override
  String get fileSize => 'Розмір файлу';

  @override
  String get unzipLocation => 'Місце розпакування';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Файл оновлено';

  @override
  String get mdmIdentifier => 'Ідентифікатор MDM';

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
  String get typeLabel => 'Тип';

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
