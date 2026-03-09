// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Thai (`th`).
class AppLocalizationsTh extends AppLocalizations {
  AppLocalizationsTh([String locale = 'th']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'อุปกรณ์';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'ผู้ใช้';

  @override
  String get navSettings => 'การตั้งค่า';

  @override
  String get welcomeTitle => 'ยินดีต้อนรับสู่ FleetPilot';

  @override
  String get welcomeSubtitle => 'จัดการกลุ่มอุปกรณ์ Apple ของคุณจากทุกที่';

  @override
  String get addProfile => 'เพิ่มโปรไฟล์';

  @override
  String get editProfile => 'แก้ไขโปรไฟล์';

  @override
  String get displayName => 'ชื่อที่แสดง';

  @override
  String get displayNameHint => 'เช่น Acme Corp — Prod';

  @override
  String get region => 'ภูมิภาค';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'ซับโดเมน';

  @override
  String get subdomainHint => 'ชื่อ-tenant-ของคุณ';

  @override
  String get apiToken => 'API Token';

  @override
  String get apiTokenHint => 'วาง API Token ที่นี่';

  @override
  String urlPreview(String url) {
    return 'API URL: $url';
  }

  @override
  String get verifyAndSave => 'ตรวจสอบและบันทึก';

  @override
  String get verifying => 'กำลังตรวจสอบการเชื่อมต่อ...';

  @override
  String get connectionSuccess => 'ตรวจสอบการเชื่อมต่อสำเร็จ!';

  @override
  String get errorInvalidToken =>
      'API Token ไม่ถูกต้อง กรุณาตรวจสอบ Token ของคุณในคอนโซลเว็บ';

  @override
  String get errorInsufficientPermissions =>
      'สิทธิ์ไม่เพียงพอ ตรวจสอบให้แน่ใจว่า Token มีสิทธิ์อ่านข้อมูลอุปกรณ์';

  @override
  String get errorNetworkUnreachable =>
      'ไม่สามารถเข้าถึง API ได้ ตรวจสอบการเชื่อมต่ออินเทอร์เน็ตและซับโดเมนของคุณ';

  @override
  String get errorNotFound => 'ไม่พบทรัพยากรที่ร้องขอ';

  @override
  String get errorValidation =>
      'คำขอมีข้อมูลที่ไม่ถูกต้อง กรุณาตรวจสอบข้อมูลที่กรอก';

  @override
  String get errorRateLimit => 'คำขอมากเกินไป กรุณารอสักครู่แล้วลองใหม่';

  @override
  String get errorServer => 'เซิร์ฟเวอร์พบข้อผิดพลาด กรุณาลองใหม่ภายหลัง';

  @override
  String get errorUnexpected => 'เกิดข้อผิดพลาดที่ไม่คาดคิด กรุณาลองใหม่';

  @override
  String get retry => 'ลองใหม่';

  @override
  String get cancel => 'ยกเลิก';

  @override
  String get delete => 'ลบ';

  @override
  String get save => 'บันทึก';

  @override
  String get search => 'ค้นหา';

  @override
  String get searchDevices => 'ค้นหาอุปกรณ์...';

  @override
  String get filterAll => 'ทั้งหมด';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Blueprint ทั้งหมด';

  @override
  String loadingDevices(int count) {
    return 'กำลังโหลด $count อุปกรณ์...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count อุปกรณ์',
      zero: 'ไม่มีอุปกรณ์',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'ไม่พบอุปกรณ์';

  @override
  String get noDevicesFoundMessage => 'ลองปรับการค้นหาหรือตัวกรองของคุณ';

  @override
  String lastCheckIn(String time) {
    return 'เช็คอินล่าสุด: $time';
  }

  @override
  String get compliancePass => 'ผ่าน';

  @override
  String get complianceFail => 'ไม่ผ่าน';

  @override
  String get compliancePending => 'รอดำเนินการ';

  @override
  String get deviceDetails => 'รายละเอียดอุปกรณ์';

  @override
  String get serialNumber => 'หมายเลขซีเรียล';

  @override
  String get model => 'รุ่น';

  @override
  String get osVersion => 'เวอร์ชัน OS';

  @override
  String get assetTag => 'แท็กสินทรัพย์';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'ลงทะเบียนแล้ว';

  @override
  String get assignedUser => 'ผู้ใช้ที่กำหนด';

  @override
  String get actions => 'การดำเนินการ';

  @override
  String get actionLock => 'ล็อก';

  @override
  String get actionRestart => 'รีสตาร์ท';

  @override
  String get actionShutdown => 'ปิดเครื่อง';

  @override
  String get actionErase => 'ลบข้อมูล';

  @override
  String get actionBlankPush => 'ส่ง Blank Push';

  @override
  String get actionReinstallAgent => 'ติดตั้ง Agent ใหม่';

  @override
  String get actionUpdateInventory => 'อัปเดตรายการอุปกรณ์';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'เปิดใช้ Remote Desktop';

  @override
  String get actionRemoteDesktopDisable => 'ปิดใช้ Remote Desktop';

  @override
  String get actionLostMode => 'เปิดใช้โหมดสูญหาย';

  @override
  String get destructiveActionTitle =>
      'ยืนยันการดำเนินการที่ไม่สามารถย้อนกลับได้';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'การดำเนินการนี้ไม่สามารถย้อนกลับได้ พิมพ์ \"$deviceName\" เพื่อยืนยัน';
  }

  @override
  String get destructiveActionHint => 'พิมพ์ชื่ออุปกรณ์เพื่อยืนยัน';

  @override
  String get confirm => 'ยืนยัน';

  @override
  String get actionSuccess => 'ดำเนินการสำเร็จ';

  @override
  String get actionFailed => 'ดำเนินการไม่สำเร็จ กรุณาลองใหม่';

  @override
  String get biometricReason => 'ยืนยันตัวตนเพื่อเข้าใช้ FleetPilot';

  @override
  String get biometricReasonSecrets => 'ยืนยันตัวตนเพื่อดูข้อมูลที่เป็นความลับ';

  @override
  String get biometricReasonDestructive => 'ยืนยันตัวตนเพื่อดำเนินการนี้';

  @override
  String get biometricFailed => 'การยืนยันตัวตนล้มเหลว กรุณาลองใหม่';

  @override
  String get profiles => 'โปรไฟล์';

  @override
  String activeProfile(String name) {
    return 'ใช้งานอยู่: $name';
  }

  @override
  String get switchProfile => 'เปลี่ยนโปรไฟล์';

  @override
  String get deleteProfile => 'ลบโปรไฟล์';

  @override
  String get deleteProfileConfirm =>
      'คุณแน่ใจหรือไม่ว่าต้องการลบโปรไฟล์นี้? การดำเนินการนี้ไม่สามารถย้อนกลับได้';

  @override
  String get noProfiles => 'ไม่มีโปรไฟล์ที่กำหนดค่า';

  @override
  String get settings => 'การตั้งค่า';

  @override
  String get about => 'เกี่ยวกับ';

  @override
  String version(String version) {
    return 'เวอร์ชัน $version';
  }

  @override
  String get validationRequired => 'จำเป็นต้องกรอกช่องนี้';

  @override
  String get validationSubdomain =>
      'อนุญาตเฉพาะตัวอักษร ตัวเลข และขีดกลางเท่านั้น ไม่อนุญาตขีดกลางนำหน้าหรือต่อท้าย';

  @override
  String get validationToken =>
      'รูปแบบ Token ไม่ถูกต้อง ต้องมี 20–500 ตัวอักษร เฉพาะตัวอักษรผสมตัวเลขและตัวคั่นทั่วไป';

  @override
  String pinLockedOut(int seconds) {
    return 'พยายามผิดมากเกินไป ลองใหม่ใน $seconds วินาที';
  }

  @override
  String get complianceStatus => 'สถานะความสอดคล้อง';

  @override
  String get platform => 'แพลตฟอร์ม';

  @override
  String get deviceName => 'ชื่ออุปกรณ์';

  @override
  String get searchUsers => 'ค้นหาผู้ใช้...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ผู้ใช้',
      zero: 'ไม่มีผู้ใช้',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'ไม่พบผู้ใช้';

  @override
  String get noUsersFoundMessage => 'ลองปรับการค้นหาหรือตัวกรองของคุณ';

  @override
  String get showArchived => 'แสดงรายการที่เก็บถาวร';

  @override
  String get archived => 'เก็บถาวร';

  @override
  String get email => 'อีเมล';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprint',
      zero: 'ไม่มี Blueprint',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'ไม่พบ Blueprint';

  @override
  String get noBlueprintsFoundMessage => 'ยังไม่มี Blueprint ที่กำหนดค่า';

  @override
  String get enrollmentActive => 'การลงทะเบียนเปิดใช้งาน';

  @override
  String get enrollmentInactive => 'การลงทะเบียนปิดใช้งาน';

  @override
  String get tabOverview => 'ภาพรวม';

  @override
  String get tabApps => 'แอป';

  @override
  String get tabStatus => 'สถานะ';

  @override
  String get tabActivity => 'กิจกรรม';

  @override
  String get tabCommands => 'คำสั่ง';

  @override
  String get hardware => 'ฮาร์ดแวร์';

  @override
  String get security => 'ความปลอดภัย';

  @override
  String get totalStorage => 'พื้นที่จัดเก็บทั้งหมด';

  @override
  String get availableStorage => 'พื้นที่จัดเก็บที่ว่าง';

  @override
  String get totalRam => 'RAM ทั้งหมด';

  @override
  String get wifiMac => 'MAC Address ของ Wi-Fi';

  @override
  String get encryption => 'การเข้ารหัส';

  @override
  String get passcode => 'รหัสผ่าน';

  @override
  String get noAppsFound => 'ไม่พบแอป';

  @override
  String get noActivityFound => 'ไม่พบกิจกรรม';

  @override
  String get noCommandsFound => 'ไม่พบคำสั่ง';

  @override
  String get libraryItems => 'รายการไลบรารี';

  @override
  String get parameters => 'พารามิเตอร์';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'OS Build';

  @override
  String get cellular => 'เซลลูลาร์';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count แอป',
      zero: 'ไม่มีแอป',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'รายละเอียดผู้ใช้';

  @override
  String get jobTitle => 'ตำแหน่งงาน';

  @override
  String get department => 'แผนก';

  @override
  String get createdAt => 'สร้างเมื่อ';

  @override
  String get updatedAt => 'อัปเดตเมื่อ';

  @override
  String get assignedDevices => 'อุปกรณ์ที่กำหนด';

  @override
  String get noAssignedDevices => 'ไม่มีอุปกรณ์ที่กำหนดให้ผู้ใช้นี้';

  @override
  String get userInfo => 'ข้อมูลผู้ใช้';

  @override
  String get navMore => 'เพิ่มเติม';

  @override
  String get tabSecrets => 'ข้อมูลลับ';

  @override
  String get filevaultKey => 'คีย์กู้คืน FileVault';

  @override
  String get unlockPin => 'PIN ปลดล็อก';

  @override
  String get recoveryPassword => 'รหัสผ่าน Recovery Lock';

  @override
  String get bypassCode => 'รหัสข้ามล็อกการเปิดใช้งาน';

  @override
  String get noSecretsFound => 'ไม่มีข้อมูลลับสำหรับอุปกรณ์นี้';

  @override
  String get secretCopied => 'คัดลอกข้อมูลลับไปยังคลิปบอร์ดแล้ว';

  @override
  String get threats => 'ภัยคุกคาม';

  @override
  String get noThreatsFound => 'ไม่พบภัยคุกคาม';

  @override
  String get vulnerabilities => 'ช่องโหว่';

  @override
  String get noVulnerabilitiesFound => 'ไม่พบช่องโหว่';

  @override
  String get aboutApp => 'เกี่ยวกับ FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot เป็นแอปจัดการ MDM แบบโอเพนซอร์สสำหรับกลุ่มอุปกรณ์ Apple';

  @override
  String get tapToCopy => 'แตะเพื่อคัดลอก';

  @override
  String get devices => 'อุปกรณ์';

  @override
  String get severity => 'ระดับความรุนแรง';

  @override
  String get tabLocation => 'ตำแหน่ง';

  @override
  String get locationNotAvailable => 'ไม่มีข้อมูลตำแหน่งสำหรับอุปกรณ์นี้';

  @override
  String get enableLostModeHint => 'เปิดใช้โหมดสูญหายเพื่อติดตามอุปกรณ์นี้';

  @override
  String get lostModeEnabled => 'เปิดใช้โหมดสูญหายแล้ว';

  @override
  String get noLibraryItemsFound => 'ไม่พบรายการไลบรารี';

  @override
  String get licenses => 'ใบอนุญาต';

  @override
  String get lostModeMessage => 'ข้อความโหมดสูญหาย';

  @override
  String get lostModePhone => 'หมายเลขโทรศัพท์';

  @override
  String get lostModeFootnote =>
      'ข้อความและหมายเลขโทรศัพท์ที่แสดงบนอุปกรณ์ (ไม่บังคับ)';

  @override
  String get supervised => 'อยู่ภายใต้การดูแล';

  @override
  String get unsupervised => 'ไม่อยู่ภายใต้การดูแล';

  @override
  String get filterSupervised => 'อยู่ภายใต้การดูแล';

  @override
  String get filterUnsupervised => 'ไม่อยู่ภายใต้การดูแล';

  @override
  String get language => 'ภาษา';

  @override
  String get languageSystem => 'ค่าเริ่มต้นของระบบ';

  @override
  String get actionDisableLostMode => 'ปิดใช้โหมดสูญหาย';

  @override
  String get actionClearPasscode => 'ล้างรหัสผ่าน';

  @override
  String get filterLostMode => 'โหมดสูญหาย';

  @override
  String get lostMode => 'โหมดสูญหาย';

  @override
  String get sectionManagement => 'การจัดการ';

  @override
  String get sectionStatus => 'สถานะ';

  @override
  String get statusMissing => 'สูญหาย';

  @override
  String get statusRemoved => 'ถูกลบ';

  @override
  String get agent => 'Agent';

  @override
  String get identifier => 'ตัวระบุ';

  @override
  String get processor => 'โปรเซสเซอร์';

  @override
  String get hardwareUuid => 'Hardware UUID';

  @override
  String get devicePosture => 'สถานะอุปกรณ์';

  @override
  String get unknownDevice => 'อุปกรณ์ที่ไม่รู้จัก';

  @override
  String get securityAppLock => 'ล็อกแอป';

  @override
  String get securityAppLockDescription =>
      'ตั้งรหัส PIN 6 หลักเพื่อปกป้องแอป สามารถเปิดใช้การยืนยันตัวตนด้วยไบโอเมตริกได้หลังจากตั้ง PIN';

  @override
  String get securityAppLockActive => 'เปิดใช้ล็อกแอปแล้ว';

  @override
  String get securityAppLockInactive => 'ไม่ได้กำหนดค่าล็อกแอป';

  @override
  String get securitySetPin => 'ตั้ง PIN';

  @override
  String get securityChangePin => 'เปลี่ยน PIN';

  @override
  String get securityRemovePin => 'ลบ PIN';

  @override
  String get securityCurrentPin => 'PIN ปัจจุบัน';

  @override
  String get securityNewPin => 'PIN ใหม่';

  @override
  String get securityConfirmPin => 'กรอก PIN อีกครั้งเพื่อยืนยัน';

  @override
  String get securityPinLength => 'PIN ต้องมี 6 หลัก';

  @override
  String get securityPinMismatch => 'PIN ไม่ตรงกัน';

  @override
  String get securityPinWrong => 'PIN ไม่ถูกต้อง';

  @override
  String get securityPinSet => 'ตั้ง PIN แล้ว';

  @override
  String get securityPinChanged => 'เปลี่ยน PIN แล้ว';

  @override
  String get securityPinRemoved => 'ลบ PIN และล็อกแอปแล้ว';

  @override
  String get securityBiometric => 'ไบโอเมตริก';

  @override
  String get securityBiometricDescription =>
      'ใช้ลายนิ้วมือหรือการจดจำใบหน้าเพื่อปลดล็อกแอปแทนการกรอก PIN';

  @override
  String get securityBiometricEnable => 'ปลดล็อกด้วยไบโอเมตริก';

  @override
  String get securityBiometricActive => 'เปิดใช้งาน';

  @override
  String get securityBiometricInactive => 'ปิดใช้งาน';

  @override
  String get securityBiometricUnavailable =>
      'การยืนยันตัวตนด้วยไบโอเมตริกไม่สามารถใช้งานได้บนอุปกรณ์นี้';

  @override
  String get securityNext => 'ถัดไป';

  @override
  String get actionRenewMdm => 'ต่ออายุโปรไฟล์ MDM';

  @override
  String get actionSetName => 'ตั้งชื่ออุปกรณ์';

  @override
  String get actionSetNameHint => 'กรอกชื่ออุปกรณ์ใหม่';

  @override
  String get actionDeleteUser => 'ลบผู้ใช้';

  @override
  String get actionDeleteUserName => 'ชื่อผู้ใช้';

  @override
  String get actionDeleteAllUsers => 'ลบผู้ใช้ทั้งหมด';

  @override
  String get actionForceDeletion => 'บังคับลบ';

  @override
  String get actionUnlockAccount => 'ปลดล็อกบัญชี';

  @override
  String get actionPlayLostModeSound => 'เล่นเสียงโหมดสูญหาย';

  @override
  String get actionUpdateLocation => 'อัปเดตตำแหน่ง';

  @override
  String get erasePin => 'PIN 6 หลัก';

  @override
  String get erasePinHint => 'จำเป็นสำหรับอุปกรณ์พกพา';

  @override
  String get erasePreserveDataPlan => 'คงแผนข้อมูลมือถือไว้';

  @override
  String get eraseDisallowProximitySetup => 'ไม่อนุญาตการตั้งค่าแบบใกล้ชิด';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'ข้อความล็อก (ไม่บังคับ)';

  @override
  String get lockPhone => 'หมายเลขโทรศัพท์';

  @override
  String get restartRebuildKernelCache => 'สร้าง Kernel Cache ใหม่';

  @override
  String get restartNotifyUser => 'แจ้งผู้ใช้';

  @override
  String get actionRemoteDesktop => 'Remote Desktop';

  @override
  String get tabNotes => 'บันทึก';

  @override
  String get noNotesFound => 'ยังไม่มีบันทึก';

  @override
  String get addNote => 'เพิ่มบันทึก';

  @override
  String get editNote => 'แก้ไขบันทึก';

  @override
  String get deleteNote => 'ลบบันทึก';

  @override
  String get deleteNoteConfirm => 'คุณแน่ใจหรือไม่ว่าต้องการลบบันทึกนี้?';

  @override
  String get noteContent => 'เนื้อหาบันทึก';

  @override
  String get noteSaved => 'บันทึกแล้ว';

  @override
  String get noteDeleted => 'ลบบันทึกแล้ว';

  @override
  String get editDevice => 'แก้ไขอุปกรณ์';

  @override
  String get deviceUpdated => 'อัปเดตอุปกรณ์แล้ว';

  @override
  String get deleteDevice => 'ลบอุปกรณ์';

  @override
  String get deleteDeviceConfirm =>
      'อุปกรณ์จะถูกลบออกจาก MDM อย่างถาวร การดำเนินการนี้ไม่สามารถย้อนกลับได้';

  @override
  String get deviceDeleted => 'ลบอุปกรณ์แล้ว';

  @override
  String get cancelLostMode => 'ยกเลิกโหมดสูญหาย';

  @override
  String get cancelLostModeConfirm => 'ยกเลิกคำขอโหมดสูญหายที่รอดำเนินการ?';

  @override
  String get lostModeCancelled => 'ยกเลิกโหมดสูญหายแล้ว';

  @override
  String get tags => 'แท็ก';

  @override
  String get noTags => 'ไม่มีแท็ก';

  @override
  String get addTag => 'เพิ่มแท็ก';

  @override
  String get tagName => 'ชื่อแท็ก';

  @override
  String get manageTags => 'จัดการแท็ก';

  @override
  String get auditLog => 'บันทึกการตรวจสอบ';

  @override
  String get noAuditEvents => 'ไม่พบเหตุการณ์การตรวจสอบ';

  @override
  String get actionDailyCheckIn => 'เช็คอินรายวัน';

  @override
  String get licensing => 'การอนุญาตใช้งาน';

  @override
  String get deviceLimit => 'ขีดจำกัดอุปกรณ์';

  @override
  String get devicesUsed => 'อุปกรณ์ที่ใช้งาน';

  @override
  String get licenseType => 'ประเภทใบอนุญาต';

  @override
  String get appleDevices => 'อุปกรณ์ Apple';

  @override
  String get deleteUser => 'ลบผู้ใช้';

  @override
  String get deleteUserConfirm =>
      'คุณแน่ใจหรือไม่ว่าต้องการลบผู้ใช้นี้? การดำเนินการนี้ไม่สามารถย้อนกลับได้';

  @override
  String get userDeleted => 'ลบผู้ใช้แล้ว';

  @override
  String get createBlueprint => 'สร้าง Blueprint';

  @override
  String get editBlueprint => 'แก้ไข Blueprint';

  @override
  String get deleteBlueprint => 'ลบ Blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'การลบ Blueprint นี้จะยกเลิกการลงทะเบียนอุปกรณ์ทั้งหมดที่กำหนดไว้ การดำเนินการนี้ไม่สามารถย้อนกลับได้';

  @override
  String get blueprintCreated => 'สร้าง Blueprint แล้ว';

  @override
  String get blueprintUpdated => 'อัปเดต Blueprint แล้ว';

  @override
  String get blueprintDeleted => 'ลบ Blueprint แล้ว';

  @override
  String get blueprintName => 'ชื่อ Blueprint';

  @override
  String get blueprintDescription => 'คำอธิบาย';

  @override
  String get enrollmentCode => 'รหัสลงทะเบียน';

  @override
  String get assignLibraryItem => 'กำหนดรายการไลบรารี';

  @override
  String get removeLibraryItem => 'ลบรายการไลบรารี';

  @override
  String get libraryItemAssigned => 'กำหนดรายการไลบรารีแล้ว';

  @override
  String get libraryItemRemoved => 'ลบรายการไลบรารีแล้ว';

  @override
  String get lostModeDetails => 'รายละเอียดโหมดสูญหาย';

  @override
  String get lostModeEnabledBy => 'เปิดใช้โดย';

  @override
  String get lostModeEnabledAt => 'เปิดใช้เมื่อ';

  @override
  String get searchBlueprints => 'ค้นหา Blueprint...';

  @override
  String get searchVulnerabilities => 'ค้นหาช่องโหว่...';

  @override
  String get searchThreats => 'ค้นหาภัยคุกคาม...';

  @override
  String get searchAuditLog => 'ค้นหาบันทึกการตรวจสอบ...';

  @override
  String get filterCritical => 'วิกฤต';

  @override
  String get filterHigh => 'สูง';

  @override
  String get filterMedium => 'ปานกลาง';

  @override
  String get filterLow => 'ต่ำ';

  @override
  String get filterClearAll => 'ล้างทั้งหมด';

  @override
  String get filterTitle => 'ตัวกรอง';

  @override
  String get filterApply => 'ใช้งาน';

  @override
  String get filterPlatform => 'แพลตฟอร์ม';

  @override
  String get filterSupervision => 'การดูแล';

  @override
  String get filterStatus => 'สถานะ';

  @override
  String get adeIntegrations => 'ADE Integrations';

  @override
  String get noAdeIntegrations => 'ไม่พบ ADE Integration';

  @override
  String get adeDevices => 'อุปกรณ์ ADE';

  @override
  String get noAdeDevices => 'ไม่พบอุปกรณ์ ADE';

  @override
  String get tokenExpiry => 'วันหมดอายุ Token';

  @override
  String get tokenValid => 'Token ใช้งานได้';

  @override
  String get tokenExpired => 'Token หมดอายุ';

  @override
  String get orgName => 'องค์กร';

  @override
  String get defaultBlueprint => 'Blueprint เริ่มต้น';

  @override
  String get renewToken => 'ต่ออายุ Token';

  @override
  String get publicKey => 'คีย์สาธารณะ';

  @override
  String get vulnerabilityDetections => 'การตรวจจับช่องโหว่';

  @override
  String get noDetectionsFound => 'ไม่พบการตรวจจับ';

  @override
  String get behavioralDetections => 'การตรวจจับพฤติกรรม';

  @override
  String get noBehavioralDetections => 'ไม่พบการตรวจจับพฤติกรรม';

  @override
  String get searchBehavioralDetections => 'ค้นหาการตรวจจับ...';

  @override
  String get affectedDevices => 'อุปกรณ์ที่ได้รับผลกระทบ';

  @override
  String get noAffectedDevices =>
      'ไม่พบอุปกรณ์ที่ได้รับผลกระทบ อุปกรณ์ที่เคยได้รับผลกระทบอาจถูกลบไปแล้ว';

  @override
  String get affectedSoftware => 'ซอฟต์แวร์ที่ได้รับผลกระทบ';

  @override
  String get blueprintTemplates => 'เทมเพลต Blueprint';

  @override
  String get noTemplatesFound => 'ไม่พบเทมเพลต';

  @override
  String get otaEnrollmentProfile => 'โปรไฟล์การลงทะเบียน OTA';

  @override
  String get libraryItemActivity => 'กิจกรรม';

  @override
  String get libraryItemDeploymentStatus => 'สถานะการปรับใช้';

  @override
  String get noActivityFound2 => 'ไม่พบกิจกรรม';

  @override
  String get noStatusFound => 'ไม่พบสถานะการปรับใช้';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count การตรวจจับ',
      zero: 'ไม่มีการตรวจจับ',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Integration',
      zero: 'ไม่มี Integration',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'รายละเอียดช่องโหว่';

  @override
  String get description => 'คำอธิบาย';

  @override
  String get firstDetected => 'ตรวจพบครั้งแรก';

  @override
  String get lastDetected => 'ตรวจพบล่าสุด';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ซอฟต์แวร์',
      zero: 'ไม่มีซอฟต์แวร์',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'แก้ไข Integration';

  @override
  String get deleteIntegration => 'ลบ Integration';

  @override
  String get deleteIntegrationConfirm =>
      'คุณแน่ใจหรือไม่ว่าต้องการลบ ADE Integration นี้? การดำเนินการนี้ไม่สามารถย้อนกลับได้';

  @override
  String get integrationDeleted => 'ลบ Integration แล้ว';

  @override
  String get integrationUpdated => 'อัปเดต Integration แล้ว';

  @override
  String get defaultBlueprintId => 'ID Blueprint เริ่มต้น';

  @override
  String get phone => 'โทรศัพท์';

  @override
  String get downloadOtaProfile => 'ดาวน์โหลดโปรไฟล์การลงทะเบียน';

  @override
  String get otaProfileCopied => 'คัดลอกโปรไฟล์การลงทะเบียนไปยังคลิปบอร์ดแล้ว';

  @override
  String get noOtaProfile => 'ไม่มีโปรไฟล์การลงทะเบียน';

  @override
  String get createTag => 'สร้างแท็ก';

  @override
  String get editTag => 'แก้ไขแท็ก';

  @override
  String get deleteTag => 'ลบแท็ก';

  @override
  String get deleteTagConfirm => 'คุณแน่ใจหรือไม่ว่าต้องการลบแท็กนี้?';

  @override
  String get tagColor => 'สี';

  @override
  String get tagCreated => 'สร้างแท็กแล้ว';

  @override
  String get tagUpdated => 'อัปเดตแท็กแล้ว';

  @override
  String get tagDeleted => 'ลบแท็กแล้ว';

  @override
  String get noTagsFound => 'ไม่พบแท็ก';

  @override
  String get libraryItemDetail => 'รายการไลบรารี';

  @override
  String get viewActivity => 'ดูกิจกรรม';

  @override
  String get viewStatus => 'ดูสถานะ';

  @override
  String get installations => 'การติดตั้ง';

  @override
  String get createAdeIntegration => 'สร้าง ADE Integration';

  @override
  String get adeCreateDescription =>
      'อัปโหลดไฟล์ Server Token (.p7m) จาก Apple Business Manager เพื่อสร้าง ADE Integration ใหม่';

  @override
  String get selectTokenFile => 'เลือกไฟล์ Token';

  @override
  String tokenFileSelected(String name) {
    return 'ไฟล์ Token: $name';
  }

  @override
  String get noTokenFileSelected => 'ไม่ได้เลือกไฟล์ Token';

  @override
  String get integrationCreated => 'สร้าง Integration แล้ว';

  @override
  String get create => 'สร้าง';

  @override
  String get step1GetPublicKey => 'ขั้นตอนที่ 1: ดาวน์โหลดคีย์สาธารณะ';

  @override
  String get step1Description =>
      'คัดลอกคีย์สาธารณะและอัปโหลดไปยัง Apple Business Manager';

  @override
  String get step2UploadToken => 'ขั้นตอนที่ 2: อัปโหลด Server Token';

  @override
  String get step2Description => 'เลือกไฟล์ Token .p7m ที่ดาวน์โหลดจาก Apple';

  @override
  String get step3Configure => 'ขั้นตอนที่ 3: กำหนดค่า';

  @override
  String get publicKeyCopied => 'คัดลอกคีย์สาธารณะไปยังคลิปบอร์ดแล้ว';

  @override
  String get renewTokenDescription =>
      'อัปโหลดไฟล์ Token .p7m ใหม่เพื่อต่ออายุ Token ของ Integration นี้';

  @override
  String get tokenRenewed => 'ต่ออายุ Token แล้ว';

  @override
  String get aboutLinks => 'ลิงก์';

  @override
  String get aboutWebsite => 'เว็บไซต์';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'ซอร์สโค้ด';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'เทคโนโลยี';

  @override
  String get aboutFramework => 'เฟรมเวิร์ก';

  @override
  String get aboutStateManagement => 'State Management';

  @override
  String get aboutArchitecture => 'สถาปัตยกรรม';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'คลาสข้อมูล';

  @override
  String get aboutNavigationLabel => 'การนำทาง';

  @override
  String get aboutOpenSourceLicenses => 'ใบอนุญาตโอเพนซอร์ส';

  @override
  String get aboutShowHide => 'สลับการแสดงผล';

  @override
  String get editProfileTitle => 'แก้ไขการเชื่อมต่อ';

  @override
  String get editProfileSubtitle =>
      'อัปเดตการตั้งค่าการเชื่อมต่อ Tenant ของคุณ';

  @override
  String get apiTokenHintEdit => 'เว้นว่างเพื่อคง Token เดิม';

  @override
  String get profileUpdated => 'อัปเดตโปรไฟล์แล้ว';

  @override
  String profileSwitched(String name) {
    return 'เปลี่ยนเป็น $name แล้ว';
  }

  @override
  String get securityAutoLock => 'ล็อกอัตโนมัติ';

  @override
  String get securityAutoLockDescription =>
      'ต้องยืนยันตัวตนโดยอัตโนมัติหลังจากแอปอยู่ในพื้นหลัง';

  @override
  String get timeoutImmediately => 'ทันที';

  @override
  String get timeoutSeconds30 => 'หลังจาก 30 วินาที';

  @override
  String get timeoutSeconds60 => 'หลังจาก 1 นาที';

  @override
  String get timeoutSeconds120 => 'หลังจาก 2 นาที';

  @override
  String get timeoutMinutes5 => 'หลังจาก 5 นาที';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'ไม่มี Blueprint';

  @override
  String get presetSaveFilter => 'บันทึกค่าตัวกรอง';

  @override
  String get presetLoad => 'โหลดค่าตัวกรอง';

  @override
  String get presetName => 'ชื่อค่าตัวกรอง';

  @override
  String get presetNameHint => 'เช่น Mac ที่ไม่อยู่ภายใต้การดูแล';

  @override
  String get presetSaved => 'บันทึกค่าตัวกรองแล้ว';

  @override
  String get presetDeleted => 'ลบค่าตัวกรองแล้ว';

  @override
  String presetApplied(String name) {
    return 'ใช้ค่าตัวกรอง \"$name\" แล้ว';
  }

  @override
  String get presetNoPresets => 'ไม่มีค่าตัวกรองที่บันทึก';

  @override
  String get presetNoPresetsMessage =>
      'บันทึกตัวกรองปัจจุบันของคุณเป็นค่าตั้งล่วงหน้าเพื่อเข้าถึงอย่างรวดเร็ว';

  @override
  String get presetDeleteConfirm => 'ลบค่าตัวกรองนี้?';

  @override
  String get presetNameRequired => 'กรุณากรอกชื่อค่าตัวกรอง';

  @override
  String selectedCount(int count) {
    return '$count ที่เลือก';
  }

  @override
  String get selectAll => 'เลือกทั้งหมด';

  @override
  String get deselectAll => 'ยกเลิกการเลือกทั้งหมด';

  @override
  String get bulkActions => 'การดำเนินการ';

  @override
  String bulkActionsTitle(int count) {
    return 'การดำเนินการสำหรับ $count อุปกรณ์';
  }

  @override
  String get bulkActionAssignTag => 'กำหนดแท็ก';

  @override
  String get bulkActionAssignTagDescription =>
      'เพิ่มแท็กให้อุปกรณ์ที่เลือกทั้งหมด';

  @override
  String get bulkActionAssignBlueprint => 'กำหนด Blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'ย้ายอุปกรณ์ที่เลือกไปยัง Blueprint';

  @override
  String get bulkActionLock => 'ล็อกอุปกรณ์';

  @override
  String get bulkActionLockDescription =>
      'ล็อกอุปกรณ์ที่เลือกทั้งหมดจากระยะไกล';

  @override
  String get bulkActionRestart => 'รีสตาร์ทอุปกรณ์';

  @override
  String get bulkActionRestartDescription => 'รีสตาร์ทอุปกรณ์ที่เลือกทั้งหมด';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'คุณต้องการรีสตาร์ท $count อุปกรณ์หรือไม่?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'ดำเนินการกับ $count อุปกรณ์สำเร็จ';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'สำเร็จ $success อุปกรณ์ ล้มเหลว $failed อุปกรณ์';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return 'เสร็จ $completed จาก $total';
  }

  @override
  String get biometricReasonBulkAction => 'ยืนยันตัวตนเพื่อดำเนินการกลุ่ม';

  @override
  String get lockPin => 'PIN ล็อก (ไม่บังคับ)';

  @override
  String get noTagsAvailable => 'ไม่มีแท็กที่ใช้ได้ สร้างแท็กในคอนโซลเว็บ MDM';

  @override
  String get noBlueprintsAvailable => 'ไม่มี Blueprint ที่ใช้ได้';

  @override
  String get selectADevice => 'เลือกอุปกรณ์';

  @override
  String get selectABlueprint => 'เลือก Blueprint';

  @override
  String get clearSearch => 'ล้างการค้นหา';

  @override
  String get refresh => 'รีเฟรช';

  @override
  String get moreActions => 'การดำเนินการเพิ่มเติม';

  @override
  String get close => 'ปิด';

  @override
  String get onboardingSkip => 'ข้าม';

  @override
  String get onboardingNext => 'ถัดไป';

  @override
  String get onboardingGetStarted => 'เริ่มต้นใช้งาน';

  @override
  String get onboardingWelcomeTitle => 'ยินดีต้อนรับสู่ FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'ศูนย์บัญชาการเคลื่อนที่สำหรับจัดการกลุ่มอุปกรณ์ Apple ตรวจสอบ จัดการ และรักษาความปลอดภัยกลุ่มอุปกรณ์ทั้งหมดจากทุกที่';

  @override
  String get onboardingDevicesTitle => 'การจัดการอุปกรณ์';

  @override
  String get onboardingDevicesSubtitle =>
      'มองเห็นและควบคุมอุปกรณ์ทุกเครื่องในกลุ่มอุปกรณ์ของคุณอย่างเต็มที่';

  @override
  String get onboardingDevicesFeature1 =>
      'ดู iPhone, iPad, Mac และ Apple TV ทั้งหมดที่ลงทะเบียนแล้ว';

  @override
  String get onboardingDevicesFeature2 =>
      'ส่งคำสั่งระยะไกล: ล็อก รีสตาร์ท ลบข้อมูล และอื่น ๆ';

  @override
  String get onboardingDevicesFeature3 =>
      'ติดตาม Blueprint แอป และสถานะความสอดคล้อง';

  @override
  String get onboardingSecurityTitle => 'ออกแบบเพื่อความปลอดภัย';

  @override
  String get onboardingSecuritySubtitle =>
      'ข้อมูลกลุ่มอุปกรณ์ของคุณได้รับการปกป้องด้วยหลายชั้นความปลอดภัย';

  @override
  String get onboardingSecurityFeature1 =>
      'ยืนยันตัวตนด้วยไบโอเมตริก Face ID หรือลายนิ้วมือ';

  @override
  String get onboardingSecurityFeature2 => 'ล็อกแอปด้วยรหัส PIN 6 หลัก';

  @override
  String get onboardingSecurityFeature3 => 'ล็อกเซสชันอัตโนมัติเมื่อหมดเวลา';

  @override
  String get onboardingReadyTitle => 'พร้อมเริ่มต้น';

  @override
  String get onboardingReadySubtitle =>
      'เชื่อมต่อ MDM Tenant ของคุณเพื่อเริ่มจัดการกลุ่มอุปกรณ์ Apple ขั้นตอนต่อไปคือตั้งค่าการเชื่อมต่อ API และ PIN ความปลอดภัย';

  @override
  String get searchTags => 'ค้นหาแท็ก';

  @override
  String tagDeviceCount(int count) {
    return '$count อุปกรณ์';
  }

  @override
  String get sortTitle => 'การเรียงลำดับ';

  @override
  String get sortDirection => 'ทิศทางการเรียง';

  @override
  String get ascending => 'จากน้อยไปมาก';

  @override
  String get descending => 'จากมากไปน้อย';

  @override
  String get filterSeverity => 'ระดับความรุนแรง';

  @override
  String get filterSort => 'กรองและเรียงลำดับ';

  @override
  String get statusQuarantined => 'กักกัน';

  @override
  String get statusNotQuarantined => 'ไม่ถูกกักกัน';

  @override
  String get statusDetected => 'ตรวจพบ';

  @override
  String get statusReleased => 'ปล่อยแล้ว';

  @override
  String get severityCritical => 'วิกฤต';

  @override
  String get severityHigh => 'สูง';

  @override
  String get severityMedium => 'ปานกลาง';

  @override
  String get severityLow => 'ต่ำ';

  @override
  String threatCount(int count) {
    return '$count ภัยคุกคาม';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count การตรวจจับ';
  }

  @override
  String get downloadPublicKey => 'ดาวน์โหลด';

  @override
  String get publicKeySaved => 'บันทึกคีย์สาธารณะแล้ว';

  @override
  String get sortBy => 'เรียงตาม';

  @override
  String get sortByCvss => 'คะแนน CVSS';

  @override
  String get sortByDeviceCount => 'อุปกรณ์ที่ได้รับผลกระทบ';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count ช่องโหว่';
  }

  @override
  String get assignTags => 'แท็ก';

  @override
  String get noTagsAvailableMessage => 'ไม่มีแท็กที่ใช้ได้ สร้างแท็กก่อน';

  @override
  String get failedToLoadTags => 'ไม่สามารถโหลดแท็กได้';

  @override
  String get details => 'รายละเอียด';

  @override
  String get searchLibraryItems => 'ค้นหารายการไลบรารี...';

  @override
  String get categoryCustomScript => 'สคริปต์กำหนดเอง';

  @override
  String get categoryCustomApp => 'แอปกำหนดเอง';

  @override
  String get categoryCustomProfile => 'โปรไฟล์กำหนดเอง';

  @override
  String get categoryInHouseApp => 'แอป In-House';

  @override
  String get categoryBuiltIn => 'ในตัว';

  @override
  String get categoryVppApps => 'VPP / แอป App Store';

  @override
  String get categoryManagedProfiles => 'โปรไฟล์ที่จัดการ';

  @override
  String get categoryKandjiSetup => 'การตั้งค่า MDM';

  @override
  String get categoryMacosRelease => 'การอัปเดต macOS';

  @override
  String get categoryThreatPolicy => 'นโยบายความปลอดภัย';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprint',
      one: '1 Blueprint',
    );
    return 'ใน $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'ครั้งเดียว';

  @override
  String get executionFrequencyEvery15Min => 'ทุก 15 นาที';

  @override
  String get executionFrequencyEveryDay => 'ทุกวัน';

  @override
  String get executionFrequencyNoEnforcement => 'ไม่บังคับ';

  @override
  String get scriptBody => 'สคริปต์';

  @override
  String get remediationScript => 'สคริปต์แก้ไข';

  @override
  String get allProperties => 'คุณสมบัติทั้งหมด';

  @override
  String get builtInLibraryItem => 'รายการไลบรารีในตัว';

  @override
  String get builtInDetailsHint => 'ดูรายละเอียดได้ที่แท็บสถานะ';

  @override
  String get active => 'ใช้งานอยู่';

  @override
  String get yes => 'ใช่';

  @override
  String get no => 'ไม่ใช่';

  @override
  String get execution => 'การดำเนินการ';

  @override
  String get restart => 'รีสตาร์ท';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'ประเภทการติดตั้ง';

  @override
  String get enforcement => 'การบังคับ';

  @override
  String get runsOnMac => 'ทำงานบน Mac';

  @override
  String get runsOnIphone => 'ทำงานบน iPhone';

  @override
  String get runsOnIpad => 'ทำงานบน iPad';

  @override
  String get appName => 'ชื่อแอป';

  @override
  String get appVersion => 'เวอร์ชันแอป';

  @override
  String get minOsVersion => 'เวอร์ชัน OS ขั้นต่ำ';

  @override
  String get created => 'สร้างเมื่อ';

  @override
  String get updated => 'อัปเดตเมื่อ';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count รายการ',
      zero: 'ไม่มีรายการ',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'แก้ไขแล้ว';

  @override
  String get severityInformational => 'ข้อมูล';

  @override
  String get managementState => 'สถานะการจัดการ';

  @override
  String get managementStateOpen => 'เปิด';

  @override
  String get managementStateClosed => 'ปิด';

  @override
  String get classificationMalware => 'มัลแวร์';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'น่าสงสัย';

  @override
  String get classificationMal => 'อันตราย';

  @override
  String get blueprintRouting => 'การกำหนดเส้นทาง Blueprint';

  @override
  String get blueprintRoutingDesc =>
      'รหัสลงทะเบียนและการกำหนดเส้นทางสำหรับการลงทะเบียนแบบแมนวล / Android Work Profile';

  @override
  String get blueprintRoutingNotConfigured =>
      'ไม่ได้กำหนดค่าการกำหนดเส้นทาง Blueprint สำหรับ Tenant นี้';

  @override
  String get enrollmentCodeActive => 'เปิดใช้งาน';

  @override
  String get enrollmentCodeInactive => 'ปิดใช้งาน';

  @override
  String get routingActivity => 'กิจกรรมการกำหนดเส้นทาง';

  @override
  String get noRoutingActivity => 'ไม่พบกิจกรรมการกำหนดเส้นทาง';

  @override
  String get selfServiceCategories => 'หมวดหมู่ Self-Service';

  @override
  String get selfServiceDesc =>
      'จัดการหมวดหมู่ Self-Service สำหรับผู้ใช้ของคุณ';

  @override
  String get addCategory => 'เพิ่มหมวดหมู่';

  @override
  String get categoryName => 'ชื่อหมวดหมู่';

  @override
  String get deleteCategory => 'ลบหมวดหมู่';

  @override
  String get deleteCategoryConfirm => 'คุณแน่ใจหรือไม่ว่าต้องการลบหมวดหมู่นี้?';

  @override
  String get noCategoriesFound => 'ไม่พบหมวดหมู่';

  @override
  String get categoryCreated => 'สร้างหมวดหมู่แล้ว';

  @override
  String get categoryDeleted => 'ลบหมวดหมู่แล้ว';

  @override
  String get profileBody => 'โปรไฟล์ XML';

  @override
  String get customProfile => 'โปรไฟล์กำหนดเอง';

  @override
  String get classification => 'การจำแนกประเภท';

  @override
  String get mdmEnabled => 'เปิดใช้ MDM';

  @override
  String get enrolledViaDep => 'ลงทะเบียนผ่าน DEP';

  @override
  String get userApprovedMdm => 'MDM ที่ผู้ใช้อนุมัติ';

  @override
  String get network => 'เครือข่าย';

  @override
  String get ipAddress => 'ที่อยู่ IP';

  @override
  String get wifiNetwork => 'เครือข่าย Wi-Fi';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'ล็อกการเปิดใช้งาน';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'โหมดนักพัฒนา';

  @override
  String get adbEnabled => 'เปิดใช้ ADB';

  @override
  String get unknownSources => 'แหล่งที่ไม่รู้จัก';

  @override
  String get securityPatch => 'แพตช์ความปลอดภัย';

  @override
  String get provisioningUdid => 'Provisioning UDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'ข้อมูล MDM';

  @override
  String get lastEnrollment => 'การลงทะเบียนล่าสุด';

  @override
  String get enterpriseId => 'Enterprise ID';

  @override
  String get manufacturer => 'ผู้ผลิต';

  @override
  String get generalStatus => 'สถานะทั่วไป';

  @override
  String get apiLevel => 'API Level';

  @override
  String get userApprovedEnrollment => 'การลงทะเบียนที่ผู้ใช้อนุมัติ';

  @override
  String get hostname => 'ชื่อโฮสต์';

  @override
  String get macAddress => 'MAC Address';

  @override
  String get publicIp => 'IP สาธารณะ';

  @override
  String get volumes => 'วอลุ่ม';

  @override
  String volumeUsed(String percent) {
    return 'ใช้ไป $percent%';
  }

  @override
  String volumeAvailable(String available, String total) {
    return 'ว่าง $available จาก $total';
  }

  @override
  String get encrypted => 'เข้ารหัสแล้ว';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores คอร์';
  }

  @override
  String processors(String count) {
    return '$count โปรเซสเซอร์';
  }

  @override
  String get batteryLevel => 'ระดับแบตเตอรี่';

  @override
  String get lastUser => 'ผู้ใช้ล่าสุด';

  @override
  String get bootVolume => 'วอลุ่มบูต';

  @override
  String get localUsers => 'ผู้ใช้ในเครื่อง';

  @override
  String get regularUsers => 'ผู้ใช้ทั่วไป';

  @override
  String get systemUsers => 'ผู้ใช้ระบบ';

  @override
  String get admin => 'ผู้ดูแลระบบ';

  @override
  String get assignToBlueprint => 'กำหนดให้ Blueprint';

  @override
  String get installOnDevice => 'ติดตั้งบนอุปกรณ์';

  @override
  String get selectBlueprint => 'เลือก Blueprint';

  @override
  String get selectDevice => 'เลือกอุปกรณ์';

  @override
  String get selfServiceEnabled => 'Self-Service';

  @override
  String get vppLicenses => 'ใบอนุญาต VPP';

  @override
  String get fileName => 'ชื่อไฟล์';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'ล็อกการเปิดใช้งาน';

  @override
  String get prismCategoryApps => 'แอปพลิเคชัน';

  @override
  String get prismCategoryApplicationFirewall => 'ไฟร์วอลล์แอปพลิเคชัน';

  @override
  String get prismCategoryCellular => 'เซลลูลาร์';

  @override
  String get prismCategoryCertificates => 'ใบรับรอง';

  @override
  String get prismCategoryDesktopAndScreensaver => 'เดสก์ท็อปและสกรีนเซฟเวอร์';

  @override
  String get prismCategoryDeviceInformation => 'ข้อมูลอุปกรณ์';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper และ XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'โปรไฟล์ที่ติดตั้ง';

  @override
  String get prismCategoryKernelExtensions => 'Kernel Extensions';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents และ Daemons';

  @override
  String get prismCategoryLocalUsers => 'ผู้ใช้ในเครื่อง';

  @override
  String get prismCategoryStartupSettings => 'การตั้งค่าเริ่มต้น';

  @override
  String get prismCategorySystemExtensions => 'ส่วนขยายระบบ';

  @override
  String get prismCategoryTransparencyDatabase => 'ฐานข้อมูลความโปร่งใส';

  @override
  String prismRecords(int count) {
    return '$count รายการ';
  }

  @override
  String get prismNoData => 'ไม่มีข้อมูลสำหรับหมวดหมู่นี้';

  @override
  String get prismExport => 'ส่งออก CSV';

  @override
  String get prismExportRequested =>
      'ขอส่งออกแล้ว ลิงก์ดาวน์โหลดจะพร้อมใช้งานในไม่ช้า';

  @override
  String get prismFilterByFamily => 'ตระกูลอุปกรณ์';

  @override
  String get prismAllFamilies => 'ทุกตระกูล';

  @override
  String get appearance => 'ลักษณะที่ปรากฏ';

  @override
  String get themeMode => 'ธีม';

  @override
  String get themeModeSystem => 'ระบบ';

  @override
  String get themeModeLight => 'สว่าง';

  @override
  String get themeModeDark => 'มืด';

  @override
  String get shortTypeScript => 'สคริปต์';

  @override
  String get shortTypeCustom => 'กำหนดเอง';

  @override
  String get shortTypeProfile => 'โปรไฟล์';

  @override
  String get shortTypeInHouse => 'In-House';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'จัดการ';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'ความปลอดภัย';

  @override
  String get shortTypeAuto => 'อัตโนมัติ';

  @override
  String get categoryOsUpdates => 'การอัปเดต OS';

  @override
  String get categoryAutoApps => 'แอปอัตโนมัติ';

  @override
  String get autoApp => 'แอปอัตโนมัติ';

  @override
  String get fileSize => 'ขนาดไฟล์';

  @override
  String get unzipLocation => 'ตำแหน่งแตกไฟล์';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'ไฟล์อัปเดตเมื่อ';

  @override
  String get mdmIdentifier => 'MDM Identifier';

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
  String get typeLabel => 'ประเภท';

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
