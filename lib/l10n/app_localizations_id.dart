// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Indonesian (`id`).
class AppLocalizationsId extends AppLocalizations {
  AppLocalizationsId([String locale = 'id']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Perangkat';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Pengguna';

  @override
  String get navSettings => 'Pengaturan';

  @override
  String get welcomeTitle => 'Selamat Datang di FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Kelola armada perangkat Apple Anda dari mana saja.';

  @override
  String get addProfile => 'Tambah Profil';

  @override
  String get editProfile => 'Edit Profil';

  @override
  String get displayName => 'Nama Tampilan';

  @override
  String get displayNameHint => 'cth. Acme Corp — Prod';

  @override
  String get region => 'Wilayah';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Subdomain';

  @override
  String get subdomainHint => 'tenant-anda';

  @override
  String get apiToken => 'Token API';

  @override
  String get apiTokenHint => 'Tempel token API di sini';

  @override
  String urlPreview(String url) {
    return 'URL API: $url';
  }

  @override
  String get verifyAndSave => 'Verifikasi & Simpan';

  @override
  String get verifying => 'Memverifikasi koneksi...';

  @override
  String get connectionSuccess => 'Koneksi berhasil diverifikasi!';

  @override
  String get errorInvalidToken =>
      'Token API tidak valid. Silakan periksa token Anda di konsol web.';

  @override
  String get errorInsufficientPermissions =>
      'Izin tidak mencukupi. Pastikan token memiliki akses baca ke perangkat.';

  @override
  String get errorNetworkUnreachable =>
      'API tidak dapat dijangkau. Periksa koneksi internet dan subdomain Anda.';

  @override
  String get errorNotFound => 'Sumber daya yang diminta tidak ditemukan.';

  @override
  String get errorValidation =>
      'Permintaan berisi data yang tidak valid. Silakan periksa masukan Anda.';

  @override
  String get errorRateLimit =>
      'Terlalu banyak permintaan. Silakan tunggu sebentar dan coba lagi.';

  @override
  String get errorServer =>
      'Server mengalami kesalahan. Silakan coba lagi nanti.';

  @override
  String get errorUnexpected =>
      'Terjadi kesalahan tak terduga. Silakan coba lagi.';

  @override
  String get retry => 'Coba Lagi';

  @override
  String get cancel => 'Batal';

  @override
  String get delete => 'Hapus';

  @override
  String get save => 'Simpan';

  @override
  String get search => 'Cari';

  @override
  String get searchDevices => 'Cari perangkat...';

  @override
  String get filterAll => 'Semua';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Semua Blueprint';

  @override
  String loadingDevices(int count) {
    return 'Memuat $count perangkat...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count perangkat',
      zero: 'Tidak ada perangkat',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Tidak ada perangkat ditemukan';

  @override
  String get noDevicesFoundMessage => 'Sesuaikan pencarian atau filter Anda.';

  @override
  String lastCheckIn(String time) {
    return 'Check-in terakhir: $time';
  }

  @override
  String get compliancePass => 'Lulus';

  @override
  String get complianceFail => 'Gagal';

  @override
  String get compliancePending => 'Tertunda';

  @override
  String get deviceDetails => 'Detail Perangkat';

  @override
  String get serialNumber => 'Nomor Seri';

  @override
  String get model => 'Model';

  @override
  String get osVersion => 'Versi OS';

  @override
  String get assetTag => 'Tag Aset';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Terdaftar';

  @override
  String get assignedUser => 'Pengguna Ditugaskan';

  @override
  String get actions => 'Tindakan';

  @override
  String get actionLock => 'Kunci';

  @override
  String get actionRestart => 'Mulai Ulang';

  @override
  String get actionShutdown => 'Matikan';

  @override
  String get actionErase => 'Hapus';

  @override
  String get actionBlankPush => 'Kirim Blank Push';

  @override
  String get actionReinstallAgent => 'Instal Ulang Agen';

  @override
  String get actionUpdateInventory => 'Perbarui Inventaris';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Aktifkan Remote Desktop';

  @override
  String get actionRemoteDesktopDisable => 'Nonaktifkan Remote Desktop';

  @override
  String get actionLostMode => 'Aktifkan Mode Hilang';

  @override
  String get destructiveActionTitle => 'Konfirmasi Tindakan Destruktif';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Tindakan ini tidak dapat dibatalkan. Ketik \"$deviceName\" untuk mengonfirmasi.';
  }

  @override
  String get destructiveActionHint =>
      'Ketik nama perangkat untuk mengonfirmasi';

  @override
  String get confirm => 'Konfirmasi';

  @override
  String get actionSuccess => 'Tindakan berhasil dilakukan.';

  @override
  String get actionFailed => 'Tindakan gagal. Silakan coba lagi.';

  @override
  String get biometricReason => 'Autentikasi untuk FleetPilot';

  @override
  String get biometricReasonSecrets =>
      'Autentikasi untuk melihat data sensitif';

  @override
  String get biometricReasonDestructive =>
      'Autentikasi untuk melakukan tindakan ini';

  @override
  String get biometricFailed => 'Autentikasi gagal. Silakan coba lagi.';

  @override
  String get profiles => 'Profil';

  @override
  String activeProfile(String name) {
    return 'Aktif: $name';
  }

  @override
  String get switchProfile => 'Ganti Profil';

  @override
  String get deleteProfile => 'Hapus Profil';

  @override
  String get deleteProfileConfirm =>
      'Apakah Anda yakin ingin menghapus profil ini? Tindakan ini tidak dapat dibatalkan.';

  @override
  String get noProfiles => 'Tidak ada profil yang dikonfigurasi';

  @override
  String get settings => 'Pengaturan';

  @override
  String get about => 'Tentang';

  @override
  String version(String version) {
    return 'Versi $version';
  }

  @override
  String get validationRequired => 'Kolom ini wajib diisi.';

  @override
  String get validationSubdomain =>
      'Hanya huruf, angka, dan tanda hubung yang diperbolehkan. Tanpa tanda hubung di awal atau akhir.';

  @override
  String get validationToken =>
      'Format token tidak valid. 20–500 karakter, hanya alfanumerik dan pemisah umum.';

  @override
  String pinLockedOut(int seconds) {
    return 'Terlalu banyak percobaan gagal. Coba lagi dalam $seconds detik.';
  }

  @override
  String get complianceStatus => 'Status Kepatuhan';

  @override
  String get platform => 'Platform';

  @override
  String get deviceName => 'Nama Perangkat';

  @override
  String get searchUsers => 'Cari pengguna...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count pengguna',
      zero: 'Tidak ada pengguna',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Tidak ada pengguna ditemukan';

  @override
  String get noUsersFoundMessage => 'Sesuaikan pencarian atau filter Anda.';

  @override
  String get showArchived => 'Tampilkan yang diarsipkan';

  @override
  String get archived => 'Diarsipkan';

  @override
  String get email => 'Email';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprint',
      zero: 'Tidak ada blueprint',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Tidak ada blueprint ditemukan';

  @override
  String get noBlueprintsFoundMessage =>
      'Belum ada blueprint yang dikonfigurasi.';

  @override
  String get enrollmentActive => 'Pendaftaran aktif';

  @override
  String get enrollmentInactive => 'Pendaftaran tidak aktif';

  @override
  String get tabOverview => 'Ikhtisar';

  @override
  String get tabApps => 'Aplikasi';

  @override
  String get tabStatus => 'Status';

  @override
  String get tabActivity => 'Aktivitas';

  @override
  String get tabCommands => 'Perintah';

  @override
  String get hardware => 'Perangkat Keras';

  @override
  String get security => 'Keamanan';

  @override
  String get totalStorage => 'Total Penyimpanan';

  @override
  String get availableStorage => 'Penyimpanan Tersedia';

  @override
  String get totalRam => 'Total RAM';

  @override
  String get wifiMac => 'Alamat MAC Wi-Fi';

  @override
  String get encryption => 'Enkripsi';

  @override
  String get passcode => 'Kode Sandi';

  @override
  String get noAppsFound => 'Tidak ada aplikasi ditemukan';

  @override
  String get noActivityFound => 'Tidak ada aktivitas ditemukan';

  @override
  String get noCommandsFound => 'Tidak ada perintah ditemukan';

  @override
  String get libraryItems => 'Item Pustaka';

  @override
  String get parameters => 'Parameter';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'Build OS';

  @override
  String get cellular => 'Seluler';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count aplikasi',
      zero: 'Tidak ada aplikasi',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Detail Pengguna';

  @override
  String get jobTitle => 'Jabatan';

  @override
  String get department => 'Departemen';

  @override
  String get createdAt => 'Dibuat';

  @override
  String get updatedAt => 'Diperbarui';

  @override
  String get assignedDevices => 'Perangkat Ditugaskan';

  @override
  String get noAssignedDevices =>
      'Tidak ada perangkat yang ditugaskan ke pengguna ini.';

  @override
  String get userInfo => 'Info Pengguna';

  @override
  String get navMore => 'Lainnya';

  @override
  String get tabSecrets => 'Secrets';

  @override
  String get filevaultKey => 'Kunci Pemulihan FileVault';

  @override
  String get unlockPin => 'PIN Buka Kunci';

  @override
  String get recoveryPassword => 'Kata Sandi Recovery Lock';

  @override
  String get bypassCode => 'Kode Bypass Kunci Aktivasi';

  @override
  String get noSecretsFound =>
      'Tidak ada secrets tersedia untuk perangkat ini.';

  @override
  String get secretCopied => 'Secret disalin ke papan klip';

  @override
  String get threats => 'Ancaman';

  @override
  String get noThreatsFound => 'Tidak ada ancaman terdeteksi.';

  @override
  String get vulnerabilities => 'Kerentanan';

  @override
  String get noVulnerabilitiesFound => 'Tidak ada kerentanan terdeteksi.';

  @override
  String get aboutApp => 'Tentang FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot adalah aplikasi manajemen MDM open-source untuk armada perangkat Apple.';

  @override
  String get tapToCopy => 'Ketuk untuk menyalin';

  @override
  String get devices => 'Perangkat';

  @override
  String get severity => 'Tingkat Keparahan';

  @override
  String get tabLocation => 'Lokasi';

  @override
  String get locationNotAvailable =>
      'Data lokasi tidak tersedia untuk perangkat ini.';

  @override
  String get enableLostModeHint =>
      'Aktifkan mode hilang untuk melacak lokasi perangkat ini.';

  @override
  String get lostModeEnabled => 'Mode Hilang Diaktifkan';

  @override
  String get noLibraryItemsFound => 'Tidak ada item pustaka ditemukan.';

  @override
  String get licenses => 'Lisensi';

  @override
  String get lostModeMessage => 'Pesan Mode Hilang';

  @override
  String get lostModePhone => 'Nomor Telepon';

  @override
  String get lostModeFootnote =>
      'Pesan dan nomor telepon opsional ditampilkan di perangkat';

  @override
  String get supervised => 'Diawasi';

  @override
  String get unsupervised => 'Tidak Diawasi';

  @override
  String get filterSupervised => 'Diawasi';

  @override
  String get filterUnsupervised => 'Tidak Diawasi';

  @override
  String get language => 'Bahasa';

  @override
  String get languageSystem => 'Default Sistem';

  @override
  String get actionDisableLostMode => 'Nonaktifkan Mode Hilang';

  @override
  String get actionClearPasscode => 'Hapus Kode Sandi';

  @override
  String get filterLostMode => 'Mode Hilang';

  @override
  String get lostMode => 'Mode Hilang';

  @override
  String get sectionManagement => 'Manajemen';

  @override
  String get sectionStatus => 'Status';

  @override
  String get statusMissing => 'Hilang';

  @override
  String get statusRemoved => 'Dihapus';

  @override
  String get agent => 'Agen';

  @override
  String get identifier => 'Pengidentifikasi';

  @override
  String get processor => 'Prosesor';

  @override
  String get hardwareUuid => 'UUID Perangkat Keras';

  @override
  String get devicePosture => 'Postur Perangkat';

  @override
  String get unknownDevice => 'Perangkat Tidak Dikenal';

  @override
  String get securityAppLock => 'Kunci Aplikasi';

  @override
  String get securityAppLockDescription =>
      'Atur PIN 6 digit untuk melindungi aplikasi. Autentikasi biometrik dapat diaktifkan setelah PIN diatur.';

  @override
  String get securityAppLockActive => 'Kunci aplikasi diaktifkan';

  @override
  String get securityAppLockInactive =>
      'Tidak ada kunci aplikasi yang dikonfigurasi';

  @override
  String get securitySetPin => 'Atur PIN';

  @override
  String get securityChangePin => 'Ubah PIN';

  @override
  String get securityRemovePin => 'Hapus PIN';

  @override
  String get securityCurrentPin => 'PIN Saat Ini';

  @override
  String get securityNewPin => 'PIN Baru';

  @override
  String get securityConfirmPin => 'Masukkan ulang PIN untuk mengonfirmasi.';

  @override
  String get securityPinLength => 'PIN harus 6 digit.';

  @override
  String get securityPinMismatch => 'PIN tidak cocok.';

  @override
  String get securityPinWrong => 'PIN salah.';

  @override
  String get securityPinSet => 'PIN telah diatur.';

  @override
  String get securityPinChanged => 'PIN telah diubah.';

  @override
  String get securityPinRemoved => 'PIN dan kunci aplikasi telah dihapus.';

  @override
  String get securityBiometric => 'Biometrik';

  @override
  String get securityBiometricDescription =>
      'Gunakan sidik jari atau pengenalan wajah untuk membuka kunci aplikasi sebagai pengganti PIN.';

  @override
  String get securityBiometricEnable => 'Buka Kunci Biometrik';

  @override
  String get securityBiometricActive => 'Aktif';

  @override
  String get securityBiometricInactive => 'Tidak Aktif';

  @override
  String get securityBiometricUnavailable =>
      'Autentikasi biometrik tidak tersedia di perangkat ini.';

  @override
  String get securityNext => 'Lanjut';

  @override
  String get actionRenewMdm => 'Perbarui Profil MDM';

  @override
  String get actionSetName => 'Atur Nama Perangkat';

  @override
  String get actionSetNameHint => 'Masukkan nama perangkat baru';

  @override
  String get actionDeleteUser => 'Hapus Pengguna';

  @override
  String get actionDeleteUserName => 'Nama Pengguna';

  @override
  String get actionDeleteAllUsers => 'Hapus Semua Pengguna';

  @override
  String get actionForceDeletion => 'Paksa Penghapusan';

  @override
  String get actionUnlockAccount => 'Buka Kunci Akun';

  @override
  String get actionPlayLostModeSound => 'Putar Suara Mode Hilang';

  @override
  String get actionUpdateLocation => 'Perbarui Lokasi';

  @override
  String get erasePin => 'PIN 6 digit';

  @override
  String get erasePinHint => 'Diperlukan untuk perangkat seluler';

  @override
  String get erasePreserveDataPlan => 'Pertahankan Paket Data';

  @override
  String get eraseDisallowProximitySetup => 'Larang Pengaturan Proximity';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Pesan Kunci';

  @override
  String get lockPhone => 'Nomor Telepon';

  @override
  String get restartRebuildKernelCache => 'Bangun Ulang Cache Kernel';

  @override
  String get restartNotifyUser => 'Beritahu Pengguna';

  @override
  String get actionRemoteDesktop => 'Remote Desktop';

  @override
  String get tabNotes => 'Catatan';

  @override
  String get noNotesFound => 'Belum ada catatan';

  @override
  String get addNote => 'Tambah Catatan';

  @override
  String get editNote => 'Edit Catatan';

  @override
  String get deleteNote => 'Hapus Catatan';

  @override
  String get deleteNoteConfirm =>
      'Apakah Anda yakin ingin menghapus catatan ini?';

  @override
  String get noteContent => 'Isi Catatan';

  @override
  String get noteSaved => 'Catatan disimpan.';

  @override
  String get noteDeleted => 'Catatan dihapus.';

  @override
  String get editDevice => 'Edit Perangkat';

  @override
  String get deviceUpdated => 'Perangkat diperbarui.';

  @override
  String get deleteDevice => 'Hapus Perangkat';

  @override
  String get deleteDeviceConfirm =>
      'Perangkat akan dihapus secara permanen dari MDM. Tindakan ini tidak dapat dibatalkan.';

  @override
  String get deviceDeleted => 'Perangkat dihapus.';

  @override
  String get cancelLostMode => 'Batalkan Mode Hilang';

  @override
  String get cancelLostModeConfirm =>
      'Batalkan permintaan mode hilang yang tertunda?';

  @override
  String get lostModeCancelled => 'Mode hilang dibatalkan.';

  @override
  String get tags => 'Tag';

  @override
  String get noTags => 'Tidak ada tag';

  @override
  String get addTag => 'Tambah Tag';

  @override
  String get tagName => 'Nama Tag';

  @override
  String get manageTags => 'Kelola Tag';

  @override
  String get auditLog => 'Log Audit';

  @override
  String get noAuditEvents => 'Tidak ada peristiwa audit ditemukan';

  @override
  String get actionDailyCheckIn => 'Check-in Harian';

  @override
  String get licensing => 'Lisensi';

  @override
  String get deviceLimit => 'Batas Perangkat';

  @override
  String get devicesUsed => 'Perangkat Digunakan';

  @override
  String get licenseType => 'Tipe Lisensi';

  @override
  String get appleDevices => 'Perangkat Apple';

  @override
  String get deleteUser => 'Hapus Pengguna';

  @override
  String get deleteUserConfirm =>
      'Apakah Anda yakin ingin menghapus pengguna ini? Tindakan ini tidak dapat dibatalkan.';

  @override
  String get userDeleted => 'Pengguna dihapus.';

  @override
  String get createBlueprint => 'Buat Blueprint';

  @override
  String get editBlueprint => 'Edit Blueprint';

  @override
  String get deleteBlueprint => 'Hapus Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Menghapus blueprint ini akan membatalkan pendaftaran semua perangkat yang ditugaskan. Tindakan ini tidak dapat dibatalkan.';

  @override
  String get blueprintCreated => 'Blueprint dibuat.';

  @override
  String get blueprintUpdated => 'Blueprint diperbarui.';

  @override
  String get blueprintDeleted => 'Blueprint dihapus.';

  @override
  String get blueprintName => 'Nama Blueprint';

  @override
  String get blueprintDescription => 'Deskripsi';

  @override
  String get enrollmentCode => 'Kode Pendaftaran';

  @override
  String get assignLibraryItem => 'Tugaskan Item Pustaka';

  @override
  String get removeLibraryItem => 'Hapus Item Pustaka';

  @override
  String get libraryItemAssigned => 'Item pustaka ditugaskan.';

  @override
  String get libraryItemRemoved => 'Item pustaka dihapus.';

  @override
  String get lostModeDetails => 'Detail Mode Hilang';

  @override
  String get lostModeEnabledBy => 'Diaktifkan oleh';

  @override
  String get lostModeEnabledAt => 'Diaktifkan pada';

  @override
  String get searchBlueprints => 'Cari blueprint...';

  @override
  String get searchVulnerabilities => 'Cari kerentanan...';

  @override
  String get searchThreats => 'Cari ancaman...';

  @override
  String get searchAuditLog => 'Cari log audit...';

  @override
  String get filterCritical => 'Kritis';

  @override
  String get filterHigh => 'Tinggi';

  @override
  String get filterMedium => 'Sedang';

  @override
  String get filterLow => 'Rendah';

  @override
  String get filterClearAll => 'Hapus Semua';

  @override
  String get filterTitle => 'Filter';

  @override
  String get filterApply => 'Terapkan';

  @override
  String get filterPlatform => 'Platform';

  @override
  String get filterSupervision => 'Pengawasan';

  @override
  String get filterStatus => 'Status';

  @override
  String get adeIntegrations => 'Integrasi ADE';

  @override
  String get noAdeIntegrations => 'Tidak ada integrasi ADE ditemukan.';

  @override
  String get adeDevices => 'Perangkat ADE';

  @override
  String get noAdeDevices => 'Tidak ada perangkat ADE ditemukan.';

  @override
  String get tokenExpiry => 'Kedaluwarsa Token';

  @override
  String get tokenValid => 'Token valid';

  @override
  String get tokenExpired => 'Token kedaluwarsa';

  @override
  String get orgName => 'Organisasi';

  @override
  String get defaultBlueprint => 'Blueprint Default';

  @override
  String get renewToken => 'Perbarui Token';

  @override
  String get publicKey => 'Kunci Publik';

  @override
  String get vulnerabilityDetections => 'Deteksi Kerentanan';

  @override
  String get noDetectionsFound => 'Tidak ada deteksi ditemukan.';

  @override
  String get behavioralDetections => 'Deteksi Perilaku';

  @override
  String get noBehavioralDetections => 'Tidak ada deteksi perilaku ditemukan.';

  @override
  String get searchBehavioralDetections => 'Cari deteksi...';

  @override
  String get affectedDevices => 'Perangkat Terdampak';

  @override
  String get noAffectedDevices =>
      'Tidak ada perangkat terdampak ditemukan. Perangkat yang sebelumnya terdampak mungkin telah dihapus.';

  @override
  String get affectedSoftware => 'Perangkat Lunak Terdampak';

  @override
  String get blueprintTemplates => 'Template Blueprint';

  @override
  String get noTemplatesFound => 'Tidak ada template ditemukan.';

  @override
  String get otaEnrollmentProfile => 'Profil Pendaftaran OTA';

  @override
  String get libraryItemActivity => 'Aktivitas';

  @override
  String get libraryItemDeploymentStatus => 'Status Penerapan';

  @override
  String get noActivityFound2 => 'Tidak ada aktivitas ditemukan.';

  @override
  String get noStatusFound => 'Tidak ada status penerapan ditemukan.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count deteksi',
      zero: 'Tidak ada deteksi',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count integrasi',
      zero: 'Tidak ada integrasi',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Detail Kerentanan';

  @override
  String get description => 'Deskripsi';

  @override
  String get firstDetected => 'Pertama Terdeteksi';

  @override
  String get lastDetected => 'Terakhir Terdeteksi';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count perangkat lunak',
      zero: 'Tidak ada perangkat lunak',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Edit Integrasi';

  @override
  String get deleteIntegration => 'Hapus Integrasi';

  @override
  String get deleteIntegrationConfirm =>
      'Apakah Anda yakin ingin menghapus integrasi ADE ini? Tindakan ini tidak dapat dibatalkan.';

  @override
  String get integrationDeleted => 'Integrasi dihapus.';

  @override
  String get integrationUpdated => 'Integrasi diperbarui.';

  @override
  String get defaultBlueprintId => 'ID Blueprint Default';

  @override
  String get phone => 'Telepon';

  @override
  String get downloadOtaProfile => 'Unduh profil pendaftaran';

  @override
  String get otaProfileCopied => 'Profil pendaftaran disalin ke papan klip.';

  @override
  String get noOtaProfile => 'Tidak ada profil pendaftaran tersedia.';

  @override
  String get createTag => 'Buat Tag';

  @override
  String get editTag => 'Edit Tag';

  @override
  String get deleteTag => 'Hapus Tag';

  @override
  String get deleteTagConfirm => 'Apakah Anda yakin ingin menghapus tag ini?';

  @override
  String get tagColor => 'Warna';

  @override
  String get tagCreated => 'Tag dibuat.';

  @override
  String get tagUpdated => 'Tag diperbarui.';

  @override
  String get tagDeleted => 'Tag dihapus.';

  @override
  String get noTagsFound => 'Tidak ada tag ditemukan.';

  @override
  String get libraryItemDetail => 'Item Pustaka';

  @override
  String get viewActivity => 'Lihat Aktivitas';

  @override
  String get viewStatus => 'Lihat Status';

  @override
  String get installations => 'Instalasi';

  @override
  String get createAdeIntegration => 'Buat Integrasi ADE';

  @override
  String get adeCreateDescription =>
      'Unggah file server token (.p7m) dari Apple Business Manager untuk membuat integrasi ADE baru.';

  @override
  String get selectTokenFile => 'Pilih File Token';

  @override
  String tokenFileSelected(String name) {
    return 'File token: $name';
  }

  @override
  String get noTokenFileSelected => 'Tidak ada file token dipilih';

  @override
  String get integrationCreated => 'Integrasi dibuat.';

  @override
  String get create => 'Buat';

  @override
  String get step1GetPublicKey => 'Langkah 1: Unduh Kunci Publik';

  @override
  String get step1Description =>
      'Salin kunci publik dan unggah di Apple Business Manager.';

  @override
  String get step2UploadToken => 'Langkah 2: Unggah Server Token';

  @override
  String get step2Description =>
      'Pilih file token .p7m yang Anda unduh dari Apple.';

  @override
  String get step3Configure => 'Langkah 3: Konfigurasi';

  @override
  String get publicKeyCopied => 'Kunci publik disalin ke papan klip.';

  @override
  String get renewTokenDescription =>
      'Unggah file token .p7m baru untuk memperbarui token integrasi ini.';

  @override
  String get tokenRenewed => 'Token diperbarui.';

  @override
  String get aboutLinks => 'Tautan';

  @override
  String get aboutWebsite => 'Situs Web';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Kode Sumber';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Teknologi';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'State Management';

  @override
  String get aboutArchitecture => 'Arsitektur';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Kelas Data';

  @override
  String get aboutNavigationLabel => 'Navigasi';

  @override
  String get aboutOpenSourceLicenses => 'Lisensi Open Source';

  @override
  String get aboutShowHide => 'Alihkan Visibilitas';

  @override
  String get editProfileTitle => 'Edit Koneksi';

  @override
  String get editProfileSubtitle => 'Perbarui pengaturan koneksi tenant Anda.';

  @override
  String get apiTokenHintEdit =>
      'Biarkan kosong untuk mempertahankan token yang ada';

  @override
  String get profileUpdated => 'Profil diperbarui.';

  @override
  String profileSwitched(String name) {
    return 'Beralih ke $name.';
  }

  @override
  String get securityAutoLock => 'Kunci Otomatis';

  @override
  String get securityAutoLockDescription =>
      'Otomatis memerlukan autentikasi setelah aplikasi di latar belakang.';

  @override
  String get timeoutImmediately => 'Segera';

  @override
  String get timeoutSeconds30 => 'Setelah 30 detik';

  @override
  String get timeoutSeconds60 => 'Setelah 1 menit';

  @override
  String get timeoutSeconds120 => 'Setelah 2 menit';

  @override
  String get timeoutMinutes5 => 'Setelah 5 menit';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Tidak Ada Blueprint';

  @override
  String get presetSaveFilter => 'Simpan Preset Filter';

  @override
  String get presetLoad => 'Muat Preset';

  @override
  String get presetName => 'Nama Preset';

  @override
  String get presetNameHint => 'cth. Mac Tidak Diawasi';

  @override
  String get presetSaved => 'Preset filter disimpan.';

  @override
  String get presetDeleted => 'Preset filter dihapus.';

  @override
  String presetApplied(String name) {
    return 'Preset \"$name\" diterapkan.';
  }

  @override
  String get presetNoPresets => 'Tidak ada preset tersimpan';

  @override
  String get presetNoPresetsMessage =>
      'Simpan filter Anda saat ini sebagai preset untuk akses cepat.';

  @override
  String get presetDeleteConfirm => 'Hapus preset ini?';

  @override
  String get presetNameRequired => 'Silakan masukkan nama untuk preset.';

  @override
  String selectedCount(int count) {
    return '$count dipilih';
  }

  @override
  String get selectAll => 'Pilih Semua';

  @override
  String get deselectAll => 'Batalkan Pilihan Semua';

  @override
  String get bulkActions => 'Tindakan';

  @override
  String bulkActionsTitle(int count) {
    return 'Tindakan untuk $count perangkat';
  }

  @override
  String get bulkActionAssignTag => 'Tugaskan Tag';

  @override
  String get bulkActionAssignTagDescription =>
      'Tambahkan tag ke semua perangkat yang dipilih';

  @override
  String get bulkActionAssignBlueprint => 'Tugaskan Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Pindahkan perangkat yang dipilih ke blueprint';

  @override
  String get bulkActionLock => 'Kunci Perangkat';

  @override
  String get bulkActionLockDescription =>
      'Kunci semua perangkat yang dipilih dari jarak jauh';

  @override
  String get bulkActionRestart => 'Mulai Ulang Perangkat';

  @override
  String get bulkActionRestartDescription =>
      'Mulai ulang semua perangkat yang dipilih';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Apakah Anda yakin ingin memulai ulang $count perangkat?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Tindakan berhasil diselesaikan pada $count perangkat.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Selesai pada $success perangkat, $failed gagal.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed dari $total selesai';
  }

  @override
  String get biometricReasonBulkAction =>
      'Autentikasi untuk melakukan tindakan massal';

  @override
  String get lockPin => 'PIN Kunci (opsional)';

  @override
  String get noTagsAvailable =>
      'Tidak ada tag tersedia. Buat tag di konsol web MDM.';

  @override
  String get noBlueprintsAvailable => 'Tidak ada blueprint tersedia.';

  @override
  String get selectADevice => 'Pilih perangkat';

  @override
  String get selectABlueprint => 'Pilih blueprint';

  @override
  String get clearSearch => 'Hapus Pencarian';

  @override
  String get refresh => 'Segarkan';

  @override
  String get moreActions => 'Tindakan Lainnya';

  @override
  String get close => 'Tutup';

  @override
  String get onboardingSkip => 'Lewati';

  @override
  String get onboardingNext => 'Lanjut';

  @override
  String get onboardingGetStarted => 'Mulai';

  @override
  String get onboardingWelcomeTitle => 'Selamat Datang di FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Pusat kendali seluler Anda untuk manajemen armada perangkat Apple. Pantau, kelola, dan amankan seluruh armada Anda dari mana saja.';

  @override
  String get onboardingDevicesTitle => 'Manajemen Perangkat';

  @override
  String get onboardingDevicesSubtitle =>
      'Visibilitas dan kontrol penuh atas setiap perangkat di armada Anda.';

  @override
  String get onboardingDevicesFeature1 =>
      'Lihat semua iPhone, iPad, Mac, dan Apple TV yang terdaftar';

  @override
  String get onboardingDevicesFeature2 =>
      'Kirim perintah jarak jauh: Kunci, Mulai Ulang, Hapus, dan lainnya';

  @override
  String get onboardingDevicesFeature3 =>
      'Lacak blueprint, aplikasi, dan status kepatuhan';

  @override
  String get onboardingSecurityTitle => 'Dibangun untuk Keamanan';

  @override
  String get onboardingSecuritySubtitle =>
      'Data armada Anda tetap terlindungi dengan beberapa lapisan keamanan.';

  @override
  String get onboardingSecurityFeature1 =>
      'Autentikasi biometrik dengan Face ID atau sidik jari';

  @override
  String get onboardingSecurityFeature2 =>
      'Kunci PIN 6 digit untuk akses aplikasi';

  @override
  String get onboardingSecurityFeature3 =>
      'Kunci sesi otomatis setelah batas waktu';

  @override
  String get onboardingReadyTitle => 'Siap untuk Memulai';

  @override
  String get onboardingReadySubtitle =>
      'Hubungkan tenant MDM Anda untuk mulai mengelola armada perangkat Apple Anda. Selanjutnya, atur koneksi API dan PIN keamanan Anda.';

  @override
  String get searchTags => 'Cari tag';

  @override
  String tagDeviceCount(int count) {
    return '$count perangkat';
  }

  @override
  String get sortTitle => 'Urutan';

  @override
  String get sortDirection => 'Arah Urutan';

  @override
  String get ascending => 'Naik';

  @override
  String get descending => 'Turun';

  @override
  String get filterSeverity => 'Tingkat Keparahan';

  @override
  String get filterSort => 'Filter & Urutkan';

  @override
  String get statusQuarantined => 'Dikarantina';

  @override
  String get statusNotQuarantined => 'Tidak Dikarantina';

  @override
  String get statusDetected => 'Terdeteksi';

  @override
  String get statusReleased => 'Dirilis';

  @override
  String get severityCritical => 'Kritis';

  @override
  String get severityHigh => 'Tinggi';

  @override
  String get severityMedium => 'Sedang';

  @override
  String get severityLow => 'Rendah';

  @override
  String threatCount(int count) {
    return '$count ancaman';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count deteksi';
  }

  @override
  String get downloadPublicKey => 'Unduh';

  @override
  String get publicKeySaved => 'Kunci publik disimpan';

  @override
  String get sortBy => 'Urutkan berdasarkan';

  @override
  String get sortByCvss => 'Skor CVSS';

  @override
  String get sortByDeviceCount => 'Perangkat Terdampak';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count kerentanan';
  }

  @override
  String get assignTags => 'Tag';

  @override
  String get noTagsAvailableMessage =>
      'Tidak ada tag tersedia. Buat tag terlebih dahulu.';

  @override
  String get failedToLoadTags => 'Gagal memuat tag';

  @override
  String get details => 'Detail';

  @override
  String get searchLibraryItems => 'Cari item pustaka...';

  @override
  String get categoryCustomScript => 'Skrip Kustom';

  @override
  String get categoryCustomApp => 'Aplikasi Kustom';

  @override
  String get categoryCustomProfile => 'Profil Kustom';

  @override
  String get categoryInHouseApp => 'Aplikasi In-House';

  @override
  String get categoryBuiltIn => 'Bawaan';

  @override
  String get categoryVppApps => 'Aplikasi VPP / App Store';

  @override
  String get categoryManagedProfiles => 'Profil Terkelola';

  @override
  String get categoryKandjiSetup => 'Pengaturan MDM';

  @override
  String get categoryMacosRelease => 'Pembaruan macOS';

  @override
  String get categoryThreatPolicy => 'Kebijakan Keamanan';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprint',
      one: '1 blueprint',
    );
    return 'Di $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Sekali';

  @override
  String get executionFrequencyEvery15Min => 'Setiap 15 menit';

  @override
  String get executionFrequencyEveryDay => 'Setiap hari';

  @override
  String get executionFrequencyNoEnforcement => 'Tanpa penerapan';

  @override
  String get scriptBody => 'Skrip';

  @override
  String get remediationScript => 'Skrip Remediasi';

  @override
  String get allProperties => 'Semua Properti';

  @override
  String get builtInLibraryItem => 'Item Pustaka Bawaan';

  @override
  String get builtInDetailsHint => 'Detail tersedia di tab Status';

  @override
  String get active => 'Aktif';

  @override
  String get yes => 'Ya';

  @override
  String get no => 'Tidak';

  @override
  String get execution => 'Eksekusi';

  @override
  String get restart => 'Mulai Ulang';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Tipe Instalasi';

  @override
  String get enforcement => 'Penerapan';

  @override
  String get runsOnMac => 'Berjalan di Mac';

  @override
  String get runsOnIphone => 'Berjalan di iPhone';

  @override
  String get runsOnIpad => 'Berjalan di iPad';

  @override
  String get appName => 'Nama Aplikasi';

  @override
  String get appVersion => 'Versi Aplikasi';

  @override
  String get minOsVersion => 'Versi OS Min.';

  @override
  String get created => 'Dibuat';

  @override
  String get updated => 'Diperbarui';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count item',
      zero: 'Tidak ada item',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Diselesaikan';

  @override
  String get severityInformational => 'Informasi';

  @override
  String get managementState => 'Status Manajemen';

  @override
  String get managementStateOpen => 'Terbuka';

  @override
  String get managementStateClosed => 'Ditutup';

  @override
  String get classificationMalware => 'Malware';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Mencurigakan';

  @override
  String get classificationMal => 'Berbahaya';

  @override
  String get blueprintRouting => 'Routing Blueprint';

  @override
  String get blueprintRoutingDesc =>
      'Kode pendaftaran dan routing untuk pendaftaran manual / Android Work Profile';

  @override
  String get blueprintRoutingNotConfigured =>
      'Routing blueprint tidak dikonfigurasi untuk tenant ini.';

  @override
  String get enrollmentCodeActive => 'Aktif';

  @override
  String get enrollmentCodeInactive => 'Tidak Aktif';

  @override
  String get routingActivity => 'Aktivitas Routing';

  @override
  String get noRoutingActivity => 'Tidak ada aktivitas routing ditemukan.';

  @override
  String get selfServiceCategories => 'Kategori Self-Service';

  @override
  String get selfServiceDesc =>
      'Kelola kategori self-service untuk pengguna Anda';

  @override
  String get addCategory => 'Tambah Kategori';

  @override
  String get categoryName => 'Nama Kategori';

  @override
  String get deleteCategory => 'Hapus Kategori';

  @override
  String get deleteCategoryConfirm =>
      'Apakah Anda yakin ingin menghapus kategori ini?';

  @override
  String get noCategoriesFound => 'Tidak ada kategori ditemukan.';

  @override
  String get categoryCreated => 'Kategori dibuat';

  @override
  String get categoryDeleted => 'Kategori dihapus';

  @override
  String get profileBody => 'XML Profil';

  @override
  String get customProfile => 'Profil Kustom';

  @override
  String get classification => 'Klasifikasi';

  @override
  String get mdmEnabled => 'MDM Diaktifkan';

  @override
  String get enrolledViaDep => 'Terdaftar Melalui DEP';

  @override
  String get userApprovedMdm => 'MDM Disetujui Pengguna';

  @override
  String get network => 'Jaringan';

  @override
  String get ipAddress => 'Alamat IP';

  @override
  String get wifiNetwork => 'Jaringan Wi-Fi';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'Kunci Aktivasi';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Mode Pengembang';

  @override
  String get adbEnabled => 'ADB Diaktifkan';

  @override
  String get unknownSources => 'Sumber Tidak Dikenal';

  @override
  String get securityPatch => 'Patch Keamanan';

  @override
  String get provisioningUdid => 'UDID Provisioning';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'Info MDM';

  @override
  String get lastEnrollment => 'Pendaftaran Terakhir';

  @override
  String get enterpriseId => 'ID Enterprise';

  @override
  String get manufacturer => 'Produsen';

  @override
  String get generalStatus => 'Status Umum';

  @override
  String get apiLevel => 'Level API';

  @override
  String get userApprovedEnrollment => 'Pendaftaran Disetujui Pengguna';

  @override
  String get hostname => 'Hostname';

  @override
  String get macAddress => 'Alamat MAC';

  @override
  String get publicIp => 'IP Publik';

  @override
  String get volumes => 'Volume';

  @override
  String volumeUsed(String percent) {
    return '$percent% terpakai';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available tersedia dari $total';
  }

  @override
  String get encrypted => 'Terenkripsi';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores inti';
  }

  @override
  String processors(String count) {
    return '$count prosesor';
  }

  @override
  String get batteryLevel => 'Level Baterai';

  @override
  String get lastUser => 'Pengguna Terakhir';

  @override
  String get bootVolume => 'Volume Boot';

  @override
  String get localUsers => 'Pengguna Lokal';

  @override
  String get regularUsers => 'Pengguna Standar';

  @override
  String get systemUsers => 'Pengguna Sistem';

  @override
  String get admin => 'Admin';

  @override
  String get assignToBlueprint => 'Tugaskan ke Blueprint';

  @override
  String get installOnDevice => 'Instal di Perangkat';

  @override
  String get selectBlueprint => 'Pilih Blueprint';

  @override
  String get selectDevice => 'Pilih Perangkat';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'Lisensi VPP';

  @override
  String get fileName => 'Nama File';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Kunci Aktivasi';

  @override
  String get prismCategoryApps => 'Aplikasi';

  @override
  String get prismCategoryApplicationFirewall => 'Firewall Aplikasi';

  @override
  String get prismCategoryCellular => 'Seluler';

  @override
  String get prismCategoryCertificates => 'Sertifikat';

  @override
  String get prismCategoryDesktopAndScreensaver => 'Desktop & Screensaver';

  @override
  String get prismCategoryDeviceInformation => 'Informasi Perangkat';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper & XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Profil Terinstal';

  @override
  String get prismCategoryKernelExtensions => 'Ekstensi Kernel';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agent & Daemon';

  @override
  String get prismCategoryLocalUsers => 'Pengguna Lokal';

  @override
  String get prismCategoryStartupSettings => 'Pengaturan Startup';

  @override
  String get prismCategorySystemExtensions => 'Ekstensi Sistem';

  @override
  String get prismCategoryTransparencyDatabase => 'Database Transparansi';

  @override
  String prismRecords(int count) {
    return '$count catatan';
  }

  @override
  String get prismNoData => 'Tidak ada data tersedia untuk kategori ini.';

  @override
  String get prismExport => 'Ekspor CSV';

  @override
  String get prismExportRequested =>
      'Ekspor diminta. Tautan unduhan akan segera tersedia.';

  @override
  String get prismFilterByFamily => 'Keluarga Perangkat';

  @override
  String get prismAllFamilies => 'Semua Keluarga';

  @override
  String get appearance => 'Tampilan';

  @override
  String get themeMode => 'Tema';

  @override
  String get themeModeSystem => 'Sistem';

  @override
  String get themeModeLight => 'Terang';

  @override
  String get themeModeDark => 'Gelap';

  @override
  String get shortTypeScript => 'Skrip';

  @override
  String get shortTypeCustom => 'Kustom';

  @override
  String get shortTypeProfile => 'Profil';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Terkelola';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Keamanan';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'Pembaruan OS';

  @override
  String get categoryAutoApps => 'Aplikasi Auto';

  @override
  String get autoApp => 'Aplikasi Auto';

  @override
  String get fileSize => 'Ukuran File';

  @override
  String get unzipLocation => 'Lokasi Ekstrak';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'File diperbarui';

  @override
  String get mdmIdentifier => 'Identifier MDM';

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
  String get typeLabel => 'Tipe';

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
