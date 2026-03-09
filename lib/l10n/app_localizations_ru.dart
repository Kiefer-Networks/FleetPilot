// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Russian (`ru`).
class AppLocalizationsRu extends AppLocalizations {
  AppLocalizationsRu([String locale = 'ru']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Устройства';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Пользователи';

  @override
  String get navSettings => 'Настройки';

  @override
  String get welcomeTitle => 'Добро пожаловать в FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Управляйте вашим парком устройств Apple из любой точки мира.';

  @override
  String get addProfile => 'Добавить профиль';

  @override
  String get editProfile => 'Редактировать профиль';

  @override
  String get displayName => 'Отображаемое имя';

  @override
  String get displayNameHint => 'напр. Acme Corp — Prod';

  @override
  String get region => 'Регион';

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
  String get apiTokenHint => 'Вставьте API-токен сюда';

  @override
  String urlPreview(String url) {
    return 'API-URL: $url';
  }

  @override
  String get verifyAndSave => 'Проверить и сохранить';

  @override
  String get verifying => 'Проверка подключения...';

  @override
  String get connectionSuccess => 'Подключение успешно подтверждено!';

  @override
  String get errorInvalidToken =>
      'Недействительный API-токен. Проверьте токен в веб-консоли.';

  @override
  String get errorInsufficientPermissions =>
      'Недостаточно прав. Убедитесь, что токен имеет доступ на чтение устройств.';

  @override
  String get errorNetworkUnreachable =>
      'API недоступен. Проверьте подключение к интернету и субдомен.';

  @override
  String get errorNotFound => 'Запрашиваемый ресурс не найден.';

  @override
  String get errorValidation =>
      'Запрос содержит недопустимые данные. Проверьте введённые данные.';

  @override
  String get errorRateLimit =>
      'Слишком много запросов. Подождите немного и повторите попытку.';

  @override
  String get errorServer =>
      'На сервере произошла ошибка. Повторите попытку позже.';

  @override
  String get errorUnexpected =>
      'Произошла непредвиденная ошибка. Повторите попытку.';

  @override
  String get retry => 'Повторить';

  @override
  String get cancel => 'Отмена';

  @override
  String get delete => 'Удалить';

  @override
  String get save => 'Сохранить';

  @override
  String get search => 'Поиск';

  @override
  String get searchDevices => 'Поиск устройств...';

  @override
  String get filterAll => 'Все';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Все Blueprints';

  @override
  String loadingDevices(int count) {
    return 'Загрузка $count устройств...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count устройств',
      many: '$count устройств',
      few: '$count устройства',
      one: '1 устройство',
      zero: 'Нет устройств',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Устройства не найдены';

  @override
  String get noDevicesFoundMessage => 'Измените параметры поиска или фильтры.';

  @override
  String lastCheckIn(String time) {
    return 'Последний Check-in: $time';
  }

  @override
  String get compliancePass => 'Пройдено';

  @override
  String get complianceFail => 'Не пройдено';

  @override
  String get compliancePending => 'Ожидание';

  @override
  String get deviceDetails => 'Сведения об устройстве';

  @override
  String get serialNumber => 'Серийный номер';

  @override
  String get model => 'Модель';

  @override
  String get osVersion => 'Версия ОС';

  @override
  String get assetTag => 'Инвентарный номер';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Дата регистрации';

  @override
  String get assignedUser => 'Назначенный пользователь';

  @override
  String get actions => 'Действия';

  @override
  String get actionLock => 'Заблокировать';

  @override
  String get actionRestart => 'Перезагрузить';

  @override
  String get actionShutdown => 'Выключить';

  @override
  String get actionErase => 'Стереть';

  @override
  String get actionBlankPush => 'Отправить Blank Push';

  @override
  String get actionReinstallAgent => 'Переустановить агент';

  @override
  String get actionUpdateInventory => 'Обновить инвентарь';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Включить удалённый рабочий стол';

  @override
  String get actionRemoteDesktopDisable => 'Отключить удалённый рабочий стол';

  @override
  String get actionLostMode => 'Включить режим пропажи';

  @override
  String get destructiveActionTitle => 'Подтвердите опасное действие';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Это действие нельзя отменить. Введите \"$deviceName\" для подтверждения.';
  }

  @override
  String get destructiveActionHint =>
      'Введите имя устройства для подтверждения';

  @override
  String get confirm => 'Подтвердить';

  @override
  String get actionSuccess => 'Действие выполнено успешно.';

  @override
  String get actionFailed =>
      'Не удалось выполнить действие. Повторите попытку.';

  @override
  String get biometricReason => 'Пройдите аутентификацию для FleetPilot';

  @override
  String get biometricReasonSecrets =>
      'Пройдите аутентификацию для просмотра конфиденциальных данных';

  @override
  String get biometricReasonDestructive =>
      'Пройдите аутентификацию для выполнения этого действия';

  @override
  String get biometricFailed => 'Аутентификация не удалась. Повторите попытку.';

  @override
  String get profiles => 'Профили';

  @override
  String activeProfile(String name) {
    return 'Активный: $name';
  }

  @override
  String get switchProfile => 'Сменить профиль';

  @override
  String get deleteProfile => 'Удалить профиль';

  @override
  String get deleteProfileConfirm =>
      'Вы действительно хотите удалить этот профиль? Это действие нельзя отменить.';

  @override
  String get noProfiles => 'Профили не настроены';

  @override
  String get settings => 'Настройки';

  @override
  String get about => 'О приложении';

  @override
  String version(String version) {
    return 'Версия $version';
  }

  @override
  String get validationRequired => 'Это поле обязательно для заполнения.';

  @override
  String get validationSubdomain =>
      'Допускаются только буквы, цифры и дефисы. Дефисы в начале и конце запрещены.';

  @override
  String get validationToken =>
      'Недопустимый формат токена. 20–500 символов, только буквенно-цифровые символы и стандартные разделители.';

  @override
  String pinLockedOut(int seconds) {
    return 'Слишком много неудачных попыток. Повторите через $seconds секунд.';
  }

  @override
  String get complianceStatus => 'Статус соответствия';

  @override
  String get platform => 'Платформа';

  @override
  String get deviceName => 'Имя устройства';

  @override
  String get searchUsers => 'Поиск пользователей...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count пользователей',
      many: '$count пользователей',
      few: '$count пользователя',
      one: '1 пользователь',
      zero: 'Нет пользователей',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Пользователи не найдены';

  @override
  String get noUsersFoundMessage => 'Измените параметры поиска или фильтры.';

  @override
  String get showArchived => 'Показать архивных';

  @override
  String get archived => 'В архиве';

  @override
  String get email => 'Эл. почта';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprints',
      many: '$count Blueprints',
      few: '$count Blueprints',
      one: '1 Blueprint',
      zero: 'Нет Blueprints',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Blueprints не найдены';

  @override
  String get noBlueprintsFoundMessage => 'Blueprints ещё не настроены.';

  @override
  String get enrollmentActive => 'Регистрация активна';

  @override
  String get enrollmentInactive => 'Регистрация неактивна';

  @override
  String get tabOverview => 'Обзор';

  @override
  String get tabApps => 'Приложения';

  @override
  String get tabStatus => 'Статус';

  @override
  String get tabActivity => 'Активность';

  @override
  String get tabCommands => 'Команды';

  @override
  String get hardware => 'Оборудование';

  @override
  String get security => 'Безопасность';

  @override
  String get totalStorage => 'Общий объём';

  @override
  String get availableStorage => 'Доступно';

  @override
  String get totalRam => 'Общий объём ОЗУ';

  @override
  String get wifiMac => 'MAC-адрес Wi-Fi';

  @override
  String get encryption => 'Шифрование';

  @override
  String get passcode => 'Код-пароль';

  @override
  String get noAppsFound => 'Приложения не найдены';

  @override
  String get noActivityFound => 'Активность не найдена';

  @override
  String get noCommandsFound => 'Команды не найдены';

  @override
  String get libraryItems => 'Элементы библиотеки';

  @override
  String get parameters => 'Параметры';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'Сборка ОС';

  @override
  String get cellular => 'Сотовая связь';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count приложений',
      many: '$count приложений',
      few: '$count приложения',
      one: '1 приложение',
      zero: 'Нет приложений',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'А → Я';

  @override
  String get sortZA => 'Я → А';

  @override
  String get userDetails => 'Сведения о пользователе';

  @override
  String get jobTitle => 'Должность';

  @override
  String get department => 'Отдел';

  @override
  String get createdAt => 'Создано';

  @override
  String get updatedAt => 'Обновлено';

  @override
  String get assignedDevices => 'Назначенные устройства';

  @override
  String get noAssignedDevices =>
      'У этого пользователя нет назначенных устройств.';

  @override
  String get userInfo => 'Информация о пользователе';

  @override
  String get navMore => 'Ещё';

  @override
  String get tabSecrets => 'Секреты';

  @override
  String get filevaultKey => 'Ключ восстановления FileVault';

  @override
  String get unlockPin => 'PIN разблокировки';

  @override
  String get recoveryPassword => 'Пароль Recovery Lock';

  @override
  String get bypassCode => 'Код обхода блокировки активации';

  @override
  String get noSecretsFound => 'Секреты для этого устройства недоступны.';

  @override
  String get secretCopied => 'Секрет скопирован в буфер обмена';

  @override
  String get threats => 'Угрозы';

  @override
  String get noThreatsFound => 'Угрозы не обнаружены.';

  @override
  String get vulnerabilities => 'Уязвимости';

  @override
  String get noVulnerabilitiesFound => 'Уязвимости не обнаружены.';

  @override
  String get aboutApp => 'О FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot — приложение с открытым исходным кодом для управления парком устройств Apple через MDM.';

  @override
  String get tapToCopy => 'Нажмите для копирования';

  @override
  String get devices => 'Устройства';

  @override
  String get severity => 'Критичность';

  @override
  String get tabLocation => 'Местоположение';

  @override
  String get locationNotAvailable =>
      'Данные о местоположении для этого устройства недоступны.';

  @override
  String get enableLostModeHint =>
      'Включите режим пропажи, чтобы определить местоположение устройства.';

  @override
  String get lostModeEnabled => 'Режим пропажи включён';

  @override
  String get noLibraryItemsFound => 'Элементы библиотеки не найдены.';

  @override
  String get licenses => 'Лицензии';

  @override
  String get lostModeMessage => 'Сообщение режима пропажи';

  @override
  String get lostModePhone => 'Номер телефона';

  @override
  String get lostModeFootnote =>
      'Необязательное сообщение и номер телефона, отображаемые на устройстве';

  @override
  String get supervised => 'Под наблюдением';

  @override
  String get unsupervised => 'Без наблюдения';

  @override
  String get filterSupervised => 'Под наблюдением';

  @override
  String get filterUnsupervised => 'Без наблюдения';

  @override
  String get language => 'Язык';

  @override
  String get languageSystem => 'Системный по умолчанию';

  @override
  String get actionDisableLostMode => 'Отключить режим пропажи';

  @override
  String get actionClearPasscode => 'Сбросить код-пароль';

  @override
  String get filterLostMode => 'Режим пропажи';

  @override
  String get lostMode => 'Режим пропажи';

  @override
  String get sectionManagement => 'Управление';

  @override
  String get sectionStatus => 'Статус';

  @override
  String get statusMissing => 'Отсутствует';

  @override
  String get statusRemoved => 'Удалено';

  @override
  String get agent => 'Агент';

  @override
  String get identifier => 'Идентификатор';

  @override
  String get processor => 'Процессор';

  @override
  String get hardwareUuid => 'Аппаратный UUID';

  @override
  String get devicePosture => 'Состояние устройства';

  @override
  String get unknownDevice => 'Неизвестное устройство';

  @override
  String get securityAppLock => 'Блокировка приложения';

  @override
  String get securityAppLockDescription =>
      'Установите 6-значный PIN для защиты приложения. Биометрическая аутентификация может быть включена после установки PIN.';

  @override
  String get securityAppLockActive => 'Блокировка приложения включена';

  @override
  String get securityAppLockInactive => 'Блокировка приложения не настроена';

  @override
  String get securitySetPin => 'Установить PIN';

  @override
  String get securityChangePin => 'Изменить PIN';

  @override
  String get securityRemovePin => 'Удалить PIN';

  @override
  String get securityCurrentPin => 'Текущий PIN';

  @override
  String get securityNewPin => 'Новый PIN';

  @override
  String get securityConfirmPin => 'Введите PIN повторно для подтверждения.';

  @override
  String get securityPinLength => 'PIN должен состоять из 6 цифр.';

  @override
  String get securityPinMismatch => 'PIN-коды не совпадают.';

  @override
  String get securityPinWrong => 'Неверный PIN.';

  @override
  String get securityPinSet => 'PIN установлен.';

  @override
  String get securityPinChanged => 'PIN изменён.';

  @override
  String get securityPinRemoved => 'PIN и блокировка приложения удалены.';

  @override
  String get securityBiometric => 'Биометрия';

  @override
  String get securityBiometricDescription =>
      'Используйте отпечаток пальца или распознавание лица для разблокировки приложения вместо PIN.';

  @override
  String get securityBiometricEnable => 'Биометрическая разблокировка';

  @override
  String get securityBiometricActive => 'Активна';

  @override
  String get securityBiometricInactive => 'Неактивна';

  @override
  String get securityBiometricUnavailable =>
      'Биометрическая аутентификация недоступна на этом устройстве.';

  @override
  String get securityNext => 'Далее';

  @override
  String get actionRenewMdm => 'Обновить MDM-профиль';

  @override
  String get actionSetName => 'Задать имя устройства';

  @override
  String get actionSetNameHint => 'Введите новое имя устройства';

  @override
  String get actionDeleteUser => 'Удалить пользователя';

  @override
  String get actionDeleteUserName => 'Имя пользователя';

  @override
  String get actionDeleteAllUsers => 'Удалить всех пользователей';

  @override
  String get actionForceDeletion => 'Принудительное удаление';

  @override
  String get actionUnlockAccount => 'Разблокировать учётную запись';

  @override
  String get actionPlayLostModeSound => 'Воспроизвести звук режима пропажи';

  @override
  String get actionUpdateLocation => 'Обновить местоположение';

  @override
  String get erasePin => '6-значный PIN';

  @override
  String get erasePinHint => 'Обязательно для мобильных устройств';

  @override
  String get erasePreserveDataPlan => 'Сохранить тарифный план';

  @override
  String get eraseDisallowProximitySetup => 'Запретить Proximity-настройку';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Сообщение блокировки';

  @override
  String get lockPhone => 'Номер телефона';

  @override
  String get restartRebuildKernelCache => 'Пересобрать кэш ядра';

  @override
  String get restartNotifyUser => 'Уведомить пользователя';

  @override
  String get actionRemoteDesktop => 'Удалённый рабочий стол';

  @override
  String get tabNotes => 'Заметки';

  @override
  String get noNotesFound => 'Заметок пока нет';

  @override
  String get addNote => 'Добавить заметку';

  @override
  String get editNote => 'Редактировать заметку';

  @override
  String get deleteNote => 'Удалить заметку';

  @override
  String get deleteNoteConfirm =>
      'Вы действительно хотите удалить эту заметку?';

  @override
  String get noteContent => 'Содержание заметки';

  @override
  String get noteSaved => 'Заметка сохранена.';

  @override
  String get noteDeleted => 'Заметка удалена.';

  @override
  String get editDevice => 'Редактировать устройство';

  @override
  String get deviceUpdated => 'Устройство обновлено.';

  @override
  String get deleteDevice => 'Удалить устройство';

  @override
  String get deleteDeviceConfirm =>
      'Устройство будет окончательно удалено из MDM. Это действие нельзя отменить.';

  @override
  String get deviceDeleted => 'Устройство удалено.';

  @override
  String get cancelLostMode => 'Отменить режим пропажи';

  @override
  String get cancelLostModeConfirm =>
      'Отменить ожидающий запрос режима пропажи?';

  @override
  String get lostModeCancelled => 'Режим пропажи отменён.';

  @override
  String get tags => 'Теги';

  @override
  String get noTags => 'Нет тегов';

  @override
  String get addTag => 'Добавить тег';

  @override
  String get tagName => 'Имя тега';

  @override
  String get manageTags => 'Управление тегами';

  @override
  String get auditLog => 'Журнал аудита';

  @override
  String get noAuditEvents => 'Записи аудита не найдены';

  @override
  String get actionDailyCheckIn => 'Ежедневный Check-in';

  @override
  String get licensing => 'Лицензирование';

  @override
  String get deviceLimit => 'Лимит устройств';

  @override
  String get devicesUsed => 'Использовано устройств';

  @override
  String get licenseType => 'Тип лицензии';

  @override
  String get appleDevices => 'Устройства Apple';

  @override
  String get deleteUser => 'Удалить пользователя';

  @override
  String get deleteUserConfirm =>
      'Вы действительно хотите удалить этого пользователя? Это действие нельзя отменить.';

  @override
  String get userDeleted => 'Пользователь удалён.';

  @override
  String get createBlueprint => 'Создать Blueprint';

  @override
  String get editBlueprint => 'Редактировать Blueprint';

  @override
  String get deleteBlueprint => 'Удалить Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Удаление этого Blueprint отменит регистрацию всех назначенных устройств. Это действие нельзя отменить.';

  @override
  String get blueprintCreated => 'Blueprint создан.';

  @override
  String get blueprintUpdated => 'Blueprint обновлён.';

  @override
  String get blueprintDeleted => 'Blueprint удалён.';

  @override
  String get blueprintName => 'Имя Blueprint';

  @override
  String get blueprintDescription => 'Описание';

  @override
  String get enrollmentCode => 'Код регистрации';

  @override
  String get assignLibraryItem => 'Назначить элемент библиотеки';

  @override
  String get removeLibraryItem => 'Удалить элемент библиотеки';

  @override
  String get libraryItemAssigned => 'Элемент библиотеки назначен.';

  @override
  String get libraryItemRemoved => 'Элемент библиотеки удалён.';

  @override
  String get lostModeDetails => 'Подробности режима пропажи';

  @override
  String get lostModeEnabledBy => 'Включён пользователем';

  @override
  String get lostModeEnabledAt => 'Включён';

  @override
  String get searchBlueprints => 'Поиск Blueprints...';

  @override
  String get searchVulnerabilities => 'Поиск уязвимостей...';

  @override
  String get searchThreats => 'Поиск угроз...';

  @override
  String get searchAuditLog => 'Поиск в журнале аудита...';

  @override
  String get filterCritical => 'Критический';

  @override
  String get filterHigh => 'Высокий';

  @override
  String get filterMedium => 'Средний';

  @override
  String get filterLow => 'Низкий';

  @override
  String get filterClearAll => 'Сбросить все';

  @override
  String get filterTitle => 'Фильтр';

  @override
  String get filterApply => 'Применить';

  @override
  String get filterPlatform => 'Платформа';

  @override
  String get filterSupervision => 'Наблюдение';

  @override
  String get filterStatus => 'Статус';

  @override
  String get adeIntegrations => 'Интеграции ADE';

  @override
  String get noAdeIntegrations => 'Интеграции ADE не найдены.';

  @override
  String get adeDevices => 'Устройства ADE';

  @override
  String get noAdeDevices => 'Устройства ADE не найдены.';

  @override
  String get tokenExpiry => 'Срок действия токена';

  @override
  String get tokenValid => 'Токен действителен';

  @override
  String get tokenExpired => 'Токен просрочен';

  @override
  String get orgName => 'Организация';

  @override
  String get defaultBlueprint => 'Blueprint по умолчанию';

  @override
  String get renewToken => 'Обновить токен';

  @override
  String get publicKey => 'Открытый ключ';

  @override
  String get vulnerabilityDetections => 'Обнаружение уязвимостей';

  @override
  String get noDetectionsFound => 'Обнаружения не найдены.';

  @override
  String get behavioralDetections => 'Поведенческие обнаружения';

  @override
  String get noBehavioralDetections => 'Поведенческие обнаружения не найдены.';

  @override
  String get searchBehavioralDetections => 'Поиск обнаружений...';

  @override
  String get affectedDevices => 'Затронутые устройства';

  @override
  String get noAffectedDevices =>
      'Затронутые устройства не найдены. Ранее затронутые устройства могли быть удалены.';

  @override
  String get affectedSoftware => 'Затронутое ПО';

  @override
  String get blueprintTemplates => 'Шаблоны Blueprint';

  @override
  String get noTemplatesFound => 'Шаблоны не найдены.';

  @override
  String get otaEnrollmentProfile => 'Профиль OTA-регистрации';

  @override
  String get libraryItemActivity => 'Активность';

  @override
  String get libraryItemDeploymentStatus => 'Статус развёртывания';

  @override
  String get noActivityFound2 => 'Активность не найдена.';

  @override
  String get noStatusFound => 'Статус развёртывания не найден.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count обнаружений',
      many: '$count обнаружений',
      few: '$count обнаружения',
      one: '1 обнаружение',
      zero: 'Нет обнаружений',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count интеграций',
      many: '$count интеграций',
      few: '$count интеграции',
      one: '1 интеграция',
      zero: 'Нет интеграций',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Сведения об уязвимости';

  @override
  String get description => 'Описание';

  @override
  String get firstDetected => 'Первое обнаружение';

  @override
  String get lastDetected => 'Последнее обнаружение';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ПО',
      many: '$count ПО',
      few: '$count ПО',
      one: '1 ПО',
      zero: 'Нет ПО',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Редактировать интеграцию';

  @override
  String get deleteIntegration => 'Удалить интеграцию';

  @override
  String get deleteIntegrationConfirm =>
      'Вы уверены, что хотите удалить эту интеграцию ADE? Это действие нельзя отменить.';

  @override
  String get integrationDeleted => 'Интеграция удалена.';

  @override
  String get integrationUpdated => 'Интеграция обновлена.';

  @override
  String get defaultBlueprintId => 'ID Blueprint по умолчанию';

  @override
  String get phone => 'Телефон';

  @override
  String get downloadOtaProfile => 'Скачать профиль регистрации';

  @override
  String get otaProfileCopied =>
      'Профиль регистрации скопирован в буфер обмена.';

  @override
  String get noOtaProfile => 'Профиль регистрации недоступен.';

  @override
  String get createTag => 'Создать тег';

  @override
  String get editTag => 'Редактировать тег';

  @override
  String get deleteTag => 'Удалить тег';

  @override
  String get deleteTagConfirm => 'Вы уверены, что хотите удалить этот тег?';

  @override
  String get tagColor => 'Цвет';

  @override
  String get tagCreated => 'Тег создан.';

  @override
  String get tagUpdated => 'Тег обновлён.';

  @override
  String get tagDeleted => 'Тег удалён.';

  @override
  String get noTagsFound => 'Теги не найдены.';

  @override
  String get libraryItemDetail => 'Элемент библиотеки';

  @override
  String get viewActivity => 'Просмотр активности';

  @override
  String get viewStatus => 'Просмотр статуса';

  @override
  String get installations => 'Установки';

  @override
  String get createAdeIntegration => 'Создать интеграцию ADE';

  @override
  String get adeCreateDescription =>
      'Загрузите файл серверного токена (.p7m) из Apple Business Manager для создания новой интеграции ADE.';

  @override
  String get selectTokenFile => 'Выбрать файл токена';

  @override
  String tokenFileSelected(String name) {
    return 'Файл токена: $name';
  }

  @override
  String get noTokenFileSelected => 'Файл токена не выбран';

  @override
  String get integrationCreated => 'Интеграция создана.';

  @override
  String get create => 'Создать';

  @override
  String get step1GetPublicKey => 'Шаг 1: Скачать открытый ключ';

  @override
  String get step1Description =>
      'Скопируйте открытый ключ и загрузите его в Apple Business Manager.';

  @override
  String get step2UploadToken => 'Шаг 2: Загрузить серверный токен';

  @override
  String get step2Description =>
      'Выберите файл токена .p7m, полученный от Apple.';

  @override
  String get step3Configure => 'Шаг 3: Настройка';

  @override
  String get publicKeyCopied => 'Открытый ключ скопирован в буфер обмена.';

  @override
  String get renewTokenDescription =>
      'Загрузите новый файл токена .p7m для обновления токена этой интеграции.';

  @override
  String get tokenRenewed => 'Токен обновлён.';

  @override
  String get aboutLinks => 'Ссылки';

  @override
  String get aboutWebsite => 'Веб-сайт';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Исходный код';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Технологии';

  @override
  String get aboutFramework => 'Фреймворк';

  @override
  String get aboutStateManagement => 'Управление состоянием';

  @override
  String get aboutArchitecture => 'Архитектура';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Классы данных';

  @override
  String get aboutNavigationLabel => 'Навигация';

  @override
  String get aboutOpenSourceLicenses => 'Лицензии открытого ПО';

  @override
  String get aboutShowHide => 'Переключить видимость';

  @override
  String get editProfileTitle => 'Редактировать подключение';

  @override
  String get editProfileSubtitle => 'Обновите настройки подключения к тенанту.';

  @override
  String get apiTokenHintEdit =>
      'Оставьте пустым, чтобы сохранить текущий токен';

  @override
  String get profileUpdated => 'Профиль обновлён.';

  @override
  String profileSwitched(String name) {
    return 'Переключено на $name.';
  }

  @override
  String get securityAutoLock => 'Автоматическая блокировка';

  @override
  String get securityAutoLockDescription =>
      'Автоматически требовать аутентификацию после перехода приложения в фоновый режим.';

  @override
  String get timeoutImmediately => 'Сразу';

  @override
  String get timeoutSeconds30 => 'Через 30 секунд';

  @override
  String get timeoutSeconds60 => 'Через 1 минуту';

  @override
  String get timeoutSeconds120 => 'Через 2 минуты';

  @override
  String get timeoutMinutes5 => 'Через 5 минут';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Без Blueprint';

  @override
  String get presetSaveFilter => 'Сохранить набор фильтров';

  @override
  String get presetLoad => 'Загрузить набор';

  @override
  String get presetName => 'Название набора';

  @override
  String get presetNameHint => 'напр. Mac без наблюдения';

  @override
  String get presetSaved => 'Набор фильтров сохранён.';

  @override
  String get presetDeleted => 'Набор фильтров удалён.';

  @override
  String presetApplied(String name) {
    return 'Набор \"$name\" применён.';
  }

  @override
  String get presetNoPresets => 'Нет сохранённых наборов';

  @override
  String get presetNoPresetsMessage =>
      'Сохраните текущие фильтры как набор для быстрого доступа.';

  @override
  String get presetDeleteConfirm => 'Удалить этот набор?';

  @override
  String get presetNameRequired => 'Введите название для набора.';

  @override
  String selectedCount(int count) {
    return '$count выбрано';
  }

  @override
  String get selectAll => 'Выбрать все';

  @override
  String get deselectAll => 'Отменить выбор';

  @override
  String get bulkActions => 'Действия';

  @override
  String bulkActionsTitle(int count) {
    return 'Действия для $count устройств';
  }

  @override
  String get bulkActionAssignTag => 'Назначить тег';

  @override
  String get bulkActionAssignTagDescription =>
      'Добавить тег ко всем выбранным устройствам';

  @override
  String get bulkActionAssignBlueprint => 'Назначить Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Переместить выбранные устройства в Blueprint';

  @override
  String get bulkActionLock => 'Заблокировать устройства';

  @override
  String get bulkActionLockDescription =>
      'Удалённо заблокировать все выбранные устройства';

  @override
  String get bulkActionRestart => 'Перезагрузить устройства';

  @override
  String get bulkActionRestartDescription =>
      'Перезагрузить все выбранные устройства';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Вы действительно хотите перезагрузить $count устройств?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Действие успешно выполнено на $count устройствах.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Завершено на $success устройствах, $failed с ошибками.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return 'Завершено $completed из $total';
  }

  @override
  String get biometricReasonBulkAction =>
      'Пройдите аутентификацию для выполнения массового действия';

  @override
  String get lockPin => 'PIN блокировки (необязательно)';

  @override
  String get noTagsAvailable =>
      'Нет доступных тегов. Создайте теги в веб-консоли MDM.';

  @override
  String get noBlueprintsAvailable => 'Нет доступных Blueprints.';

  @override
  String get selectADevice => 'Выберите устройство';

  @override
  String get selectABlueprint => 'Выберите Blueprint';

  @override
  String get clearSearch => 'Очистить поиск';

  @override
  String get refresh => 'Обновить';

  @override
  String get moreActions => 'Ещё действия';

  @override
  String get close => 'Закрыть';

  @override
  String get onboardingSkip => 'Пропустить';

  @override
  String get onboardingNext => 'Далее';

  @override
  String get onboardingGetStarted => 'Начать';

  @override
  String get onboardingWelcomeTitle => 'Добро пожаловать в FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Ваш мобильный центр управления парком устройств Apple. Контролируйте, управляйте и защищайте весь парк из любой точки мира.';

  @override
  String get onboardingDevicesTitle => 'Управление устройствами';

  @override
  String get onboardingDevicesSubtitle =>
      'Полная прозрачность и контроль над каждым устройством в вашем парке.';

  @override
  String get onboardingDevicesFeature1 =>
      'Просмотр всех зарегистрированных iPhone, iPad, Mac и Apple TV';

  @override
  String get onboardingDevicesFeature2 =>
      'Отправка удалённых команд: блокировка, перезагрузка, стирание и многое другое';

  @override
  String get onboardingDevicesFeature3 =>
      'Отслеживание Blueprint, приложений и статуса соответствия';

  @override
  String get onboardingSecurityTitle => 'Создано для безопасности';

  @override
  String get onboardingSecuritySubtitle =>
      'Данные вашего парка защищены несколькими уровнями безопасности.';

  @override
  String get onboardingSecurityFeature1 =>
      'Биометрическая аутентификация с Face ID или отпечатком пальца';

  @override
  String get onboardingSecurityFeature2 =>
      '6-значный PIN для доступа к приложению';

  @override
  String get onboardingSecurityFeature3 =>
      'Автоматическая блокировка сеанса по тайм-ауту';

  @override
  String get onboardingReadyTitle => 'Готово к запуску';

  @override
  String get onboardingReadySubtitle =>
      'Подключите ваш MDM-тенант, чтобы начать управление парком устройств Apple. Далее настройте API-подключение и PIN безопасности.';

  @override
  String get searchTags => 'Поиск тегов';

  @override
  String tagDeviceCount(int count) {
    return '$count устройств';
  }

  @override
  String get sortTitle => 'Сортировка';

  @override
  String get sortDirection => 'Направление сортировки';

  @override
  String get ascending => 'По возрастанию';

  @override
  String get descending => 'По убыванию';

  @override
  String get filterSeverity => 'Критичность';

  @override
  String get filterSort => 'Фильтр и сортировка';

  @override
  String get statusQuarantined => 'На карантине';

  @override
  String get statusNotQuarantined => 'Не на карантине';

  @override
  String get statusDetected => 'Обнаружено';

  @override
  String get statusReleased => 'Снято';

  @override
  String get severityCritical => 'Критический';

  @override
  String get severityHigh => 'Высокий';

  @override
  String get severityMedium => 'Средний';

  @override
  String get severityLow => 'Низкий';

  @override
  String threatCount(int count) {
    return '$count угроз';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count обнаружений';
  }

  @override
  String get downloadPublicKey => 'Скачать';

  @override
  String get publicKeySaved => 'Открытый ключ сохранён';

  @override
  String get sortBy => 'Сортировать по';

  @override
  String get sortByCvss => 'Оценка CVSS';

  @override
  String get sortByDeviceCount => 'Затронутые устройства';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count уязвимостей';
  }

  @override
  String get assignTags => 'Теги';

  @override
  String get noTagsAvailableMessage =>
      'Нет доступных тегов. Сначала создайте теги.';

  @override
  String get failedToLoadTags => 'Не удалось загрузить теги';

  @override
  String get details => 'Подробности';

  @override
  String get searchLibraryItems => 'Поиск элементов библиотеки...';

  @override
  String get categoryCustomScript => 'Пользовательский скрипт';

  @override
  String get categoryCustomApp => 'Пользовательское приложение';

  @override
  String get categoryCustomProfile => 'Пользовательский профиль';

  @override
  String get categoryInHouseApp => 'Корпоративное приложение';

  @override
  String get categoryBuiltIn => 'Встроенное';

  @override
  String get categoryVppApps => 'VPP / App Store приложения';

  @override
  String get categoryManagedProfiles => 'Управляемые профили';

  @override
  String get categoryKandjiSetup => 'Настройка MDM';

  @override
  String get categoryMacosRelease => 'Обновления macOS';

  @override
  String get categoryThreatPolicy => 'Политики безопасности';

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
    return 'В $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Однократно';

  @override
  String get executionFrequencyEvery15Min => 'Каждые 15 минут';

  @override
  String get executionFrequencyEveryDay => 'Ежедневно';

  @override
  String get executionFrequencyNoEnforcement =>
      'Без принудительного применения';

  @override
  String get scriptBody => 'Скрипт';

  @override
  String get remediationScript => 'Скрипт исправления';

  @override
  String get allProperties => 'Все свойства';

  @override
  String get builtInLibraryItem => 'Встроенный элемент библиотеки';

  @override
  String get builtInDetailsHint => 'Подробности доступны на вкладке «Статус»';

  @override
  String get active => 'Активно';

  @override
  String get yes => 'Да';

  @override
  String get no => 'Нет';

  @override
  String get execution => 'Выполнение';

  @override
  String get restart => 'Перезагрузка';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Тип установки';

  @override
  String get enforcement => 'Принудительное применение';

  @override
  String get runsOnMac => 'Работает на Mac';

  @override
  String get runsOnIphone => 'Работает на iPhone';

  @override
  String get runsOnIpad => 'Работает на iPad';

  @override
  String get appName => 'Имя приложения';

  @override
  String get appVersion => 'Версия приложения';

  @override
  String get minOsVersion => 'Мин. версия ОС';

  @override
  String get created => 'Создано';

  @override
  String get updated => 'Обновлено';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count элементов',
      many: '$count элементов',
      few: '$count элемента',
      one: '1 элемент',
      zero: 'Нет элементов',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Устранено';

  @override
  String get severityInformational => 'Информационный';

  @override
  String get managementState => 'Статус управления';

  @override
  String get managementStateOpen => 'Открыто';

  @override
  String get managementStateClosed => 'Закрыто';

  @override
  String get classificationMalware => 'Вредоносное ПО';

  @override
  String get classificationPup => 'ПНП';

  @override
  String get classificationSus => 'Подозрительное';

  @override
  String get classificationMal => 'Вредоносное';

  @override
  String get blueprintRouting => 'Маршрутизация Blueprint';

  @override
  String get blueprintRoutingDesc =>
      'Код регистрации и маршрутизация для ручной / Android Work Profile-регистрации';

  @override
  String get blueprintRoutingNotConfigured =>
      'Маршрутизация Blueprint не настроена для этого тенанта.';

  @override
  String get enrollmentCodeActive => 'Активен';

  @override
  String get enrollmentCodeInactive => 'Неактивен';

  @override
  String get routingActivity => 'Активность маршрутизации';

  @override
  String get noRoutingActivity => 'Активность маршрутизации не найдена.';

  @override
  String get selfServiceCategories => 'Категории Self-Service';

  @override
  String get selfServiceDesc =>
      'Управление категориями Self-Service для ваших пользователей';

  @override
  String get addCategory => 'Добавить категорию';

  @override
  String get categoryName => 'Название категории';

  @override
  String get deleteCategory => 'Удалить категорию';

  @override
  String get deleteCategoryConfirm =>
      'Вы действительно хотите удалить эту категорию?';

  @override
  String get noCategoriesFound => 'Категории не найдены.';

  @override
  String get categoryCreated => 'Категория создана';

  @override
  String get categoryDeleted => 'Категория удалена';

  @override
  String get profileBody => 'XML профиля';

  @override
  String get customProfile => 'Пользовательский профиль';

  @override
  String get classification => 'Классификация';

  @override
  String get mdmEnabled => 'MDM включён';

  @override
  String get enrolledViaDep => 'Зарегистрировано через DEP';

  @override
  String get userApprovedMdm => 'Одобренный пользователем MDM';

  @override
  String get network => 'Сеть';

  @override
  String get ipAddress => 'IP-адрес';

  @override
  String get wifiNetwork => 'Сеть Wi-Fi';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Блокировка активации';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Режим разработчика';

  @override
  String get adbEnabled => 'ADB включён';

  @override
  String get unknownSources => 'Неизвестные источники';

  @override
  String get securityPatch => 'Патч безопасности';

  @override
  String get provisioningUdid => 'UDID подготовки';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'Информация MDM';

  @override
  String get lastEnrollment => 'Последняя регистрация';

  @override
  String get enterpriseId => 'Enterprise-ID';

  @override
  String get manufacturer => 'Производитель';

  @override
  String get generalStatus => 'Общий статус';

  @override
  String get apiLevel => 'Уровень API';

  @override
  String get userApprovedEnrollment => 'Одобренная пользователем регистрация';

  @override
  String get hostname => 'Имя хоста';

  @override
  String get macAddress => 'MAC-адрес';

  @override
  String get publicIp => 'Публичный IP';

  @override
  String get volumes => 'Тома';

  @override
  String volumeUsed(String percent) {
    return '$percent% занято';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available свободно из $total';
  }

  @override
  String get encrypted => 'Зашифровано';

  @override
  String get cpuInfo => 'ЦП';

  @override
  String processorCores(String cores) {
    return '$cores ядер';
  }

  @override
  String processors(String count) {
    return '$count процессоров';
  }

  @override
  String get batteryLevel => 'Уровень заряда';

  @override
  String get lastUser => 'Последний пользователь';

  @override
  String get bootVolume => 'Загрузочный том';

  @override
  String get localUsers => 'Локальные пользователи';

  @override
  String get regularUsers => 'Обычные пользователи';

  @override
  String get systemUsers => 'Системные пользователи';

  @override
  String get admin => 'Администратор';

  @override
  String get assignToBlueprint => 'Назначить Blueprint';

  @override
  String get installOnDevice => 'Установить на устройство';

  @override
  String get selectBlueprint => 'Выбрать Blueprint';

  @override
  String get selectDevice => 'Выбрать устройство';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'Лицензии VPP';

  @override
  String get fileName => 'Имя файла';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Блокировка активации';

  @override
  String get prismCategoryApps => 'Приложения';

  @override
  String get prismCategoryApplicationFirewall => 'Брандмауэр приложений';

  @override
  String get prismCategoryCellular => 'Сотовая связь';

  @override
  String get prismCategoryCertificates => 'Сертификаты';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Рабочий стол и заставка';

  @override
  String get prismCategoryDeviceInformation => 'Информация об устройстве';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper и XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Установленные профили';

  @override
  String get prismCategoryKernelExtensions => 'Расширения ядра';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents и Daemons';

  @override
  String get prismCategoryLocalUsers => 'Локальные пользователи';

  @override
  String get prismCategoryStartupSettings => 'Параметры запуска';

  @override
  String get prismCategorySystemExtensions => 'Системные расширения';

  @override
  String get prismCategoryTransparencyDatabase => 'База данных прозрачности';

  @override
  String prismRecords(int count) {
    return '$count записей';
  }

  @override
  String get prismNoData => 'Нет данных для этой категории.';

  @override
  String get prismExport => 'Экспорт CSV';

  @override
  String get prismExportRequested =>
      'Экспорт запрошен. Ссылка для скачивания скоро будет доступна.';

  @override
  String get prismFilterByFamily => 'Семейство устройств';

  @override
  String get prismAllFamilies => 'Все семейства';

  @override
  String get appearance => 'Оформление';

  @override
  String get themeMode => 'Тема';

  @override
  String get themeModeSystem => 'Системная';

  @override
  String get themeModeLight => 'Светлая';

  @override
  String get themeModeDark => 'Тёмная';

  @override
  String get shortTypeScript => 'Скрипт';

  @override
  String get shortTypeCustom => 'Собств.';

  @override
  String get shortTypeProfile => 'Профиль';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Управл.';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Безоп.';

  @override
  String get shortTypeAuto => 'Авто';

  @override
  String get categoryOsUpdates => 'Обновления ОС';

  @override
  String get categoryAutoApps => 'Авто-приложения';

  @override
  String get autoApp => 'Авто-приложение';

  @override
  String get fileSize => 'Размер файла';

  @override
  String get unzipLocation => 'Место распаковки';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Файл обновлён';

  @override
  String get mdmIdentifier => 'Идентификатор MDM';

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
