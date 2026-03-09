// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Arabic (`ar`).
class AppLocalizationsAr extends AppLocalizations {
  AppLocalizationsAr([String locale = 'ar']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'الأجهزة';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'المستخدمون';

  @override
  String get navSettings => 'الإعدادات';

  @override
  String get welcomeTitle => 'مرحباً بك في FleetPilot';

  @override
  String get welcomeSubtitle => 'أدِر أسطول أجهزة Apple الخاص بك من أي مكان.';

  @override
  String get addProfile => 'إضافة ملف تعريف';

  @override
  String get editProfile => 'تعديل ملف التعريف';

  @override
  String get displayName => 'الاسم المعروض';

  @override
  String get displayNameHint => 'مثال: Acme Corp — Prod';

  @override
  String get region => 'المنطقة';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'النطاق الفرعي';

  @override
  String get subdomainHint => 'اسم-المستأجر';

  @override
  String get apiToken => 'رمز API';

  @override
  String get apiTokenHint => 'الصق رمز API هنا';

  @override
  String urlPreview(String url) {
    return 'رابط API: $url';
  }

  @override
  String get verifyAndSave => 'تحقق وحفظ';

  @override
  String get verifying => 'جارٍ التحقق من الاتصال...';

  @override
  String get connectionSuccess => 'تم التحقق من الاتصال بنجاح!';

  @override
  String get errorInvalidToken =>
      'رمز API غير صالح. يرجى التحقق من الرمز في وحدة التحكم.';

  @override
  String get errorInsufficientPermissions =>
      'صلاحيات غير كافية. تأكد من أن الرمز يملك صلاحية قراءة الأجهزة.';

  @override
  String get errorNetworkUnreachable =>
      'تعذر الوصول إلى API. تحقق من اتصالك بالإنترنت والنطاق الفرعي.';

  @override
  String get errorNotFound => 'لم يتم العثور على المورد المطلوب.';

  @override
  String get errorValidation =>
      'تحتوي الطلب على بيانات غير صالحة. يرجى التحقق من مدخلاتك.';

  @override
  String get errorRateLimit =>
      'طلبات كثيرة جداً. يرجى الانتظار لحظة والمحاولة مرة أخرى.';

  @override
  String get errorServer => 'واجه الخادم خطأً. يرجى المحاولة لاحقاً.';

  @override
  String get errorUnexpected => 'حدث خطأ غير متوقع. يرجى المحاولة مرة أخرى.';

  @override
  String get retry => 'إعادة المحاولة';

  @override
  String get cancel => 'إلغاء';

  @override
  String get delete => 'حذف';

  @override
  String get save => 'حفظ';

  @override
  String get search => 'بحث';

  @override
  String get searchDevices => 'البحث عن أجهزة...';

  @override
  String get filterAll => 'الكل';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'جميع الـ Blueprints';

  @override
  String loadingDevices(int count) {
    return 'جارٍ تحميل $count جهاز...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count جهاز',
      many: '$count جهازاً',
      few: '$count أجهزة',
      two: 'جهازان',
      one: 'جهاز واحد',
      zero: 'لا توجد أجهزة',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'لم يتم العثور على أجهزة';

  @override
  String get noDevicesFoundMessage => 'حاول تعديل البحث أو عوامل التصفية.';

  @override
  String lastCheckIn(String time) {
    return 'آخر تسجيل: $time';
  }

  @override
  String get compliancePass => 'ناجح';

  @override
  String get complianceFail => 'فاشل';

  @override
  String get compliancePending => 'قيد الانتظار';

  @override
  String get deviceDetails => 'تفاصيل الجهاز';

  @override
  String get serialNumber => 'الرقم التسلسلي';

  @override
  String get model => 'الطراز';

  @override
  String get osVersion => 'إصدار نظام التشغيل';

  @override
  String get assetTag => 'علامة الأصل';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'تاريخ التسجيل';

  @override
  String get assignedUser => 'المستخدم المعيَّن';

  @override
  String get actions => 'الإجراءات';

  @override
  String get actionLock => 'قفل';

  @override
  String get actionRestart => 'إعادة تشغيل';

  @override
  String get actionShutdown => 'إيقاف التشغيل';

  @override
  String get actionErase => 'مسح';

  @override
  String get actionBlankPush => 'إرسال Blank Push';

  @override
  String get actionReinstallAgent => 'إعادة تثبيت العميل';

  @override
  String get actionUpdateInventory => 'تحديث المخزون';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'تفعيل سطح المكتب البعيد';

  @override
  String get actionRemoteDesktopDisable => 'تعطيل سطح المكتب البعيد';

  @override
  String get actionLostMode => 'تفعيل وضع الفقدان';

  @override
  String get destructiveActionTitle => 'تأكيد الإجراء التدميري';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'لا يمكن التراجع عن هذا الإجراء. اكتب \"$deviceName\" للتأكيد.';
  }

  @override
  String get destructiveActionHint => 'اكتب اسم الجهاز للتأكيد';

  @override
  String get confirm => 'تأكيد';

  @override
  String get actionSuccess => 'تم تنفيذ الإجراء بنجاح.';

  @override
  String get actionFailed => 'فشل الإجراء. يرجى المحاولة مرة أخرى.';

  @override
  String get biometricReason => 'قم بالمصادقة للوصول إلى FleetPilot';

  @override
  String get biometricReasonSecrets => 'قم بالمصادقة لعرض البيانات الحساسة';

  @override
  String get biometricReasonDestructive => 'قم بالمصادقة لتنفيذ هذا الإجراء';

  @override
  String get biometricFailed => 'فشلت المصادقة. يرجى المحاولة مرة أخرى.';

  @override
  String get profiles => 'ملفات التعريف';

  @override
  String activeProfile(String name) {
    return 'نشط: $name';
  }

  @override
  String get switchProfile => 'تبديل ملف التعريف';

  @override
  String get deleteProfile => 'حذف ملف التعريف';

  @override
  String get deleteProfileConfirm =>
      'هل تريد حقاً حذف ملف التعريف هذا؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get noProfiles => 'لا توجد ملفات تعريف مُهيأة';

  @override
  String get settings => 'الإعدادات';

  @override
  String get about => 'حول';

  @override
  String version(String version) {
    return 'الإصدار $version';
  }

  @override
  String get validationRequired => 'هذا الحقل مطلوب.';

  @override
  String get validationSubdomain =>
      'يُسمح فقط بالأحرف والأرقام والشرطات. لا شرطات في البداية أو النهاية.';

  @override
  String get validationToken =>
      'صيغة الرمز غير صالحة. 20-500 حرف، أحرف أبجدية رقمية وفواصل شائعة فقط.';

  @override
  String pinLockedOut(int seconds) {
    return 'محاولات كثيرة جداً. حاول مرة أخرى بعد $seconds ثانية.';
  }

  @override
  String get complianceStatus => 'حالة الامتثال';

  @override
  String get platform => 'المنصة';

  @override
  String get deviceName => 'اسم الجهاز';

  @override
  String get searchUsers => 'البحث عن مستخدمين...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count مستخدم',
      many: '$count مستخدماً',
      few: '$count مستخدمين',
      two: 'مستخدمان',
      one: 'مستخدم واحد',
      zero: 'لا يوجد مستخدمون',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'لم يتم العثور على مستخدمين';

  @override
  String get noUsersFoundMessage => 'حاول تعديل البحث أو عوامل التصفية.';

  @override
  String get showArchived => 'إظهار المؤرشفين';

  @override
  String get archived => 'مؤرشف';

  @override
  String get email => 'البريد الإلكتروني';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprint',
      many: '$count Blueprint',
      few: '$count Blueprints',
      two: 'Blueprint اثنان',
      one: 'Blueprint واحد',
      zero: 'لا توجد Blueprints',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'لم يتم العثور على Blueprints';

  @override
  String get noBlueprintsFoundMessage => 'لم يتم تهيئة أي Blueprints بعد.';

  @override
  String get enrollmentActive => 'التسجيل نشط';

  @override
  String get enrollmentInactive => 'التسجيل غير نشط';

  @override
  String get tabOverview => 'نظرة عامة';

  @override
  String get tabApps => 'التطبيقات';

  @override
  String get tabStatus => 'الحالة';

  @override
  String get tabActivity => 'النشاط';

  @override
  String get tabCommands => 'الأوامر';

  @override
  String get hardware => 'العتاد';

  @override
  String get security => 'الأمان';

  @override
  String get totalStorage => 'التخزين الكلي';

  @override
  String get availableStorage => 'التخزين المتاح';

  @override
  String get totalRam => 'إجمالي الذاكرة';

  @override
  String get wifiMac => 'عنوان MAC للواي فاي';

  @override
  String get encryption => 'التشفير';

  @override
  String get passcode => 'رمز المرور';

  @override
  String get noAppsFound => 'لم يتم العثور على تطبيقات';

  @override
  String get noActivityFound => 'لم يتم العثور على نشاط';

  @override
  String get noCommandsFound => 'لم يتم العثور على أوامر';

  @override
  String get libraryItems => 'عناصر المكتبة';

  @override
  String get parameters => 'المعلمات';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'بنية نظام التشغيل';

  @override
  String get cellular => 'شبكة خلوية';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تطبيق',
      many: '$count تطبيقاً',
      few: '$count تطبيقات',
      two: 'تطبيقان',
      one: 'تطبيق واحد',
      zero: 'لا توجد تطبيقات',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'أ → ي';

  @override
  String get sortZA => 'ي → أ';

  @override
  String get userDetails => 'تفاصيل المستخدم';

  @override
  String get jobTitle => 'المسمى الوظيفي';

  @override
  String get department => 'القسم';

  @override
  String get createdAt => 'تاريخ الإنشاء';

  @override
  String get updatedAt => 'تاريخ التحديث';

  @override
  String get assignedDevices => 'الأجهزة المعيَّنة';

  @override
  String get noAssignedDevices => 'لا توجد أجهزة معيَّنة لهذا المستخدم.';

  @override
  String get userInfo => 'معلومات المستخدم';

  @override
  String get navMore => 'المزيد';

  @override
  String get tabSecrets => 'البيانات السرية';

  @override
  String get filevaultKey => 'مفتاح استرداد FileVault';

  @override
  String get unlockPin => 'رمز إلغاء القفل';

  @override
  String get recoveryPassword => 'كلمة مرور Recovery Lock';

  @override
  String get bypassCode => 'رمز تجاوز قفل التنشيط';

  @override
  String get noSecretsFound => 'لا توجد بيانات سرية لهذا الجهاز.';

  @override
  String get secretCopied => 'تم نسخ البيانات السرية إلى الحافظة';

  @override
  String get threats => 'التهديدات';

  @override
  String get noThreatsFound => 'لم يتم اكتشاف تهديدات.';

  @override
  String get vulnerabilities => 'الثغرات الأمنية';

  @override
  String get noVulnerabilitiesFound => 'لم يتم اكتشاف ثغرات أمنية.';

  @override
  String get aboutApp => 'حول FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot هو تطبيق مفتوح المصدر لإدارة MDM لأساطيل أجهزة Apple.';

  @override
  String get tapToCopy => 'اضغط للنسخ';

  @override
  String get devices => 'الأجهزة';

  @override
  String get severity => 'الخطورة';

  @override
  String get tabLocation => 'الموقع';

  @override
  String get locationNotAvailable => 'بيانات الموقع غير متاحة لهذا الجهاز.';

  @override
  String get enableLostModeHint => 'فعّل وضع الفقدان لتحديد موقع هذا الجهاز.';

  @override
  String get lostModeEnabled => 'وضع الفقدان مفعّل';

  @override
  String get noLibraryItemsFound => 'لم يتم العثور على عناصر مكتبة.';

  @override
  String get licenses => 'التراخيص';

  @override
  String get lostModeMessage => 'رسالة وضع الفقدان';

  @override
  String get lostModePhone => 'رقم الهاتف';

  @override
  String get lostModeFootnote => 'رسالة اختيارية ورقم هاتف يظهران على الجهاز';

  @override
  String get supervised => 'مُشرف عليه';

  @override
  String get unsupervised => 'غير مُشرف عليه';

  @override
  String get filterSupervised => 'مُشرف عليه';

  @override
  String get filterUnsupervised => 'غير مُشرف عليه';

  @override
  String get language => 'اللغة';

  @override
  String get languageSystem => 'الافتراضي للنظام';

  @override
  String get actionDisableLostMode => 'تعطيل وضع الفقدان';

  @override
  String get actionClearPasscode => 'مسح رمز المرور';

  @override
  String get filterLostMode => 'وضع الفقدان';

  @override
  String get lostMode => 'وضع الفقدان';

  @override
  String get sectionManagement => 'الإدارة';

  @override
  String get sectionStatus => 'الحالة';

  @override
  String get statusMissing => 'مفقود';

  @override
  String get statusRemoved => 'تمت الإزالة';

  @override
  String get agent => 'العميل';

  @override
  String get identifier => 'المعرّف';

  @override
  String get processor => 'المعالج';

  @override
  String get hardwareUuid => 'معرّف UUID للعتاد';

  @override
  String get devicePosture => 'وضعية الجهاز';

  @override
  String get unknownDevice => 'جهاز غير معروف';

  @override
  String get securityAppLock => 'قفل التطبيق';

  @override
  String get securityAppLockDescription =>
      'قم بتعيين رمز PIN مكون من 6 أرقام لحماية التطبيق. يمكن تفعيل المصادقة البيومترية بعد تعيين رمز PIN.';

  @override
  String get securityAppLockActive => 'قفل التطبيق مفعّل';

  @override
  String get securityAppLockInactive => 'لا يوجد قفل تطبيق مُهيأ';

  @override
  String get securitySetPin => 'تعيين رمز PIN';

  @override
  String get securityChangePin => 'تغيير رمز PIN';

  @override
  String get securityRemovePin => 'إزالة رمز PIN';

  @override
  String get securityCurrentPin => 'رمز PIN الحالي';

  @override
  String get securityNewPin => 'رمز PIN الجديد';

  @override
  String get securityConfirmPin => 'أعد إدخال رمز PIN للتأكيد.';

  @override
  String get securityPinLength => 'يجب أن يكون رمز PIN مكوناً من 6 أرقام.';

  @override
  String get securityPinMismatch => 'رمزا PIN غير متطابقين.';

  @override
  String get securityPinWrong => 'رمز PIN خاطئ.';

  @override
  String get securityPinSet => 'تم تعيين رمز PIN.';

  @override
  String get securityPinChanged => 'تم تغيير رمز PIN.';

  @override
  String get securityPinRemoved => 'تمت إزالة رمز PIN وقفل التطبيق.';

  @override
  String get securityBiometric => 'المصادقة البيومترية';

  @override
  String get securityBiometricDescription =>
      'استخدم بصمة الإصبع أو التعرف على الوجه لإلغاء قفل التطبيق بدلاً من رمز PIN.';

  @override
  String get securityBiometricEnable => 'إلغاء القفل البيومتري';

  @override
  String get securityBiometricActive => 'نشط';

  @override
  String get securityBiometricInactive => 'غير نشط';

  @override
  String get securityBiometricUnavailable =>
      'المصادقة البيومترية غير متاحة على هذا الجهاز.';

  @override
  String get securityNext => 'التالي';

  @override
  String get actionRenewMdm => 'تجديد ملف MDM';

  @override
  String get actionSetName => 'تعيين اسم الجهاز';

  @override
  String get actionSetNameHint => 'أدخل اسم الجهاز الجديد';

  @override
  String get actionDeleteUser => 'حذف المستخدم';

  @override
  String get actionDeleteUserName => 'اسم المستخدم';

  @override
  String get actionDeleteAllUsers => 'حذف جميع المستخدمين';

  @override
  String get actionForceDeletion => 'فرض الحذف';

  @override
  String get actionUnlockAccount => 'إلغاء قفل الحساب';

  @override
  String get actionPlayLostModeSound => 'تشغيل صوت وضع الفقدان';

  @override
  String get actionUpdateLocation => 'تحديث الموقع';

  @override
  String get erasePin => 'رمز PIN مكون من 6 أرقام';

  @override
  String get erasePinHint => 'مطلوب للأجهزة المحمولة';

  @override
  String get erasePreserveDataPlan => 'الاحتفاظ بخطة البيانات';

  @override
  String get eraseDisallowProximitySetup => 'منع الإعداد عبر القرب';

  @override
  String get eraseReturnToService => 'العودة للخدمة';

  @override
  String get lockMessage => 'رسالة القفل';

  @override
  String get lockPhone => 'رقم الهاتف';

  @override
  String get restartRebuildKernelCache =>
      'إعادة بناء ذاكرة التخزين المؤقت للنواة';

  @override
  String get restartNotifyUser => 'إشعار المستخدم';

  @override
  String get actionRemoteDesktop => 'سطح المكتب البعيد';

  @override
  String get tabNotes => 'الملاحظات';

  @override
  String get noNotesFound => 'لا توجد ملاحظات بعد';

  @override
  String get addNote => 'إضافة ملاحظة';

  @override
  String get editNote => 'تعديل ملاحظة';

  @override
  String get deleteNote => 'حذف ملاحظة';

  @override
  String get deleteNoteConfirm => 'هل تريد حقاً حذف هذه الملاحظة؟';

  @override
  String get noteContent => 'محتوى الملاحظة';

  @override
  String get noteSaved => 'تم حفظ الملاحظة.';

  @override
  String get noteDeleted => 'تم حذف الملاحظة.';

  @override
  String get editDevice => 'تعديل الجهاز';

  @override
  String get deviceUpdated => 'تم تحديث الجهاز.';

  @override
  String get deleteDevice => 'حذف الجهاز';

  @override
  String get deleteDeviceConfirm =>
      'سيتم إزالة الجهاز نهائياً من MDM. لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get deviceDeleted => 'تم حذف الجهاز.';

  @override
  String get cancelLostMode => 'إلغاء وضع الفقدان';

  @override
  String get cancelLostModeConfirm => 'إلغاء طلب وضع الفقدان المعلق؟';

  @override
  String get lostModeCancelled => 'تم إلغاء وضع الفقدان.';

  @override
  String get tags => 'العلامات';

  @override
  String get noTags => 'لا توجد علامات';

  @override
  String get addTag => 'إضافة علامة';

  @override
  String get tagName => 'اسم العلامة';

  @override
  String get manageTags => 'إدارة العلامات';

  @override
  String get auditLog => 'سجل التدقيق';

  @override
  String get noAuditEvents => 'لم يتم العثور على أحداث تدقيق';

  @override
  String get actionDailyCheckIn => 'تسجيل يومي';

  @override
  String get licensing => 'الترخيص';

  @override
  String get deviceLimit => 'حد الأجهزة';

  @override
  String get devicesUsed => 'الأجهزة المستخدمة';

  @override
  String get licenseType => 'نوع الترخيص';

  @override
  String get appleDevices => 'أجهزة Apple';

  @override
  String get deleteUser => 'حذف المستخدم';

  @override
  String get deleteUserConfirm =>
      'هل تريد حقاً حذف هذا المستخدم؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get userDeleted => 'تم حذف المستخدم.';

  @override
  String get createBlueprint => 'إنشاء Blueprint';

  @override
  String get editBlueprint => 'تعديل Blueprint';

  @override
  String get deleteBlueprint => 'حذف Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'سيؤدي حذف هذا الـ Blueprint إلى إلغاء تسجيل جميع الأجهزة المعيَّنة. لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get blueprintCreated => 'تم إنشاء Blueprint.';

  @override
  String get blueprintUpdated => 'تم تحديث Blueprint.';

  @override
  String get blueprintDeleted => 'تم حذف Blueprint.';

  @override
  String get blueprintName => 'اسم Blueprint';

  @override
  String get blueprintDescription => 'الوصف';

  @override
  String get enrollmentCode => 'رمز التسجيل';

  @override
  String get assignLibraryItem => 'تعيين عنصر مكتبة';

  @override
  String get removeLibraryItem => 'إزالة عنصر مكتبة';

  @override
  String get libraryItemAssigned => 'تم تعيين عنصر المكتبة.';

  @override
  String get libraryItemRemoved => 'تمت إزالة عنصر المكتبة.';

  @override
  String get lostModeDetails => 'تفاصيل وضع الفقدان';

  @override
  String get lostModeEnabledBy => 'مفعّل بواسطة';

  @override
  String get lostModeEnabledAt => 'مفعّل في';

  @override
  String get searchBlueprints => 'البحث عن Blueprints...';

  @override
  String get searchVulnerabilities => 'البحث عن ثغرات أمنية...';

  @override
  String get searchThreats => 'البحث عن تهديدات...';

  @override
  String get searchAuditLog => 'البحث في سجل التدقيق...';

  @override
  String get filterCritical => 'حرج';

  @override
  String get filterHigh => 'عالي';

  @override
  String get filterMedium => 'متوسط';

  @override
  String get filterLow => 'منخفض';

  @override
  String get filterClearAll => 'مسح الكل';

  @override
  String get filterTitle => 'التصفية';

  @override
  String get filterApply => 'تطبيق';

  @override
  String get filterPlatform => 'المنصة';

  @override
  String get filterSupervision => 'الإشراف';

  @override
  String get filterStatus => 'الحالة';

  @override
  String get adeIntegrations => 'تكاملات ADE';

  @override
  String get noAdeIntegrations => 'لم يتم العثور على تكاملات ADE.';

  @override
  String get adeDevices => 'أجهزة ADE';

  @override
  String get noAdeDevices => 'لم يتم العثور على أجهزة ADE.';

  @override
  String get tokenExpiry => 'انتهاء صلاحية الرمز';

  @override
  String get tokenValid => 'الرمز صالح';

  @override
  String get tokenExpired => 'الرمز منتهي الصلاحية';

  @override
  String get orgName => 'المؤسسة';

  @override
  String get defaultBlueprint => 'Blueprint الافتراضي';

  @override
  String get renewToken => 'تجديد الرمز';

  @override
  String get publicKey => 'المفتاح العام';

  @override
  String get vulnerabilityDetections => 'اكتشاف الثغرات الأمنية';

  @override
  String get noDetectionsFound => 'لم يتم العثور على اكتشافات.';

  @override
  String get behavioralDetections => 'الاكتشافات السلوكية';

  @override
  String get noBehavioralDetections => 'لم يتم العثور على اكتشافات سلوكية.';

  @override
  String get searchBehavioralDetections => 'البحث عن اكتشافات...';

  @override
  String get affectedDevices => 'الأجهزة المتأثرة';

  @override
  String get noAffectedDevices =>
      'لم يتم العثور على أجهزة متأثرة. ربما تمت إزالة الأجهزة المتأثرة سابقاً.';

  @override
  String get affectedSoftware => 'البرامج المتأثرة';

  @override
  String get blueprintTemplates => 'قوالب Blueprint';

  @override
  String get noTemplatesFound => 'لم يتم العثور على قوالب.';

  @override
  String get otaEnrollmentProfile => 'ملف تسجيل OTA';

  @override
  String get libraryItemActivity => 'النشاط';

  @override
  String get libraryItemDeploymentStatus => 'حالة النشر';

  @override
  String get noActivityFound2 => 'لم يتم العثور على نشاط.';

  @override
  String get noStatusFound => 'لم يتم العثور على حالة نشر.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count اكتشاف',
      many: '$count اكتشافاً',
      few: '$count اكتشافات',
      two: 'اكتشافان',
      one: 'اكتشاف واحد',
      zero: 'لا توجد اكتشافات',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count تكامل',
      many: '$count تكاملاً',
      few: '$count تكاملات',
      two: 'تكاملان',
      one: 'تكامل واحد',
      zero: 'لا توجد تكاملات',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'تفاصيل الثغرة الأمنية';

  @override
  String get description => 'الوصف';

  @override
  String get firstDetected => 'أول اكتشاف';

  @override
  String get lastDetected => 'آخر اكتشاف';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count برنامج',
      many: '$count برنامجاً',
      few: '$count برامج',
      two: 'برنامجان',
      one: 'برنامج واحد',
      zero: 'لا توجد برامج',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'تعديل التكامل';

  @override
  String get deleteIntegration => 'حذف التكامل';

  @override
  String get deleteIntegrationConfirm =>
      'هل أنت متأكد من حذف تكامل ADE هذا؟ لا يمكن التراجع عن هذا الإجراء.';

  @override
  String get integrationDeleted => 'تم حذف التكامل.';

  @override
  String get integrationUpdated => 'تم تحديث التكامل.';

  @override
  String get defaultBlueprintId => 'معرّف Blueprint الافتراضي';

  @override
  String get phone => 'الهاتف';

  @override
  String get downloadOtaProfile => 'تنزيل ملف التسجيل';

  @override
  String get otaProfileCopied => 'تم نسخ ملف التسجيل إلى الحافظة.';

  @override
  String get noOtaProfile => 'لا يتوفر ملف تسجيل.';

  @override
  String get createTag => 'إنشاء علامة';

  @override
  String get editTag => 'تعديل علامة';

  @override
  String get deleteTag => 'حذف علامة';

  @override
  String get deleteTagConfirm => 'هل أنت متأكد من حذف هذه العلامة؟';

  @override
  String get tagColor => 'اللون';

  @override
  String get tagCreated => 'تم إنشاء العلامة.';

  @override
  String get tagUpdated => 'تم تحديث العلامة.';

  @override
  String get tagDeleted => 'تم حذف العلامة.';

  @override
  String get noTagsFound => 'لم يتم العثور على علامات.';

  @override
  String get libraryItemDetail => 'عنصر المكتبة';

  @override
  String get viewActivity => 'عرض النشاط';

  @override
  String get viewStatus => 'عرض الحالة';

  @override
  String get installations => 'التثبيتات';

  @override
  String get createAdeIntegration => 'إنشاء تكامل ADE';

  @override
  String get adeCreateDescription =>
      'قم بتحميل ملف رمز الخادم (.p7m) من Apple Business Manager لإنشاء تكامل ADE جديد.';

  @override
  String get selectTokenFile => 'اختيار ملف الرمز';

  @override
  String tokenFileSelected(String name) {
    return 'ملف الرمز: $name';
  }

  @override
  String get noTokenFileSelected => 'لم يتم اختيار ملف رمز';

  @override
  String get integrationCreated => 'تم إنشاء التكامل.';

  @override
  String get create => 'إنشاء';

  @override
  String get step1GetPublicKey => 'الخطوة 1: تنزيل المفتاح العام';

  @override
  String get step1Description =>
      'انسخ المفتاح العام وقم بتحميله في Apple Business Manager.';

  @override
  String get step2UploadToken => 'الخطوة 2: تحميل رمز الخادم';

  @override
  String get step2Description => 'اختر ملف رمز .p7m الذي قمت بتنزيله من Apple.';

  @override
  String get step3Configure => 'الخطوة 3: التهيئة';

  @override
  String get publicKeyCopied => 'تم نسخ المفتاح العام إلى الحافظة.';

  @override
  String get renewTokenDescription =>
      'قم بتحميل ملف رمز .p7m جديد لتجديد رمز هذا التكامل.';

  @override
  String get tokenRenewed => 'تم تجديد الرمز.';

  @override
  String get aboutLinks => 'الروابط';

  @override
  String get aboutWebsite => 'الموقع الإلكتروني';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'الشفرة المصدرية';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'التقنيات';

  @override
  String get aboutFramework => 'إطار العمل';

  @override
  String get aboutStateManagement => 'إدارة الحالة';

  @override
  String get aboutArchitecture => 'البنية المعمارية';

  @override
  String get aboutApi => 'واجهة برمجة التطبيقات';

  @override
  String get aboutDataClasses => 'فئات البيانات';

  @override
  String get aboutNavigationLabel => 'التنقل';

  @override
  String get aboutOpenSourceLicenses => 'تراخيص مفتوحة المصدر';

  @override
  String get aboutShowHide => 'تبديل الظهور';

  @override
  String get editProfileTitle => 'تعديل الاتصال';

  @override
  String get editProfileSubtitle => 'قم بتحديث إعدادات اتصال المستأجر.';

  @override
  String get apiTokenHintEdit => 'اتركه فارغاً للاحتفاظ بالرمز الحالي';

  @override
  String get profileUpdated => 'تم تحديث ملف التعريف.';

  @override
  String profileSwitched(String name) {
    return 'تم التبديل إلى $name.';
  }

  @override
  String get securityAutoLock => 'القفل التلقائي';

  @override
  String get securityAutoLockDescription =>
      'طلب المصادقة تلقائياً بعد انتقال التطبيق إلى الخلفية.';

  @override
  String get timeoutImmediately => 'فوراً';

  @override
  String get timeoutSeconds30 => 'بعد 30 ثانية';

  @override
  String get timeoutSeconds60 => 'بعد دقيقة واحدة';

  @override
  String get timeoutSeconds120 => 'بعد دقيقتين';

  @override
  String get timeoutMinutes5 => 'بعد 5 دقائق';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'بدون Blueprint';

  @override
  String get presetSaveFilter => 'حفظ إعداد مسبق للتصفية';

  @override
  String get presetLoad => 'تحميل إعداد مسبق';

  @override
  String get presetName => 'اسم الإعداد المسبق';

  @override
  String get presetNameHint => 'مثال: أجهزة Mac غير المُشرف عليها';

  @override
  String get presetSaved => 'تم حفظ الإعداد المسبق للتصفية.';

  @override
  String get presetDeleted => 'تم حذف الإعداد المسبق للتصفية.';

  @override
  String presetApplied(String name) {
    return 'تم تطبيق الإعداد المسبق \"$name\".';
  }

  @override
  String get presetNoPresets => 'لا توجد إعدادات مسبقة محفوظة';

  @override
  String get presetNoPresetsMessage =>
      'احفظ عوامل التصفية الحالية كإعداد مسبق للوصول السريع.';

  @override
  String get presetDeleteConfirm => 'حذف هذا الإعداد المسبق؟';

  @override
  String get presetNameRequired => 'يرجى إدخال اسم للإعداد المسبق.';

  @override
  String selectedCount(int count) {
    return '$count محدد';
  }

  @override
  String get selectAll => 'تحديد الكل';

  @override
  String get deselectAll => 'إلغاء تحديد الكل';

  @override
  String get bulkActions => 'الإجراءات';

  @override
  String bulkActionsTitle(int count) {
    return 'إجراءات لـ $count جهاز';
  }

  @override
  String get bulkActionAssignTag => 'تعيين علامة';

  @override
  String get bulkActionAssignTagDescription =>
      'إضافة علامة لجميع الأجهزة المحددة';

  @override
  String get bulkActionAssignBlueprint => 'تعيين Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'نقل الأجهزة المحددة إلى Blueprint';

  @override
  String get bulkActionLock => 'قفل الأجهزة';

  @override
  String get bulkActionLockDescription => 'قفل جميع الأجهزة المحددة عن بُعد';

  @override
  String get bulkActionRestart => 'إعادة تشغيل الأجهزة';

  @override
  String get bulkActionRestartDescription => 'إعادة تشغيل جميع الأجهزة المحددة';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'هل تريد حقاً إعادة تشغيل $count جهاز؟';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'تم تنفيذ الإجراء على $count جهاز بنجاح.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'اكتمل على $success جهاز، فشل على $failed.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return 'اكتمل $completed من $total';
  }

  @override
  String get biometricReasonBulkAction => 'قم بالمصادقة لتنفيذ الإجراء الجماعي';

  @override
  String get lockPin => 'رمز PIN للقفل (اختياري)';

  @override
  String get noTagsAvailable =>
      'لا توجد علامات متاحة. أنشئ علامات في وحدة تحكم MDM.';

  @override
  String get noBlueprintsAvailable => 'لا توجد Blueprints متاحة.';

  @override
  String get selectADevice => 'اختيار جهاز';

  @override
  String get selectABlueprint => 'اختيار Blueprint';

  @override
  String get clearSearch => 'مسح البحث';

  @override
  String get refresh => 'تحديث';

  @override
  String get moreActions => 'إجراءات إضافية';

  @override
  String get close => 'إغلاق';

  @override
  String get onboardingSkip => 'تخطي';

  @override
  String get onboardingNext => 'التالي';

  @override
  String get onboardingGetStarted => 'ابدأ الآن';

  @override
  String get onboardingWelcomeTitle => 'مرحباً بك في FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'مركز القيادة المحمول لإدارة أسطول أجهزة Apple. راقب وأدِر وأمّن أسطولك بالكامل من أي مكان.';

  @override
  String get onboardingDevicesTitle => 'إدارة الأجهزة';

  @override
  String get onboardingDevicesSubtitle =>
      'رؤية كاملة وتحكم في كل جهاز في أسطولك.';

  @override
  String get onboardingDevicesFeature1 =>
      'عرض جميع أجهزة iPhone وiPad وMac وApple TV المسجلة';

  @override
  String get onboardingDevicesFeature2 =>
      'إرسال أوامر عن بُعد: قفل، إعادة تشغيل، مسح والمزيد';

  @override
  String get onboardingDevicesFeature3 =>
      'تتبع الـ Blueprints والتطبيقات وحالة الامتثال';

  @override
  String get onboardingSecurityTitle => 'مصمم للأمان';

  @override
  String get onboardingSecuritySubtitle =>
      'تبقى بيانات أسطولك محمية بطبقات أمان متعددة.';

  @override
  String get onboardingSecurityFeature1 =>
      'المصادقة البيومترية بالتعرف على الوجه أو بصمة الإصبع';

  @override
  String get onboardingSecurityFeature2 =>
      'قفل التطبيق برمز PIN مكون من 6 أرقام';

  @override
  String get onboardingSecurityFeature3 =>
      'قفل الجلسة تلقائياً عند انتهاء المهلة';

  @override
  String get onboardingReadyTitle => 'جاهز للانطلاق';

  @override
  String get onboardingReadySubtitle =>
      'اربط مستأجر MDM الخاص بك لبدء إدارة أسطول أجهزة Apple. بعد ذلك، قم بإعداد اتصال API ورمز PIN للأمان.';

  @override
  String get searchTags => 'البحث عن علامات';

  @override
  String tagDeviceCount(int count) {
    return '$count جهاز';
  }

  @override
  String get sortTitle => 'الترتيب';

  @override
  String get sortDirection => 'اتجاه الترتيب';

  @override
  String get ascending => 'تصاعدي';

  @override
  String get descending => 'تنازلي';

  @override
  String get filterSeverity => 'الخطورة';

  @override
  String get filterSort => 'التصفية والترتيب';

  @override
  String get statusQuarantined => 'معزول';

  @override
  String get statusNotQuarantined => 'غير معزول';

  @override
  String get statusDetected => 'مكتشف';

  @override
  String get statusReleased => 'مُطلَق';

  @override
  String get severityCritical => 'حرج';

  @override
  String get severityHigh => 'عالي';

  @override
  String get severityMedium => 'متوسط';

  @override
  String get severityLow => 'منخفض';

  @override
  String threatCount(int count) {
    return '$count تهديد';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count اكتشاف';
  }

  @override
  String get downloadPublicKey => 'تنزيل';

  @override
  String get publicKeySaved => 'تم حفظ المفتاح العام';

  @override
  String get sortBy => 'ترتيب حسب';

  @override
  String get sortByCvss => 'درجة CVSS';

  @override
  String get sortByDeviceCount => 'الأجهزة المتأثرة';

  @override
  String get sortByCveId => 'معرّف CVE';

  @override
  String vulnCount(int count) {
    return '$count ثغرة أمنية';
  }

  @override
  String get assignTags => 'العلامات';

  @override
  String get noTagsAvailableMessage =>
      'لا توجد علامات متاحة. أنشئ علامات أولاً.';

  @override
  String get failedToLoadTags => 'فشل تحميل العلامات';

  @override
  String get details => 'التفاصيل';

  @override
  String get searchLibraryItems => 'البحث عن عناصر المكتبة...';

  @override
  String get categoryCustomScript => 'نص برمجي مخصص';

  @override
  String get categoryCustomApp => 'تطبيق مخصص';

  @override
  String get categoryCustomProfile => 'ملف تعريف مخصص';

  @override
  String get categoryInHouseApp => 'تطبيق داخلي';

  @override
  String get categoryBuiltIn => 'مدمج';

  @override
  String get categoryVppApps => 'تطبيقات VPP / متجر التطبيقات';

  @override
  String get categoryManagedProfiles => 'ملفات تعريف مُدارة';

  @override
  String get categoryKandjiSetup => 'إعداد MDM';

  @override
  String get categoryMacosRelease => 'تحديثات macOS';

  @override
  String get categoryThreatPolicy => 'سياسات الأمان';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: 'في $count Blueprint',
      many: 'في $count Blueprint',
      few: 'في $count Blueprints',
      two: 'في Blueprint اثنين',
      one: 'في Blueprint واحد',
    );
    return '$_temp0';
  }

  @override
  String get executionFrequencyOnce => 'مرة واحدة';

  @override
  String get executionFrequencyEvery15Min => 'كل 15 دقيقة';

  @override
  String get executionFrequencyEveryDay => 'يومياً';

  @override
  String get executionFrequencyNoEnforcement => 'بدون إلزام';

  @override
  String get scriptBody => 'النص البرمجي';

  @override
  String get remediationScript => 'نص المعالجة';

  @override
  String get allProperties => 'جميع الخصائص';

  @override
  String get builtInLibraryItem => 'عنصر مكتبة مدمج';

  @override
  String get builtInDetailsHint => 'التفاصيل متاحة في تبويب الحالة';

  @override
  String get active => 'نشط';

  @override
  String get yes => 'نعم';

  @override
  String get no => 'لا';

  @override
  String get execution => 'التنفيذ';

  @override
  String get restart => 'إعادة التشغيل';

  @override
  String get selfService => 'الخدمة الذاتية';

  @override
  String get installType => 'نوع التثبيت';

  @override
  String get enforcement => 'الإلزام';

  @override
  String get runsOnMac => 'يعمل على Mac';

  @override
  String get runsOnIphone => 'يعمل على iPhone';

  @override
  String get runsOnIpad => 'يعمل على iPad';

  @override
  String get appName => 'اسم التطبيق';

  @override
  String get appVersion => 'إصدار التطبيق';

  @override
  String get minOsVersion => 'الحد الأدنى لإصدار نظام التشغيل';

  @override
  String get created => 'تاريخ الإنشاء';

  @override
  String get updated => 'تاريخ التحديث';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count عنصر',
      many: '$count عنصراً',
      few: '$count عناصر',
      two: 'عنصران',
      one: 'عنصر واحد',
      zero: 'لا توجد عناصر',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'تم الحل';

  @override
  String get severityInformational => 'معلوماتي';

  @override
  String get managementState => 'حالة الإدارة';

  @override
  String get managementStateOpen => 'مفتوح';

  @override
  String get managementStateClosed => 'مغلق';

  @override
  String get classificationMalware => 'برمجيات خبيثة';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'مشبوه';

  @override
  String get classificationMal => 'ضار';

  @override
  String get blueprintRouting => 'توجيه Blueprint';

  @override
  String get blueprintRoutingDesc =>
      'رمز التسجيل والتوجيه للتسجيل اليدوي / ملف العمل Android';

  @override
  String get blueprintRoutingNotConfigured =>
      'لم يتم تهيئة توجيه Blueprint لهذا المستأجر.';

  @override
  String get enrollmentCodeActive => 'نشط';

  @override
  String get enrollmentCodeInactive => 'غير نشط';

  @override
  String get routingActivity => 'نشاط التوجيه';

  @override
  String get noRoutingActivity => 'لم يتم العثور على نشاط توجيه.';

  @override
  String get selfServiceCategories => 'فئات الخدمة الذاتية';

  @override
  String get selfServiceDesc => 'إدارة فئات الخدمة الذاتية للمستخدمين';

  @override
  String get addCategory => 'إضافة فئة';

  @override
  String get categoryName => 'اسم الفئة';

  @override
  String get deleteCategory => 'حذف الفئة';

  @override
  String get deleteCategoryConfirm => 'هل تريد حقاً حذف هذه الفئة؟';

  @override
  String get noCategoriesFound => 'لم يتم العثور على فئات.';

  @override
  String get categoryCreated => 'تم إنشاء الفئة';

  @override
  String get categoryDeleted => 'تم حذف الفئة';

  @override
  String get profileBody => 'ملف XML للتعريف';

  @override
  String get customProfile => 'ملف تعريف مخصص';

  @override
  String get classification => 'التصنيف';

  @override
  String get mdmEnabled => 'MDM مفعّل';

  @override
  String get enrolledViaDep => 'مسجّل عبر DEP';

  @override
  String get userApprovedMdm => 'MDM معتمد من المستخدم';

  @override
  String get network => 'الشبكة';

  @override
  String get ipAddress => 'عنوان IP';

  @override
  String get wifiNetwork => 'شبكة الواي فاي';

  @override
  String get bluetoothMac => 'عنوان Bluetooth MAC';

  @override
  String get activationLock => 'قفل التنشيط';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'وضع المطور';

  @override
  String get adbEnabled => 'ADB مفعّل';

  @override
  String get unknownSources => 'مصادر غير معروفة';

  @override
  String get securityPatch => 'تحديث الأمان';

  @override
  String get provisioningUdid => 'معرّف UDID للتوفير';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'معلومات MDM';

  @override
  String get lastEnrollment => 'آخر تسجيل';

  @override
  String get enterpriseId => 'معرّف المؤسسة';

  @override
  String get manufacturer => 'الشركة المصنّعة';

  @override
  String get generalStatus => 'الحالة العامة';

  @override
  String get apiLevel => 'مستوى API';

  @override
  String get userApprovedEnrollment => 'التسجيل المعتمد من المستخدم';

  @override
  String get hostname => 'اسم المضيف';

  @override
  String get macAddress => 'عنوان MAC';

  @override
  String get publicIp => 'عنوان IP العام';

  @override
  String get volumes => 'وحدات التخزين';

  @override
  String volumeUsed(String percent) {
    return '$percent% مستخدم';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available متاح من $total';
  }

  @override
  String get encrypted => 'مشفّر';

  @override
  String get cpuInfo => 'المعالج';

  @override
  String processorCores(String cores) {
    return '$cores أنوية';
  }

  @override
  String processors(String count) {
    return '$count معالج';
  }

  @override
  String get batteryLevel => 'مستوى البطارية';

  @override
  String get lastUser => 'آخر مستخدم';

  @override
  String get bootVolume => 'وحدة تخزين الإقلاع';

  @override
  String get localUsers => 'المستخدمون المحليون';

  @override
  String get regularUsers => 'المستخدمون العاديون';

  @override
  String get systemUsers => 'مستخدمو النظام';

  @override
  String get admin => 'مسؤول';

  @override
  String get assignToBlueprint => 'تعيين إلى Blueprint';

  @override
  String get installOnDevice => 'التثبيت على الجهاز';

  @override
  String get selectBlueprint => 'اختيار Blueprint';

  @override
  String get selectDevice => 'اختيار جهاز';

  @override
  String get selfServiceEnabled => 'الخدمة الذاتية';

  @override
  String get vppLicenses => 'تراخيص VPP';

  @override
  String get fileName => 'اسم الملف';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'ذكاء الأجهزة';

  @override
  String get prismCategoryActivationLock => 'قفل التنشيط';

  @override
  String get prismCategoryApps => 'التطبيقات';

  @override
  String get prismCategoryApplicationFirewall => 'جدار حماية التطبيقات';

  @override
  String get prismCategoryCellular => 'الشبكة الخلوية';

  @override
  String get prismCategoryCertificates => 'الشهادات';

  @override
  String get prismCategoryDesktopAndScreensaver => 'سطح المكتب وشاشة التوقف';

  @override
  String get prismCategoryDeviceInformation => 'معلومات الجهاز';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper و XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'ملفات التعريف المثبتة';

  @override
  String get prismCategoryKernelExtensions => 'امتدادات النواة';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'عملاء وخدمات التشغيل';

  @override
  String get prismCategoryLocalUsers => 'المستخدمون المحليون';

  @override
  String get prismCategoryStartupSettings => 'إعدادات بدء التشغيل';

  @override
  String get prismCategorySystemExtensions => 'امتدادات النظام';

  @override
  String get prismCategoryTransparencyDatabase => 'قاعدة بيانات الشفافية';

  @override
  String prismRecords(int count) {
    return '$count سجل';
  }

  @override
  String get prismNoData => 'لا توجد بيانات متاحة لهذه الفئة.';

  @override
  String get prismExport => 'تصدير CSV';

  @override
  String get prismExportRequested =>
      'تم طلب التصدير. سيكون رابط التنزيل متاحاً قريباً.';

  @override
  String get prismFilterByFamily => 'عائلة الجهاز';

  @override
  String get prismAllFamilies => 'جميع العائلات';

  @override
  String get appearance => 'المظهر';

  @override
  String get themeMode => 'السمة';

  @override
  String get themeModeSystem => 'النظام';

  @override
  String get themeModeLight => 'فاتح';

  @override
  String get themeModeDark => 'داكن';

  @override
  String get shortTypeScript => 'نص برمجي';

  @override
  String get shortTypeCustom => 'مخصص';

  @override
  String get shortTypeProfile => 'ملف تعريف';

  @override
  String get shortTypeInHouse => 'داخلي';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'مُدار';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'أمان';

  @override
  String get shortTypeAuto => 'تلقائي';

  @override
  String get categoryOsUpdates => 'تحديثات نظام التشغيل';

  @override
  String get categoryAutoApps => 'التطبيقات التلقائية';

  @override
  String get autoApp => 'تطبيق تلقائي';

  @override
  String get fileSize => 'حجم الملف';

  @override
  String get unzipLocation => 'موقع الاستخراج';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'تاريخ تحديث الملف';

  @override
  String get mdmIdentifier => 'معرّف MDM';

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
  String get typeLabel => 'النوع';

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
