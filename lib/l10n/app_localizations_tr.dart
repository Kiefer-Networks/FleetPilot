// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Turkish (`tr`).
class AppLocalizationsTr extends AppLocalizations {
  AppLocalizationsTr([String locale = 'tr']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Cihazlar';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Kullanıcılar';

  @override
  String get navSettings => 'Ayarlar';

  @override
  String get welcomeTitle => 'FleetPilot\'a Hoş Geldiniz';

  @override
  String get welcomeSubtitle => 'Apple cihaz filonuzu her yerden yönetin.';

  @override
  String get addProfile => 'Profil ekle';

  @override
  String get editProfile => 'Profili düzenle';

  @override
  String get displayName => 'Görünen ad';

  @override
  String get displayNameHint => 'örn. Acme Corp — Prod';

  @override
  String get region => 'Bölge';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Alt alan adı';

  @override
  String get subdomainHint => 'kiracı-adınız';

  @override
  String get apiToken => 'API Anahtarı';

  @override
  String get apiTokenHint => 'API anahtarını buraya yapıştırın';

  @override
  String urlPreview(String url) {
    return 'API URL: $url';
  }

  @override
  String get verifyAndSave => 'Doğrula ve Kaydet';

  @override
  String get verifying => 'Bağlantı doğrulanıyor...';

  @override
  String get connectionSuccess => 'Bağlantı başarıyla doğrulandı!';

  @override
  String get errorInvalidToken =>
      'Geçersiz API anahtarı. Lütfen web konsolunda anahtarınızı kontrol edin.';

  @override
  String get errorInsufficientPermissions =>
      'Yetersiz izinler. Anahtarın cihazlara okuma erişimine sahip olduğundan emin olun.';

  @override
  String get errorNetworkUnreachable =>
      'API\'ye ulaşılamıyor. İnternet bağlantınızı ve alt alan adınızı kontrol edin.';

  @override
  String get errorNotFound => 'İstenen kaynak bulunamadı.';

  @override
  String get errorValidation =>
      'İstek geçersiz veriler içeriyordu. Lütfen girişinizi kontrol edin.';

  @override
  String get errorRateLimit =>
      'Çok fazla istek. Lütfen bir süre bekleyip tekrar deneyin.';

  @override
  String get errorServer =>
      'Sunucuda bir hata oluştu. Lütfen daha sonra tekrar deneyin.';

  @override
  String get errorUnexpected =>
      'Beklenmeyen bir hata oluştu. Lütfen tekrar deneyin.';

  @override
  String get retry => 'Tekrar Dene';

  @override
  String get cancel => 'İptal';

  @override
  String get delete => 'Sil';

  @override
  String get save => 'Kaydet';

  @override
  String get search => 'Ara';

  @override
  String get searchDevices => 'Cihaz ara...';

  @override
  String get filterAll => 'Tümü';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Tüm Blueprint\'ler';

  @override
  String loadingDevices(int count) {
    return '$count cihaz yükleniyor...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count cihaz',
      one: '1 cihaz',
      zero: 'Cihaz yok',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Cihaz bulunamadı';

  @override
  String get noDevicesFoundMessage => 'Arama veya filtrelerinizi düzenleyin.';

  @override
  String lastCheckIn(String time) {
    return 'Son check-in: $time';
  }

  @override
  String get compliancePass => 'Başarılı';

  @override
  String get complianceFail => 'Başarısız';

  @override
  String get compliancePending => 'Beklemede';

  @override
  String get deviceDetails => 'Cihaz detayları';

  @override
  String get serialNumber => 'Seri numarası';

  @override
  String get model => 'Model';

  @override
  String get osVersion => 'İşletim sistemi sürümü';

  @override
  String get assetTag => 'Varlık etiketi';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Kayıt tarihi';

  @override
  String get assignedUser => 'Atanan kullanıcı';

  @override
  String get actions => 'Eylemler';

  @override
  String get actionLock => 'Kilitle';

  @override
  String get actionRestart => 'Yeniden Başlat';

  @override
  String get actionShutdown => 'Kapat';

  @override
  String get actionErase => 'Sil';

  @override
  String get actionBlankPush => 'Blank Push gönder';

  @override
  String get actionReinstallAgent => 'Aracıyı yeniden yükle';

  @override
  String get actionUpdateInventory => 'Envanteri güncelle';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Uzak Masaüstünü etkinleştir';

  @override
  String get actionRemoteDesktopDisable => 'Uzak Masaüstünü devre dışı bırak';

  @override
  String get actionLostMode => 'Kayıp Modunu etkinleştir';

  @override
  String get destructiveActionTitle => 'Yıkıcı eylemi onayla';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Bu eylem geri alınamaz. Onaylamak için \"$deviceName\" girin.';
  }

  @override
  String get destructiveActionHint => 'Onaylamak için cihaz adını girin';

  @override
  String get confirm => 'Onayla';

  @override
  String get actionSuccess => 'Eylem başarıyla gerçekleştirildi.';

  @override
  String get actionFailed => 'Eylem başarısız oldu. Lütfen tekrar deneyin.';

  @override
  String get biometricReason => 'FleetPilot için kimlik doğrulama yapın';

  @override
  String get biometricReasonSecrets =>
      'Hassas verileri görüntülemek için kimlik doğrulama yapın';

  @override
  String get biometricReasonDestructive =>
      'Bu eylemi gerçekleştirmek için kimlik doğrulama yapın';

  @override
  String get biometricFailed =>
      'Kimlik doğrulama başarısız oldu. Lütfen tekrar deneyin.';

  @override
  String get profiles => 'Profiller';

  @override
  String activeProfile(String name) {
    return 'Aktif: $name';
  }

  @override
  String get switchProfile => 'Profil değiştir';

  @override
  String get deleteProfile => 'Profili sil';

  @override
  String get deleteProfileConfirm =>
      'Bu profili silmek istediğinizden emin misiniz? Bu eylem geri alınamaz.';

  @override
  String get noProfiles => 'Yapılandırılmış profil yok';

  @override
  String get settings => 'Ayarlar';

  @override
  String get about => 'Hakkında';

  @override
  String version(String version) {
    return 'Sürüm $version';
  }

  @override
  String get validationRequired => 'Bu alan zorunludur.';

  @override
  String get validationSubdomain =>
      'Yalnızca harfler, rakamlar ve tire karakteri kullanılabilir. Başında veya sonunda tire olamaz.';

  @override
  String get validationToken =>
      'Geçersiz anahtar biçimi. 20–500 karakter, yalnızca alfanümerik ve yaygın ayırıcılar.';

  @override
  String pinLockedOut(int seconds) {
    return 'Çok fazla başarısız deneme. $seconds saniye sonra tekrar deneyin.';
  }

  @override
  String get complianceStatus => 'Uyumluluk durumu';

  @override
  String get platform => 'Platform';

  @override
  String get deviceName => 'Cihaz adı';

  @override
  String get searchUsers => 'Kullanıcı ara...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count kullanıcı',
      one: '1 kullanıcı',
      zero: 'Kullanıcı yok',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Kullanıcı bulunamadı';

  @override
  String get noUsersFoundMessage => 'Arama veya filtrelerinizi düzenleyin.';

  @override
  String get showArchived => 'Arşivlenenleri göster';

  @override
  String get archived => 'Arşivlendi';

  @override
  String get email => 'E-posta';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprint',
      one: '1 Blueprint',
      zero: 'Blueprint yok',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Blueprint bulunamadı';

  @override
  String get noBlueprintsFoundMessage =>
      'Henüz hiçbir Blueprint yapılandırılmamış.';

  @override
  String get enrollmentActive => 'Kayıt aktif';

  @override
  String get enrollmentInactive => 'Kayıt pasif';

  @override
  String get tabOverview => 'Genel Bakış';

  @override
  String get tabApps => 'Uygulamalar';

  @override
  String get tabStatus => 'Durum';

  @override
  String get tabActivity => 'Etkinlik';

  @override
  String get tabCommands => 'Komutlar';

  @override
  String get hardware => 'Donanım';

  @override
  String get security => 'Güvenlik';

  @override
  String get totalStorage => 'Toplam depolama';

  @override
  String get availableStorage => 'Kullanılabilir depolama';

  @override
  String get totalRam => 'Toplam RAM';

  @override
  String get wifiMac => 'Wi-Fi MAC adresi';

  @override
  String get encryption => 'Şifreleme';

  @override
  String get passcode => 'Parola';

  @override
  String get noAppsFound => 'Uygulama bulunamadı';

  @override
  String get noActivityFound => 'Etkinlik bulunamadı';

  @override
  String get noCommandsFound => 'Komut bulunamadı';

  @override
  String get libraryItems => 'Kütüphane öğeleri';

  @override
  String get parameters => 'Parametreler';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'İşletim sistemi derlemesi';

  @override
  String get cellular => 'Hücresel';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count uygulama',
      one: '1 uygulama',
      zero: 'Uygulama yok',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Kullanıcı detayları';

  @override
  String get jobTitle => 'İş unvanı';

  @override
  String get department => 'Departman';

  @override
  String get createdAt => 'Oluşturulma';

  @override
  String get updatedAt => 'Güncelleme';

  @override
  String get assignedDevices => 'Atanan cihazlar';

  @override
  String get noAssignedDevices => 'Bu kullanıcıya atanmış cihaz yok.';

  @override
  String get userInfo => 'Kullanıcı bilgisi';

  @override
  String get navMore => 'Daha Fazla';

  @override
  String get tabSecrets => 'Gizli Bilgiler';

  @override
  String get filevaultKey => 'FileVault kurtarma anahtarı';

  @override
  String get unlockPin => 'Kilit açma PIN\'i';

  @override
  String get recoveryPassword => 'Recovery Lock parolası';

  @override
  String get bypassCode => 'Etkinleştirme Kilidi atlatma kodu';

  @override
  String get noSecretsFound => 'Bu cihaz için gizli bilgi mevcut değil.';

  @override
  String get secretCopied => 'Gizli bilgi panoya kopyalandı';

  @override
  String get threats => 'Tehditler';

  @override
  String get noThreatsFound => 'Tehdit tespit edilmedi.';

  @override
  String get vulnerabilities => 'Güvenlik açıkları';

  @override
  String get noVulnerabilitiesFound => 'Güvenlik açığı tespit edilmedi.';

  @override
  String get aboutApp => 'FleetPilot Hakkında';

  @override
  String get aboutDescription =>
      'FleetPilot, Apple cihaz filoları için açık kaynaklı bir MDM yönetim uygulamasıdır.';

  @override
  String get tapToCopy => 'Kopyalamak için dokunun';

  @override
  String get devices => 'Cihazlar';

  @override
  String get severity => 'Önem derecesi';

  @override
  String get tabLocation => 'Konum';

  @override
  String get locationNotAvailable =>
      'Bu cihaz için konum verileri mevcut değil.';

  @override
  String get enableLostModeHint =>
      'Bu cihazı bulmak için Kayıp Modunu etkinleştirin.';

  @override
  String get lostModeEnabled => 'Kayıp Modu etkin';

  @override
  String get noLibraryItemsFound => 'Kütüphane öğesi bulunamadı.';

  @override
  String get licenses => 'Lisanslar';

  @override
  String get lostModeMessage => 'Kayıp Modu mesajı';

  @override
  String get lostModePhone => 'Telefon numarası';

  @override
  String get lostModeFootnote =>
      'Cihazda gösterilen isteğe bağlı mesaj ve telefon numarası';

  @override
  String get supervised => 'Denetimli';

  @override
  String get unsupervised => 'Denetimsiz';

  @override
  String get filterSupervised => 'Denetimli';

  @override
  String get filterUnsupervised => 'Denetimsiz';

  @override
  String get language => 'Dil';

  @override
  String get languageSystem => 'Sistem varsayılanı';

  @override
  String get actionDisableLostMode => 'Kayıp Modunu devre dışı bırak';

  @override
  String get actionClearPasscode => 'Parolayı temizle';

  @override
  String get filterLostMode => 'Kayıp Modu';

  @override
  String get lostMode => 'Kayıp Modu';

  @override
  String get sectionManagement => 'Yönetim';

  @override
  String get sectionStatus => 'Durum';

  @override
  String get statusMissing => 'Kayıp';

  @override
  String get statusRemoved => 'Kaldırıldı';

  @override
  String get agent => 'Aracı';

  @override
  String get identifier => 'Tanımlayıcı';

  @override
  String get processor => 'İşlemci';

  @override
  String get hardwareUuid => 'Donanım UUID';

  @override
  String get devicePosture => 'Cihaz durumu';

  @override
  String get unknownDevice => 'Bilinmeyen cihaz';

  @override
  String get securityAppLock => 'Uygulama kilidi';

  @override
  String get securityAppLockDescription =>
      'Uygulamayı korumak için 6 haneli bir PIN ayarlayın. PIN ayarlandıktan sonra biyometrik kimlik doğrulama etkinleştirilebilir.';

  @override
  String get securityAppLockActive => 'Uygulama kilidi etkin';

  @override
  String get securityAppLockInactive => 'Uygulama kilidi yapılandırılmamış';

  @override
  String get securitySetPin => 'PIN ayarla';

  @override
  String get securityChangePin => 'PIN değiştir';

  @override
  String get securityRemovePin => 'PIN kaldır';

  @override
  String get securityCurrentPin => 'Mevcut PIN';

  @override
  String get securityNewPin => 'Yeni PIN';

  @override
  String get securityConfirmPin => 'Onaylamak için PIN\'i tekrar girin.';

  @override
  String get securityPinLength => 'PIN 6 haneli olmalıdır.';

  @override
  String get securityPinMismatch => 'PIN\'ler eşleşmiyor.';

  @override
  String get securityPinWrong => 'Yanlış PIN.';

  @override
  String get securityPinSet => 'PIN ayarlandı.';

  @override
  String get securityPinChanged => 'PIN değiştirildi.';

  @override
  String get securityPinRemoved => 'PIN ve uygulama kilidi kaldırıldı.';

  @override
  String get securityBiometric => 'Biyometri';

  @override
  String get securityBiometricDescription =>
      'PIN yerine parmak izi veya yüz tanıma ile uygulamanın kilidini açın.';

  @override
  String get securityBiometricEnable => 'Biyometrik kilit açma';

  @override
  String get securityBiometricActive => 'Etkin';

  @override
  String get securityBiometricInactive => 'Devre dışı';

  @override
  String get securityBiometricUnavailable =>
      'Bu cihazda biyometrik kimlik doğrulama kullanılamıyor.';

  @override
  String get securityNext => 'İleri';

  @override
  String get actionRenewMdm => 'MDM profilini yenile';

  @override
  String get actionSetName => 'Cihaz adını ayarla';

  @override
  String get actionSetNameHint => 'Yeni cihaz adını girin';

  @override
  String get actionDeleteUser => 'Kullanıcıyı sil';

  @override
  String get actionDeleteUserName => 'Kullanıcı adı';

  @override
  String get actionDeleteAllUsers => 'Tüm kullanıcıları sil';

  @override
  String get actionForceDeletion => 'Silmeyi zorla';

  @override
  String get actionUnlockAccount => 'Hesabın kilidini aç';

  @override
  String get actionPlayLostModeSound => 'Kayıp Modu sesini çal';

  @override
  String get actionUpdateLocation => 'Konumu güncelle';

  @override
  String get erasePin => '6 haneli PIN';

  @override
  String get erasePinHint => 'Mobil cihazlar için gereklidir';

  @override
  String get erasePreserveDataPlan => 'Veri planını koru';

  @override
  String get eraseDisallowProximitySetup => 'Yakınlık kurulumunu engelle';

  @override
  String get eraseReturnToService => 'Servise İade';

  @override
  String get lockMessage => 'Kilit mesajı (isteğe bağlı)';

  @override
  String get lockPhone => 'Telefon numarası';

  @override
  String get restartRebuildKernelCache =>
      'Çekirdek önbelleğini yeniden oluştur';

  @override
  String get restartNotifyUser => 'Kullanıcıyı bilgilendir';

  @override
  String get actionRemoteDesktop => 'Uzak Masaüstü';

  @override
  String get tabNotes => 'Notlar';

  @override
  String get noNotesFound => 'Henüz not yok';

  @override
  String get addNote => 'Not ekle';

  @override
  String get editNote => 'Notu düzenle';

  @override
  String get deleteNote => 'Notu sil';

  @override
  String get deleteNoteConfirm => 'Bu notu silmek istediğinizden emin misiniz?';

  @override
  String get noteContent => 'Not içeriği';

  @override
  String get noteSaved => 'Not kaydedildi.';

  @override
  String get noteDeleted => 'Not silindi.';

  @override
  String get editDevice => 'Cihazı düzenle';

  @override
  String get deviceUpdated => 'Cihaz güncellendi.';

  @override
  String get deleteDevice => 'Cihazı sil';

  @override
  String get deleteDeviceConfirm =>
      'Cihaz MDM\'den kalıcı olarak kaldırılacaktır. Bu eylem geri alınamaz.';

  @override
  String get deviceDeleted => 'Cihaz silindi.';

  @override
  String get cancelLostMode => 'Kayıp Modunu iptal et';

  @override
  String get cancelLostModeConfirm =>
      'Bekleyen Kayıp Modu isteği iptal edilsin mi?';

  @override
  String get lostModeCancelled => 'Kayıp Modu iptal edildi.';

  @override
  String get tags => 'Etiketler';

  @override
  String get noTags => 'Etiket yok';

  @override
  String get addTag => 'Etiket ekle';

  @override
  String get tagName => 'Etiket adı';

  @override
  String get manageTags => 'Etiketleri yönet';

  @override
  String get auditLog => 'Denetim günlüğü';

  @override
  String get noAuditEvents => 'Denetim olayı bulunamadı';

  @override
  String get actionDailyCheckIn => 'Günlük check-in';

  @override
  String get licensing => 'Lisanslama';

  @override
  String get deviceLimit => 'Cihaz limiti';

  @override
  String get devicesUsed => 'Kullanılan cihazlar';

  @override
  String get licenseType => 'Lisans türü';

  @override
  String get appleDevices => 'Apple cihazları';

  @override
  String get deleteUser => 'Kullanıcıyı sil';

  @override
  String get deleteUserConfirm =>
      'Bu kullanıcıyı silmek istediğinizden emin misiniz? Bu eylem geri alınamaz.';

  @override
  String get userDeleted => 'Kullanıcı silindi.';

  @override
  String get createBlueprint => 'Blueprint oluştur';

  @override
  String get editBlueprint => 'Blueprint düzenle';

  @override
  String get deleteBlueprint => 'Blueprint sil';

  @override
  String get deleteBlueprintConfirm =>
      'Bu Blueprint\'i silmek atanmış tüm cihazların kaydını iptal edecektir. Bu eylem geri alınamaz.';

  @override
  String get blueprintCreated => 'Blueprint oluşturuldu.';

  @override
  String get blueprintUpdated => 'Blueprint güncellendi.';

  @override
  String get blueprintDeleted => 'Blueprint silindi.';

  @override
  String get blueprintName => 'Blueprint adı';

  @override
  String get blueprintDescription => 'Açıklama';

  @override
  String get enrollmentCode => 'Kayıt kodu';

  @override
  String get assignLibraryItem => 'Kütüphane öğesi ata';

  @override
  String get removeLibraryItem => 'Kütüphane öğesini kaldır';

  @override
  String get libraryItemAssigned => 'Kütüphane öğesi atandı.';

  @override
  String get libraryItemRemoved => 'Kütüphane öğesi kaldırıldı.';

  @override
  String get lostModeDetails => 'Kayıp Modu detayları';

  @override
  String get lostModeEnabledBy => 'Etkinleştiren';

  @override
  String get lostModeEnabledAt => 'Etkinleştirilme tarihi';

  @override
  String get searchBlueprints => 'Blueprint ara...';

  @override
  String get searchVulnerabilities => 'Güvenlik açığı ara...';

  @override
  String get searchThreats => 'Tehdit ara...';

  @override
  String get searchAuditLog => 'Denetim günlüğü ara...';

  @override
  String get filterCritical => 'Kritik';

  @override
  String get filterHigh => 'Yüksek';

  @override
  String get filterMedium => 'Orta';

  @override
  String get filterLow => 'Düşük';

  @override
  String get filterClearAll => 'Tümünü temizle';

  @override
  String get filterTitle => 'Filtreler';

  @override
  String get filterApply => 'Uygula';

  @override
  String get filterPlatform => 'Platform';

  @override
  String get filterSupervision => 'Denetim';

  @override
  String get filterStatus => 'Durum';

  @override
  String get adeIntegrations => 'ADE entegrasyonları';

  @override
  String get noAdeIntegrations => 'ADE entegrasyonu bulunamadı.';

  @override
  String get adeDevices => 'ADE cihazları';

  @override
  String get noAdeDevices => 'ADE cihazı bulunamadı.';

  @override
  String get tokenExpiry => 'Anahtar sona erme';

  @override
  String get tokenValid => 'Anahtar geçerli';

  @override
  String get tokenExpired => 'Anahtarın süresi doldu';

  @override
  String get orgName => 'Kuruluş';

  @override
  String get defaultBlueprint => 'Varsayılan Blueprint';

  @override
  String get renewToken => 'Anahtarı yenile';

  @override
  String get publicKey => 'Genel anahtar';

  @override
  String get vulnerabilityDetections => 'Güvenlik açığı tespitleri';

  @override
  String get noDetectionsFound => 'Tespit bulunamadı.';

  @override
  String get behavioralDetections => 'Davranışsal tespitler';

  @override
  String get noBehavioralDetections => 'Davranışsal tespit bulunamadı.';

  @override
  String get searchBehavioralDetections => 'Tespit ara...';

  @override
  String get affectedDevices => 'Etkilenen cihazlar';

  @override
  String get noAffectedDevices =>
      'Etkilenen cihaz bulunamadı. Daha önce etkilenen cihazlar kaldırılmış olabilir.';

  @override
  String get affectedSoftware => 'Etkilenen yazılım';

  @override
  String get blueprintTemplates => 'Blueprint şablonları';

  @override
  String get noTemplatesFound => 'Şablon bulunamadı.';

  @override
  String get otaEnrollmentProfile => 'OTA kayıt profili';

  @override
  String get libraryItemActivity => 'Etkinlik';

  @override
  String get libraryItemDeploymentStatus => 'Dağıtım durumu';

  @override
  String get noActivityFound2 => 'Etkinlik bulunamadı.';

  @override
  String get noStatusFound => 'Dağıtım durumu bulunamadı.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count tespit',
      one: '1 tespit',
      zero: 'Tespit yok',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count entegrasyon',
      one: '1 entegrasyon',
      zero: 'Entegrasyon yok',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Güvenlik açığı detayları';

  @override
  String get description => 'Açıklama';

  @override
  String get firstDetected => 'İlk tespit';

  @override
  String get lastDetected => 'Son tespit';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count yazılım',
      one: '1 yazılım',
      zero: 'Yazılım yok',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Entegrasyonu düzenle';

  @override
  String get deleteIntegration => 'Entegrasyonu sil';

  @override
  String get deleteIntegrationConfirm =>
      'Bu ADE entegrasyonunu silmek istediğinizden emin misiniz? Bu eylem geri alınamaz.';

  @override
  String get integrationDeleted => 'Entegrasyon silindi.';

  @override
  String get integrationUpdated => 'Entegrasyon güncellendi.';

  @override
  String get defaultBlueprintId => 'Varsayılan Blueprint ID';

  @override
  String get phone => 'Telefon';

  @override
  String get downloadOtaProfile => 'Kayıt profilini indir';

  @override
  String get otaProfileCopied => 'Kayıt profili panoya kopyalandı.';

  @override
  String get noOtaProfile => 'Kayıt profili mevcut değil.';

  @override
  String get createTag => 'Etiket oluştur';

  @override
  String get editTag => 'Etiketi düzenle';

  @override
  String get deleteTag => 'Etiketi sil';

  @override
  String get deleteTagConfirm =>
      'Bu etiketi silmek istediğinizden emin misiniz?';

  @override
  String get tagColor => 'Renk';

  @override
  String get tagCreated => 'Etiket oluşturuldu.';

  @override
  String get tagUpdated => 'Etiket güncellendi.';

  @override
  String get tagDeleted => 'Etiket silindi.';

  @override
  String get noTagsFound => 'Etiket bulunamadı.';

  @override
  String get libraryItemDetail => 'Kütüphane öğesi';

  @override
  String get viewActivity => 'Etkinliği görüntüle';

  @override
  String get viewStatus => 'Durumu görüntüle';

  @override
  String get installations => 'Kurulumlar';

  @override
  String get createAdeIntegration => 'ADE entegrasyonu oluştur';

  @override
  String get adeCreateDescription =>
      'Yeni bir ADE entegrasyonu oluşturmak için Apple Business Manager\'dan bir sunucu anahtar dosyası (.p7m) yükleyin.';

  @override
  String get selectTokenFile => 'Anahtar dosyasını seçin';

  @override
  String tokenFileSelected(String name) {
    return 'Anahtar dosyası: $name';
  }

  @override
  String get noTokenFileSelected => 'Anahtar dosyası seçilmedi';

  @override
  String get integrationCreated => 'Entegrasyon oluşturuldu.';

  @override
  String get create => 'Oluştur';

  @override
  String get step1GetPublicKey => 'Adım 1: Genel anahtarı indirin';

  @override
  String get step1Description =>
      'Genel anahtarı kopyalayın ve Apple Business Manager\'a yükleyin.';

  @override
  String get step2UploadToken => 'Adım 2: Sunucu anahtarını yükleyin';

  @override
  String get step2Description =>
      'Apple\'dan indirdiğiniz .p7m anahtar dosyasını seçin.';

  @override
  String get step3Configure => 'Adım 3: Yapılandırın';

  @override
  String get publicKeyCopied => 'Genel anahtar panoya kopyalandı.';

  @override
  String get renewTokenDescription =>
      'Bu entegrasyonun anahtarını yenilemek için yeni bir .p7m anahtar dosyası yükleyin.';

  @override
  String get tokenRenewed => 'Anahtar yenilendi.';

  @override
  String get aboutLinks => 'Bağlantılar';

  @override
  String get aboutWebsite => 'Web sitesi';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Kaynak kodu';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Teknoloji';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'Durum yönetimi';

  @override
  String get aboutArchitecture => 'Mimari';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Veri sınıfları';

  @override
  String get aboutNavigationLabel => 'Navigasyon';

  @override
  String get aboutOpenSourceLicenses => 'Açık Kaynak Lisansları';

  @override
  String get aboutShowHide => 'Görünürlüğü değiştir';

  @override
  String get editProfileTitle => 'Bağlantıyı düzenle';

  @override
  String get editProfileSubtitle => 'Kiracı bağlantı ayarlarınızı güncelleyin.';

  @override
  String get apiTokenHintEdit => 'Mevcut anahtarı korumak için boş bırakın';

  @override
  String get profileUpdated => 'Profil güncellendi.';

  @override
  String profileSwitched(String name) {
    return '$name profiline geçildi.';
  }

  @override
  String get securityAutoLock => 'Otomatik kilit';

  @override
  String get securityAutoLockDescription =>
      'Uygulama arka planda kaldıktan sonra otomatik olarak kimlik doğrulama gerektir.';

  @override
  String get timeoutImmediately => 'Hemen';

  @override
  String get timeoutSeconds30 => '30 saniye sonra';

  @override
  String get timeoutSeconds60 => '1 dakika sonra';

  @override
  String get timeoutSeconds120 => '2 dakika sonra';

  @override
  String get timeoutMinutes5 => '5 dakika sonra';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Blueprint yok';

  @override
  String get presetSaveFilter => 'Filtre ön ayarını kaydet';

  @override
  String get presetLoad => 'Ön ayarı yükle';

  @override
  String get presetName => 'Ön ayar adı';

  @override
  String get presetNameHint => 'örn. Denetimsiz Mac\'ler';

  @override
  String get presetSaved => 'Filtre ön ayarı kaydedildi.';

  @override
  String get presetDeleted => 'Filtre ön ayarı silindi.';

  @override
  String presetApplied(String name) {
    return '\"$name\" ön ayarı uygulandı.';
  }

  @override
  String get presetNoPresets => 'Kayıtlı ön ayar yok';

  @override
  String get presetNoPresetsMessage =>
      'Hızlı erişim için mevcut filtrelerinizi ön ayar olarak kaydedin.';

  @override
  String get presetDeleteConfirm => 'Bu ön ayar silinsin mi?';

  @override
  String get presetNameRequired => 'Lütfen ön ayar için bir ad girin.';

  @override
  String selectedCount(int count) {
    return '$count seçildi';
  }

  @override
  String get selectAll => 'Tümünü seç';

  @override
  String get deselectAll => 'Seçimi kaldır';

  @override
  String get bulkActions => 'Eylemler';

  @override
  String bulkActionsTitle(int count) {
    return '$count cihaz için eylemler';
  }

  @override
  String get bulkActionAssignTag => 'Etiket ata';

  @override
  String get bulkActionAssignTagDescription =>
      'Seçili tüm cihazlara etiket ekle';

  @override
  String get bulkActionAssignBlueprint => 'Blueprint ata';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Seçili cihazları bir Blueprint\'e taşı';

  @override
  String get bulkActionLock => 'Cihazları kilitle';

  @override
  String get bulkActionLockDescription =>
      'Seçili tüm cihazları uzaktan kilitle';

  @override
  String get bulkActionRestart => 'Cihazları yeniden başlat';

  @override
  String get bulkActionRestartDescription =>
      'Seçili tüm cihazları yeniden başlat';

  @override
  String bulkRestartConfirmMessage(int count) {
    return '$count cihazı yeniden başlatmak istediğinizden emin misiniz?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Eylem $count cihazda başarıyla tamamlandı.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return '$success cihazda tamamlandı, $failed başarısız oldu.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed / $total tamamlandı';
  }

  @override
  String get biometricReasonBulkAction =>
      'Toplu eylemi gerçekleştirmek için kimlik doğrulama yapın';

  @override
  String get lockPin => 'Kilit PIN\'i (isteğe bağlı)';

  @override
  String get noTagsAvailable =>
      'Kullanılabilir etiket yok. MDM web konsolunda etiket oluşturun.';

  @override
  String get noBlueprintsAvailable => 'Kullanılabilir Blueprint yok.';

  @override
  String get selectADevice => 'Cihaz seçin';

  @override
  String get selectABlueprint => 'Blueprint seçin';

  @override
  String get clearSearch => 'Aramayı temizle';

  @override
  String get refresh => 'Yenile';

  @override
  String get moreActions => 'Diğer eylemler';

  @override
  String get close => 'Kapat';

  @override
  String get onboardingSkip => 'Atla';

  @override
  String get onboardingNext => 'İleri';

  @override
  String get onboardingGetStarted => 'Başlayın';

  @override
  String get onboardingWelcomeTitle => 'FleetPilot\'a Hoş Geldiniz';

  @override
  String get onboardingWelcomeSubtitle =>
      'Apple cihaz filo yönetimi için mobil komuta merkeziniz. Tüm filonuzu her yerden izleyin, yönetin ve güvenliğini sağlayın.';

  @override
  String get onboardingDevicesTitle => 'Cihaz yönetimi';

  @override
  String get onboardingDevicesSubtitle =>
      'Filonuzdaki her cihaz üzerinde tam görünürlük ve kontrol.';

  @override
  String get onboardingDevicesFeature1 =>
      'Kayıtlı tüm iPhone, iPad, Mac ve Apple TV cihazlarını görüntüleyin';

  @override
  String get onboardingDevicesFeature2 =>
      'Uzak komutlar gönderin: Kilitleme, Yeniden Başlatma, Silme ve daha fazlası';

  @override
  String get onboardingDevicesFeature3 =>
      'Blueprint\'leri, uygulamaları ve uyumluluk durumunu takip edin';

  @override
  String get onboardingSecurityTitle => 'Güvenlik için tasarlandı';

  @override
  String get onboardingSecuritySubtitle =>
      'Filo verileriniz birden fazla güvenlik katmanıyla korunur.';

  @override
  String get onboardingSecurityFeature1 =>
      'Face ID veya parmak izi ile biyometrik kimlik doğrulama';

  @override
  String get onboardingSecurityFeature2 =>
      'Uygulama erişimi için 6 haneli PIN kilidi';

  @override
  String get onboardingSecurityFeature3 =>
      'Zaman aşımında otomatik oturum kilitleme';

  @override
  String get onboardingReadyTitle => 'Başlamaya hazır';

  @override
  String get onboardingReadySubtitle =>
      'Apple cihaz filonuzu yönetmeye başlamak için MDM kiracınızı bağlayın. Bir sonraki adımda API bağlantınızı ve güvenlik PIN\'inizi ayarlayacaksınız.';

  @override
  String get searchTags => 'Etiket ara';

  @override
  String tagDeviceCount(int count) {
    return '$count cihaz';
  }

  @override
  String get sortTitle => 'Sıralama';

  @override
  String get sortDirection => 'Sıralama yönü';

  @override
  String get ascending => 'Artan';

  @override
  String get descending => 'Azalan';

  @override
  String get filterSeverity => 'Önem derecesi';

  @override
  String get filterSort => 'Filtrele ve Sırala';

  @override
  String get statusQuarantined => 'Karantina';

  @override
  String get statusNotQuarantined => 'İzole edilmedi';

  @override
  String get statusDetected => 'Tespit edildi';

  @override
  String get statusReleased => 'Serbest bırakıldı';

  @override
  String get severityCritical => 'Kritik';

  @override
  String get severityHigh => 'Yüksek';

  @override
  String get severityMedium => 'Orta';

  @override
  String get severityLow => 'Düşük';

  @override
  String threatCount(int count) {
    return '$count tehdit';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count tespit';
  }

  @override
  String get downloadPublicKey => 'İndir';

  @override
  String get publicKeySaved => 'Genel anahtar kaydedildi';

  @override
  String get sortBy => 'Sıralama ölçütü';

  @override
  String get sortByCvss => 'CVSS puanı';

  @override
  String get sortByDeviceCount => 'Etkilenen cihazlar';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count güvenlik açığı';
  }

  @override
  String get assignTags => 'Etiketler';

  @override
  String get noTagsAvailableMessage =>
      'Kullanılabilir etiket yok. Önce etiket oluşturun.';

  @override
  String get failedToLoadTags => 'Etiketler yüklenemedi';

  @override
  String get details => 'Detaylar';

  @override
  String get searchLibraryItems => 'Kütüphane öğesi ara...';

  @override
  String get categoryCustomScript => 'Özel komut dosyası';

  @override
  String get categoryCustomApp => 'Özel uygulama';

  @override
  String get categoryCustomProfile => 'Özel profil';

  @override
  String get categoryInHouseApp => 'Kurum içi uygulama';

  @override
  String get categoryBuiltIn => 'Yerleşik';

  @override
  String get categoryVppApps => 'VPP / App Store uygulamaları';

  @override
  String get categoryManagedProfiles => 'Yönetilen profiller';

  @override
  String get categoryKandjiSetup => 'MDM kurulumu';

  @override
  String get categoryMacosRelease => 'macOS güncellemeleri';

  @override
  String get categoryThreatPolicy => 'Güvenlik politikaları';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprint\'te',
      one: '1 Blueprint\'te',
    );
    return '$_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Bir kez';

  @override
  String get executionFrequencyEvery15Min => 'Her 15 dakikada';

  @override
  String get executionFrequencyEveryDay => 'Her gün';

  @override
  String get executionFrequencyNoEnforcement => 'Zorlama yok';

  @override
  String get scriptBody => 'Komut dosyası';

  @override
  String get remediationScript => 'Düzeltme komut dosyası';

  @override
  String get allProperties => 'Tüm özellikler';

  @override
  String get builtInLibraryItem => 'Yerleşik kütüphane öğesi';

  @override
  String get builtInDetailsHint => 'Detaylar Durum sekmesinde mevcuttur';

  @override
  String get active => 'Aktif';

  @override
  String get yes => 'Evet';

  @override
  String get no => 'Hayır';

  @override
  String get execution => 'Çalıştırma';

  @override
  String get restart => 'Yeniden başlat';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Kurulum türü';

  @override
  String get enforcement => 'Zorlama';

  @override
  String get runsOnMac => 'Mac\'te çalışır';

  @override
  String get runsOnIphone => 'iPhone\'da çalışır';

  @override
  String get runsOnIpad => 'iPad\'de çalışır';

  @override
  String get appName => 'Uygulama adı';

  @override
  String get appVersion => 'Uygulama sürümü';

  @override
  String get minOsVersion => 'Min. işletim sistemi sürümü';

  @override
  String get created => 'Oluşturuldu';

  @override
  String get updated => 'Güncellendi';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count öğe',
      one: '1 öğe',
      zero: 'Öğe yok',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Çözüldü';

  @override
  String get severityInformational => 'Bilgilendirme';

  @override
  String get managementState => 'Yönetim durumu';

  @override
  String get managementStateOpen => 'Açık';

  @override
  String get managementStateClosed => 'Kapalı';

  @override
  String get classificationMalware => 'Kötü amaçlı yazılım';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Şüpheli';

  @override
  String get classificationMal => 'Zararlı';

  @override
  String get blueprintRouting => 'Blueprint yönlendirme';

  @override
  String get blueprintRoutingDesc =>
      'Manuel / Android Work Profile kaydı için kayıt kodu ve yönlendirme';

  @override
  String get blueprintRoutingNotConfigured =>
      'Bu kiracı için Blueprint yönlendirme yapılandırılmamış.';

  @override
  String get enrollmentCodeActive => 'Aktif';

  @override
  String get enrollmentCodeInactive => 'Pasif';

  @override
  String get routingActivity => 'Yönlendirme etkinliği';

  @override
  String get noRoutingActivity => 'Yönlendirme etkinliği bulunamadı.';

  @override
  String get selfServiceCategories => 'Self-Service kategorileri';

  @override
  String get selfServiceDesc =>
      'Kullanıcılarınız için Self-Service kategorilerini yönetin';

  @override
  String get addCategory => 'Kategori ekle';

  @override
  String get categoryName => 'Kategori adı';

  @override
  String get deleteCategory => 'Kategoriyi sil';

  @override
  String get deleteCategoryConfirm =>
      'Bu kategoriyi silmek istediğinizden emin misiniz?';

  @override
  String get noCategoriesFound => 'Kategori bulunamadı.';

  @override
  String get categoryCreated => 'Kategori oluşturuldu';

  @override
  String get categoryDeleted => 'Kategori silindi';

  @override
  String get profileBody => 'Profil XML';

  @override
  String get customProfile => 'Özel profil';

  @override
  String get classification => 'Sınıflandırma';

  @override
  String get mdmEnabled => 'MDM etkin';

  @override
  String get enrolledViaDep => 'DEP ile kaydedildi';

  @override
  String get userApprovedMdm => 'Kullanıcı onaylı MDM';

  @override
  String get network => 'Ağ';

  @override
  String get ipAddress => 'IP adresi';

  @override
  String get wifiNetwork => 'Wi-Fi ağı';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Etkinleştirme kilidi';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Geliştirici modu';

  @override
  String get adbEnabled => 'ADB etkin';

  @override
  String get unknownSources => 'Bilinmeyen kaynaklar';

  @override
  String get securityPatch => 'Güvenlik yaması';

  @override
  String get provisioningUdid => 'Sağlama UDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM bilgisi';

  @override
  String get lastEnrollment => 'Son kayıt';

  @override
  String get enterpriseId => 'Kuruluş kimliği';

  @override
  String get manufacturer => 'Üretici';

  @override
  String get generalStatus => 'Genel durum';

  @override
  String get apiLevel => 'API seviyesi';

  @override
  String get userApprovedEnrollment => 'Kullanıcı onaylı kayıt';

  @override
  String get hostname => 'Ana bilgisayar adı';

  @override
  String get macAddress => 'MAC adresi';

  @override
  String get publicIp => 'Genel IP';

  @override
  String get volumes => 'Birimler';

  @override
  String volumeUsed(String percent) {
    return '$percent% kullanılıyor';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$total toplam, $available boş';
  }

  @override
  String get encrypted => 'Şifrelenmiş';

  @override
  String get cpuInfo => 'İşlemci';

  @override
  String processorCores(String cores) {
    return '$cores çekirdek';
  }

  @override
  String processors(String count) {
    return '$count işlemci';
  }

  @override
  String get batteryLevel => 'Pil seviyesi';

  @override
  String get lastUser => 'Son kullanıcı';

  @override
  String get bootVolume => 'Önyükleme birimi';

  @override
  String get localUsers => 'Yerel kullanıcılar';

  @override
  String get regularUsers => 'Standart kullanıcılar';

  @override
  String get systemUsers => 'Sistem kullanıcıları';

  @override
  String get admin => 'Yönetici';

  @override
  String get assignToBlueprint => 'Blueprint ata';

  @override
  String get installOnDevice => 'Cihaza yükle';

  @override
  String get selectBlueprint => 'Blueprint seçin';

  @override
  String get selectDevice => 'Cihaz seçin';

  @override
  String get selfServiceEnabled => 'Self Service';

  @override
  String get vppLicenses => 'VPP lisansları';

  @override
  String get fileName => 'Dosya adı';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Cihaz İstihbaratı';

  @override
  String get prismCategoryActivationLock => 'Etkinleştirme Kilidi';

  @override
  String get prismCategoryApps => 'Uygulamalar';

  @override
  String get prismCategoryApplicationFirewall => 'Uygulama Güvenlik Duvarı';

  @override
  String get prismCategoryCellular => 'Hücresel';

  @override
  String get prismCategoryCertificates => 'Sertifikalar';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Masaüstü ve Ekran Koruyucu';

  @override
  String get prismCategoryDeviceInformation => 'Cihaz Bilgileri';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper ve XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Yüklü Profiller';

  @override
  String get prismCategoryKernelExtensions => 'Çekirdek Uzantıları';

  @override
  String get prismCategoryLaunchAgentsAndDaemons =>
      'Launch Agent\'lar ve Daemon\'lar';

  @override
  String get prismCategoryLocalUsers => 'Yerel Kullanıcılar';

  @override
  String get prismCategoryStartupSettings => 'Başlangıç Ayarları';

  @override
  String get prismCategorySystemExtensions => 'Sistem Uzantıları';

  @override
  String get prismCategoryTransparencyDatabase => 'Şeffaflık Veritabanı';

  @override
  String prismRecords(int count) {
    return '$count kayıt';
  }

  @override
  String get prismNoData => 'Bu kategori için veri mevcut değil.';

  @override
  String get prismExport => 'CSV dışa aktar';

  @override
  String get prismExportRequested =>
      'Dışa aktarma istendi. İndirme bağlantısı kısa süre içinde hazır olacak.';

  @override
  String get prismFilterByFamily => 'Cihaz ailesi';

  @override
  String get prismAllFamilies => 'Tüm aileler';

  @override
  String get appearance => 'Görünüm';

  @override
  String get themeMode => 'Tema';

  @override
  String get themeModeSystem => 'Sistem';

  @override
  String get themeModeLight => 'Açık';

  @override
  String get themeModeDark => 'Koyu';

  @override
  String get shortTypeScript => 'Komut';

  @override
  String get shortTypeCustom => 'Özel';

  @override
  String get shortTypeProfile => 'Profil';

  @override
  String get shortTypeInHouse => 'Kurum İçi';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Yönetilen';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Güvenlik';

  @override
  String get shortTypeAuto => 'Otomatik';

  @override
  String get categoryOsUpdates => 'İşletim sistemi güncellemeleri';

  @override
  String get categoryAutoApps => 'Otomatik uygulamalar';

  @override
  String get autoApp => 'Otomatik uygulama';

  @override
  String get fileSize => 'Dosya boyutu';

  @override
  String get unzipLocation => 'Çıkarma konumu';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Dosya güncellendi';

  @override
  String get mdmIdentifier => 'MDM tanımlayıcı';

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
  String get typeLabel => 'Tür';

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
