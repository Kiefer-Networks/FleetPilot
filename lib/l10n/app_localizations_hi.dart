// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Hindi (`hi`).
class AppLocalizationsHi extends AppLocalizations {
  AppLocalizationsHi([String locale = 'hi']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'डिवाइस';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'उपयोगकर्ता';

  @override
  String get navSettings => 'सेटिंग्स';

  @override
  String get welcomeTitle => 'FleetPilot में आपका स्वागत है';

  @override
  String get welcomeSubtitle =>
      'अपने Apple डिवाइस फ्लीट को कहीं से भी प्रबंधित करें।';

  @override
  String get addProfile => 'प्रोफ़ाइल जोड़ें';

  @override
  String get editProfile => 'प्रोफ़ाइल संपादित करें';

  @override
  String get displayName => 'प्रदर्शन नाम';

  @override
  String get displayNameHint => 'जैसे Acme Corp — Prod';

  @override
  String get region => 'क्षेत्र';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'सबडोमेन';

  @override
  String get subdomainHint => 'आपका-टेनेंट';

  @override
  String get apiToken => 'API टोकन';

  @override
  String get apiTokenHint => 'API टोकन यहाँ पेस्ट करें';

  @override
  String urlPreview(String url) {
    return 'API URL: $url';
  }

  @override
  String get verifyAndSave => 'सत्यापित करें और सहेजें';

  @override
  String get verifying => 'कनेक्शन सत्यापित हो रहा है...';

  @override
  String get connectionSuccess => 'कनेक्शन सफलतापूर्वक सत्यापित!';

  @override
  String get errorInvalidToken =>
      'अमान्य API टोकन। कृपया वेब कंसोल में अपना टोकन जाँचें।';

  @override
  String get errorInsufficientPermissions =>
      'अपर्याप्त अनुमतियाँ। सुनिश्चित करें कि टोकन के पास डिवाइस पढ़ने की पहुँच है।';

  @override
  String get errorNetworkUnreachable =>
      'API उपलब्ध नहीं है। अपना इंटरनेट कनेक्शन और सबडोमेन जाँचें।';

  @override
  String get errorNotFound => 'अनुरोधित संसाधन नहीं मिला।';

  @override
  String get errorValidation =>
      'अनुरोध में अमान्य डेटा है। कृपया अपना इनपुट जाँचें।';

  @override
  String get errorRateLimit =>
      'बहुत अधिक अनुरोध। कृपया कुछ देर प्रतीक्षा करें और पुनः प्रयास करें।';

  @override
  String get errorServer =>
      'सर्वर में त्रुटि हुई। कृपया बाद में पुनः प्रयास करें।';

  @override
  String get errorUnexpected =>
      'एक अप्रत्याशित त्रुटि हुई। कृपया पुनः प्रयास करें।';

  @override
  String get retry => 'पुनः प्रयास';

  @override
  String get cancel => 'रद्द करें';

  @override
  String get delete => 'हटाएँ';

  @override
  String get save => 'सहेजें';

  @override
  String get search => 'खोजें';

  @override
  String get searchDevices => 'डिवाइस खोजें...';

  @override
  String get filterAll => 'सभी';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'सभी Blueprints';

  @override
  String loadingDevices(int count) {
    return '$count डिवाइस लोड हो रहे हैं...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count डिवाइस',
      one: '1 डिवाइस',
      zero: 'कोई डिवाइस नहीं',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'कोई डिवाइस नहीं मिला';

  @override
  String get noDevicesFoundMessage => 'अपनी खोज या फ़िल्टर समायोजित करें।';

  @override
  String lastCheckIn(String time) {
    return 'अंतिम चेक-इन: $time';
  }

  @override
  String get compliancePass => 'उत्तीर्ण';

  @override
  String get complianceFail => 'विफल';

  @override
  String get compliancePending => 'लंबित';

  @override
  String get deviceDetails => 'डिवाइस विवरण';

  @override
  String get serialNumber => 'सीरियल नंबर';

  @override
  String get model => 'मॉडल';

  @override
  String get osVersion => 'OS संस्करण';

  @override
  String get assetTag => 'एसेट टैग';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'पंजीकृत';

  @override
  String get assignedUser => 'असाइन किया गया उपयोगकर्ता';

  @override
  String get actions => 'कार्रवाइयाँ';

  @override
  String get actionLock => 'लॉक करें';

  @override
  String get actionRestart => 'रीस्टार्ट करें';

  @override
  String get actionShutdown => 'शट डाउन करें';

  @override
  String get actionErase => 'मिटाएँ';

  @override
  String get actionBlankPush => 'ब्लैंक पुश भेजें';

  @override
  String get actionReinstallAgent => 'एजेंट पुनः इंस्टॉल करें';

  @override
  String get actionUpdateInventory => 'इन्वेंटरी अपडेट करें';

  @override
  String get actionRecoveryLock => 'रिकवरी लॉक';

  @override
  String get actionRemoteDesktopEnable => 'रिमोट डेस्कटॉप सक्षम करें';

  @override
  String get actionRemoteDesktopDisable => 'रिमोट डेस्कटॉप अक्षम करें';

  @override
  String get actionLostMode => 'लॉस्ट मोड सक्रिय करें';

  @override
  String get destructiveActionTitle => 'विनाशकारी कार्रवाई की पुष्टि करें';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'इस कार्रवाई को पूर्ववत नहीं किया जा सकता। पुष्टि के लिए \"$deviceName\" टाइप करें।';
  }

  @override
  String get destructiveActionHint => 'पुष्टि के लिए डिवाइस नाम टाइप करें';

  @override
  String get confirm => 'पुष्टि करें';

  @override
  String get actionSuccess => 'कार्रवाई सफलतापूर्वक निष्पादित।';

  @override
  String get actionFailed => 'कार्रवाई विफल। कृपया पुनः प्रयास करें।';

  @override
  String get biometricReason => 'FleetPilot के लिए प्रमाणित करें';

  @override
  String get biometricReasonSecrets =>
      'संवेदनशील डेटा देखने के लिए प्रमाणित करें';

  @override
  String get biometricReasonDestructive =>
      'इस कार्रवाई को निष्पादित करने के लिए प्रमाणित करें';

  @override
  String get biometricFailed => 'प्रमाणीकरण विफल। कृपया पुनः प्रयास करें।';

  @override
  String get profiles => 'प्रोफ़ाइल';

  @override
  String activeProfile(String name) {
    return 'सक्रिय: $name';
  }

  @override
  String get switchProfile => 'प्रोफ़ाइल बदलें';

  @override
  String get deleteProfile => 'प्रोफ़ाइल हटाएँ';

  @override
  String get deleteProfileConfirm =>
      'क्या आप वाकई इस प्रोफ़ाइल को हटाना चाहते हैं? यह कार्रवाई पूर्ववत नहीं की जा सकती।';

  @override
  String get noProfiles => 'कोई प्रोफ़ाइल कॉन्फ़िगर नहीं';

  @override
  String get settings => 'सेटिंग्स';

  @override
  String get about => 'बारे में';

  @override
  String version(String version) {
    return 'संस्करण $version';
  }

  @override
  String get validationRequired => 'यह फ़ील्ड आवश्यक है।';

  @override
  String get validationSubdomain =>
      'केवल अक्षर, संख्याएँ और हाइफ़न अनुमत। शुरू या अंत में हाइफ़न नहीं।';

  @override
  String get validationToken =>
      'अमान्य टोकन प्रारूप। 20–500 अक्षर, केवल अल्फ़ान्यूमेरिक और सामान्य विभाजक।';

  @override
  String pinLockedOut(int seconds) {
    return 'बहुत अधिक असफल प्रयास। $seconds सेकंड में पुनः प्रयास करें।';
  }

  @override
  String get complianceStatus => 'अनुपालन स्थिति';

  @override
  String get platform => 'प्लेटफ़ॉर्म';

  @override
  String get deviceName => 'डिवाइस नाम';

  @override
  String get searchUsers => 'उपयोगकर्ता खोजें...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count उपयोगकर्ता',
      one: '1 उपयोगकर्ता',
      zero: 'कोई उपयोगकर्ता नहीं',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'कोई उपयोगकर्ता नहीं मिला';

  @override
  String get noUsersFoundMessage => 'अपनी खोज या फ़िल्टर समायोजित करें।';

  @override
  String get showArchived => 'संग्रहित दिखाएँ';

  @override
  String get archived => 'संग्रहित';

  @override
  String get email => 'ईमेल';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprints',
      one: '1 Blueprint',
      zero: 'कोई Blueprint नहीं',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'कोई Blueprint नहीं मिला';

  @override
  String get noBlueprintsFoundMessage =>
      'अभी तक कोई Blueprint कॉन्फ़िगर नहीं किया गया।';

  @override
  String get enrollmentActive => 'पंजीकरण सक्रिय';

  @override
  String get enrollmentInactive => 'पंजीकरण निष्क्रिय';

  @override
  String get tabOverview => 'अवलोकन';

  @override
  String get tabApps => 'ऐप्स';

  @override
  String get tabStatus => 'स्थिति';

  @override
  String get tabActivity => 'गतिविधि';

  @override
  String get tabCommands => 'कमांड';

  @override
  String get hardware => 'हार्डवेयर';

  @override
  String get security => 'सुरक्षा';

  @override
  String get totalStorage => 'कुल स्टोरेज';

  @override
  String get availableStorage => 'उपलब्ध स्टोरेज';

  @override
  String get totalRam => 'कुल RAM';

  @override
  String get wifiMac => 'Wi-Fi MAC पता';

  @override
  String get encryption => 'एन्क्रिप्शन';

  @override
  String get passcode => 'पासकोड';

  @override
  String get noAppsFound => 'कोई ऐप नहीं मिला';

  @override
  String get noActivityFound => 'कोई गतिविधि नहीं मिली';

  @override
  String get noCommandsFound => 'कोई कमांड नहीं मिला';

  @override
  String get libraryItems => 'लाइब्रेरी आइटम';

  @override
  String get parameters => 'पैरामीटर';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'OS बिल्ड';

  @override
  String get cellular => 'सेलुलर';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count ऐप्स',
      one: '1 ऐप',
      zero: 'कोई ऐप नहीं',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'उपयोगकर्ता विवरण';

  @override
  String get jobTitle => 'पद';

  @override
  String get department => 'विभाग';

  @override
  String get createdAt => 'बनाया गया';

  @override
  String get updatedAt => 'अपडेट किया गया';

  @override
  String get assignedDevices => 'असाइन किए गए डिवाइस';

  @override
  String get noAssignedDevices => 'इस उपयोगकर्ता को कोई डिवाइस असाइन नहीं।';

  @override
  String get userInfo => 'उपयोगकर्ता जानकारी';

  @override
  String get navMore => 'अधिक';

  @override
  String get tabSecrets => 'सीक्रेट्स';

  @override
  String get filevaultKey => 'FileVault रिकवरी की';

  @override
  String get unlockPin => 'अनलॉक PIN';

  @override
  String get recoveryPassword => 'रिकवरी लॉक पासवर्ड';

  @override
  String get bypassCode => 'एक्टिवेशन लॉक बायपास कोड';

  @override
  String get noSecretsFound => 'इस डिवाइस के लिए कोई सीक्रेट उपलब्ध नहीं।';

  @override
  String get secretCopied => 'सीक्रेट क्लिपबोर्ड पर कॉपी किया गया';

  @override
  String get threats => 'खतरे';

  @override
  String get noThreatsFound => 'कोई खतरा नहीं पाया गया।';

  @override
  String get vulnerabilities => 'भेद्यताएँ';

  @override
  String get noVulnerabilitiesFound => 'कोई भेद्यता नहीं पाई गई।';

  @override
  String get aboutApp => 'FleetPilot के बारे में';

  @override
  String get aboutDescription =>
      'FleetPilot Apple डिवाइस फ्लीट के लिए एक ओपन-सोर्स MDM प्रबंधन ऐप है।';

  @override
  String get tapToCopy => 'कॉपी करने के लिए टैप करें';

  @override
  String get devices => 'डिवाइस';

  @override
  String get severity => 'गंभीरता';

  @override
  String get tabLocation => 'स्थान';

  @override
  String get locationNotAvailable =>
      'इस डिवाइस के लिए स्थान डेटा उपलब्ध नहीं है।';

  @override
  String get enableLostModeHint =>
      'इस डिवाइस का पता लगाने के लिए लॉस्ट मोड सक्रिय करें।';

  @override
  String get lostModeEnabled => 'लॉस्ट मोड सक्रिय';

  @override
  String get noLibraryItemsFound => 'कोई लाइब्रेरी आइटम नहीं मिला।';

  @override
  String get licenses => 'लाइसेंस';

  @override
  String get lostModeMessage => 'लॉस्ट मोड संदेश';

  @override
  String get lostModePhone => 'फ़ोन नंबर';

  @override
  String get lostModeFootnote =>
      'डिवाइस पर दिखाया गया वैकल्पिक संदेश और फ़ोन नंबर';

  @override
  String get supervised => 'पर्यवेक्षित';

  @override
  String get unsupervised => 'अपर्यवेक्षित';

  @override
  String get filterSupervised => 'पर्यवेक्षित';

  @override
  String get filterUnsupervised => 'अपर्यवेक्षित';

  @override
  String get language => 'भाषा';

  @override
  String get languageSystem => 'सिस्टम डिफ़ॉल्ट';

  @override
  String get actionDisableLostMode => 'लॉस्ट मोड निष्क्रिय करें';

  @override
  String get actionClearPasscode => 'पासकोड मिटाएँ';

  @override
  String get filterLostMode => 'लॉस्ट मोड';

  @override
  String get lostMode => 'लॉस्ट मोड';

  @override
  String get sectionManagement => 'प्रबंधन';

  @override
  String get sectionStatus => 'स्थिति';

  @override
  String get statusMissing => 'गायब';

  @override
  String get statusRemoved => 'हटाया गया';

  @override
  String get agent => 'एजेंट';

  @override
  String get identifier => 'पहचानकर्ता';

  @override
  String get processor => 'प्रोसेसर';

  @override
  String get hardwareUuid => 'हार्डवेयर UUID';

  @override
  String get devicePosture => 'डिवाइस स्थिति';

  @override
  String get unknownDevice => 'अज्ञात डिवाइस';

  @override
  String get securityAppLock => 'ऐप लॉक';

  @override
  String get securityAppLockDescription =>
      'ऐप की सुरक्षा के लिए 6-अंकीय PIN सेट करें। PIN सेट करने के बाद बायोमेट्रिक प्रमाणीकरण सक्षम किया जा सकता है।';

  @override
  String get securityAppLockActive => 'ऐप लॉक सक्रिय';

  @override
  String get securityAppLockInactive => 'कोई ऐप लॉक कॉन्फ़िगर नहीं';

  @override
  String get securitySetPin => 'PIN सेट करें';

  @override
  String get securityChangePin => 'PIN बदलें';

  @override
  String get securityRemovePin => 'PIN हटाएँ';

  @override
  String get securityCurrentPin => 'वर्तमान PIN';

  @override
  String get securityNewPin => 'नई PIN';

  @override
  String get securityConfirmPin => 'पुष्टि के लिए PIN दोबारा दर्ज करें।';

  @override
  String get securityPinLength => 'PIN 6 अंकों का होना चाहिए।';

  @override
  String get securityPinMismatch => 'PIN मेल नहीं खाते।';

  @override
  String get securityPinWrong => 'गलत PIN।';

  @override
  String get securityPinSet => 'PIN सेट कर दी गई।';

  @override
  String get securityPinChanged => 'PIN बदल दी गई।';

  @override
  String get securityPinRemoved => 'PIN और ऐप लॉक हटा दिए गए।';

  @override
  String get securityBiometric => 'बायोमेट्रिक';

  @override
  String get securityBiometricDescription =>
      'PIN के बजाय ऐप अनलॉक करने के लिए फिंगरप्रिंट या फेस रिकग्निशन का उपयोग करें।';

  @override
  String get securityBiometricEnable => 'बायोमेट्रिक अनलॉक';

  @override
  String get securityBiometricActive => 'सक्रिय';

  @override
  String get securityBiometricInactive => 'निष्क्रिय';

  @override
  String get securityBiometricUnavailable =>
      'इस डिवाइस पर बायोमेट्रिक प्रमाणीकरण उपलब्ध नहीं है।';

  @override
  String get securityNext => 'आगे';

  @override
  String get actionRenewMdm => 'MDM प्रोफ़ाइल नवीनीकरण';

  @override
  String get actionSetName => 'डिवाइस नाम सेट करें';

  @override
  String get actionSetNameHint => 'नया डिवाइस नाम दर्ज करें';

  @override
  String get actionDeleteUser => 'उपयोगकर्ता हटाएँ';

  @override
  String get actionDeleteUserName => 'उपयोगकर्ता नाम';

  @override
  String get actionDeleteAllUsers => 'सभी उपयोगकर्ता हटाएँ';

  @override
  String get actionForceDeletion => 'जबरन हटाएँ';

  @override
  String get actionUnlockAccount => 'खाता अनलॉक करें';

  @override
  String get actionPlayLostModeSound => 'लॉस्ट मोड ध्वनि बजाएँ';

  @override
  String get actionUpdateLocation => 'स्थान अपडेट करें';

  @override
  String get erasePin => '6-अंकीय PIN';

  @override
  String get erasePinHint => 'मोबाइल डिवाइस के लिए आवश्यक';

  @override
  String get erasePreserveDataPlan => 'डेटा प्लान संरक्षित रखें';

  @override
  String get eraseDisallowProximitySetup => 'प्रॉक्सिमिटी सेटअप अक्षम करें';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'लॉक संदेश';

  @override
  String get lockPhone => 'फ़ोन नंबर';

  @override
  String get restartRebuildKernelCache => 'कर्नल कैश पुनर्निर्माण';

  @override
  String get restartNotifyUser => 'उपयोगकर्ता को सूचित करें';

  @override
  String get actionRemoteDesktop => 'रिमोट डेस्कटॉप';

  @override
  String get tabNotes => 'नोट्स';

  @override
  String get noNotesFound => 'अभी तक कोई नोट नहीं';

  @override
  String get addNote => 'नोट जोड़ें';

  @override
  String get editNote => 'नोट संपादित करें';

  @override
  String get deleteNote => 'नोट हटाएँ';

  @override
  String get deleteNoteConfirm => 'क्या आप वाकई इस नोट को हटाना चाहते हैं?';

  @override
  String get noteContent => 'नोट सामग्री';

  @override
  String get noteSaved => 'नोट सहेजा गया।';

  @override
  String get noteDeleted => 'नोट हटा दिया गया।';

  @override
  String get editDevice => 'डिवाइस संपादित करें';

  @override
  String get deviceUpdated => 'डिवाइस अपडेट किया गया।';

  @override
  String get deleteDevice => 'डिवाइस हटाएँ';

  @override
  String get deleteDeviceConfirm =>
      'डिवाइस स्थायी रूप से MDM से हटा दिया जाएगा। यह कार्रवाई पूर्ववत नहीं की जा सकती।';

  @override
  String get deviceDeleted => 'डिवाइस हटा दिया गया।';

  @override
  String get cancelLostMode => 'लॉस्ट मोड रद्द करें';

  @override
  String get cancelLostModeConfirm => 'लंबित लॉस्ट मोड अनुरोध रद्द करें?';

  @override
  String get lostModeCancelled => 'लॉस्ट मोड रद्द किया गया।';

  @override
  String get tags => 'टैग';

  @override
  String get noTags => 'कोई टैग नहीं';

  @override
  String get addTag => 'टैग जोड़ें';

  @override
  String get tagName => 'टैग नाम';

  @override
  String get manageTags => 'टैग प्रबंधित करें';

  @override
  String get auditLog => 'ऑडिट लॉग';

  @override
  String get noAuditEvents => 'कोई ऑडिट इवेंट नहीं मिला';

  @override
  String get actionDailyCheckIn => 'दैनिक चेक-इन';

  @override
  String get licensing => 'लाइसेंसिंग';

  @override
  String get deviceLimit => 'डिवाइस सीमा';

  @override
  String get devicesUsed => 'उपयोग किए गए डिवाइस';

  @override
  String get licenseType => 'लाइसेंस प्रकार';

  @override
  String get appleDevices => 'Apple डिवाइस';

  @override
  String get deleteUser => 'उपयोगकर्ता हटाएँ';

  @override
  String get deleteUserConfirm =>
      'क्या आप वाकई इस उपयोगकर्ता को हटाना चाहते हैं? यह कार्रवाई पूर्ववत नहीं की जा सकती।';

  @override
  String get userDeleted => 'उपयोगकर्ता हटा दिया गया।';

  @override
  String get createBlueprint => 'Blueprint बनाएँ';

  @override
  String get editBlueprint => 'Blueprint संपादित करें';

  @override
  String get deleteBlueprint => 'Blueprint हटाएँ';

  @override
  String get deleteBlueprintConfirm =>
      'इस Blueprint को हटाने से सभी असाइन किए गए डिवाइस अनरजिस्टर हो जाएँगे। यह कार्रवाई पूर्ववत नहीं की जा सकती।';

  @override
  String get blueprintCreated => 'Blueprint बनाया गया।';

  @override
  String get blueprintUpdated => 'Blueprint अपडेट किया गया।';

  @override
  String get blueprintDeleted => 'Blueprint हटा दिया गया।';

  @override
  String get blueprintName => 'Blueprint नाम';

  @override
  String get blueprintDescription => 'विवरण';

  @override
  String get enrollmentCode => 'पंजीकरण कोड';

  @override
  String get assignLibraryItem => 'लाइब्रेरी आइटम असाइन करें';

  @override
  String get removeLibraryItem => 'लाइब्रेरी आइटम हटाएँ';

  @override
  String get libraryItemAssigned => 'लाइब्रेरी आइटम असाइन किया गया।';

  @override
  String get libraryItemRemoved => 'लाइब्रेरी आइटम हटा दिया गया।';

  @override
  String get lostModeDetails => 'लॉस्ट मोड विवरण';

  @override
  String get lostModeEnabledBy => 'द्वारा सक्रिय';

  @override
  String get lostModeEnabledAt => 'सक्रिय किया गया';

  @override
  String get searchBlueprints => 'Blueprints खोजें...';

  @override
  String get searchVulnerabilities => 'भेद्यताएँ खोजें...';

  @override
  String get searchThreats => 'खतरे खोजें...';

  @override
  String get searchAuditLog => 'ऑडिट लॉग खोजें...';

  @override
  String get filterCritical => 'गंभीर';

  @override
  String get filterHigh => 'उच्च';

  @override
  String get filterMedium => 'मध्यम';

  @override
  String get filterLow => 'निम्न';

  @override
  String get filterClearAll => 'सभी हटाएँ';

  @override
  String get filterTitle => 'फ़िल्टर';

  @override
  String get filterApply => 'लागू करें';

  @override
  String get filterPlatform => 'प्लेटफ़ॉर्म';

  @override
  String get filterSupervision => 'पर्यवेक्षण';

  @override
  String get filterStatus => 'स्थिति';

  @override
  String get adeIntegrations => 'ADE इंटीग्रेशन';

  @override
  String get noAdeIntegrations => 'कोई ADE इंटीग्रेशन नहीं मिला।';

  @override
  String get adeDevices => 'ADE डिवाइस';

  @override
  String get noAdeDevices => 'कोई ADE डिवाइस नहीं मिला।';

  @override
  String get tokenExpiry => 'टोकन समाप्ति';

  @override
  String get tokenValid => 'टोकन मान्य';

  @override
  String get tokenExpired => 'टोकन समाप्त';

  @override
  String get orgName => 'संगठन';

  @override
  String get defaultBlueprint => 'डिफ़ॉल्ट Blueprint';

  @override
  String get renewToken => 'टोकन नवीनीकरण';

  @override
  String get publicKey => 'सार्वजनिक कुंजी';

  @override
  String get vulnerabilityDetections => 'भेद्यता पहचान';

  @override
  String get noDetectionsFound => 'कोई पहचान नहीं मिली।';

  @override
  String get behavioralDetections => 'व्यवहार पहचान';

  @override
  String get noBehavioralDetections => 'कोई व्यवहार पहचान नहीं मिली।';

  @override
  String get searchBehavioralDetections => 'पहचान खोजें...';

  @override
  String get affectedDevices => 'प्रभावित डिवाइस';

  @override
  String get noAffectedDevices =>
      'कोई प्रभावित डिवाइस नहीं मिला। पहले प्रभावित डिवाइस हटाए जा चुके हो सकते हैं।';

  @override
  String get affectedSoftware => 'प्रभावित सॉफ़्टवेयर';

  @override
  String get blueprintTemplates => 'Blueprint टेम्पलेट';

  @override
  String get noTemplatesFound => 'कोई टेम्पलेट नहीं मिला।';

  @override
  String get otaEnrollmentProfile => 'OTA पंजीकरण प्रोफ़ाइल';

  @override
  String get libraryItemActivity => 'गतिविधि';

  @override
  String get libraryItemDeploymentStatus => 'परिनियोजन स्थिति';

  @override
  String get noActivityFound2 => 'कोई गतिविधि नहीं मिली।';

  @override
  String get noStatusFound => 'कोई परिनियोजन स्थिति नहीं मिली।';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count पहचान',
      one: '1 पहचान',
      zero: 'कोई पहचान नहीं',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count इंटीग्रेशन',
      one: '1 इंटीग्रेशन',
      zero: 'कोई इंटीग्रेशन नहीं',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'भेद्यता विवरण';

  @override
  String get description => 'विवरण';

  @override
  String get firstDetected => 'पहली पहचान';

  @override
  String get lastDetected => 'अंतिम पहचान';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count सॉफ़्टवेयर',
      one: '1 सॉफ़्टवेयर',
      zero: 'कोई सॉफ़्टवेयर नहीं',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'इंटीग्रेशन संपादित करें';

  @override
  String get deleteIntegration => 'इंटीग्रेशन हटाएँ';

  @override
  String get deleteIntegrationConfirm =>
      'क्या आप वाकई इस ADE इंटीग्रेशन को हटाना चाहते हैं? यह पूर्ववत नहीं किया जा सकता।';

  @override
  String get integrationDeleted => 'इंटीग्रेशन हटा दिया गया।';

  @override
  String get integrationUpdated => 'इंटीग्रेशन अपडेट किया गया।';

  @override
  String get defaultBlueprintId => 'डिफ़ॉल्ट Blueprint ID';

  @override
  String get phone => 'फ़ोन';

  @override
  String get downloadOtaProfile => 'पंजीकरण प्रोफ़ाइल डाउनलोड करें';

  @override
  String get otaProfileCopied => 'पंजीकरण प्रोफ़ाइल क्लिपबोर्ड पर कॉपी की गई।';

  @override
  String get noOtaProfile => 'कोई पंजीकरण प्रोफ़ाइल उपलब्ध नहीं।';

  @override
  String get createTag => 'टैग बनाएँ';

  @override
  String get editTag => 'टैग संपादित करें';

  @override
  String get deleteTag => 'टैग हटाएँ';

  @override
  String get deleteTagConfirm => 'क्या आप वाकई इस टैग को हटाना चाहते हैं?';

  @override
  String get tagColor => 'रंग';

  @override
  String get tagCreated => 'टैग बनाया गया।';

  @override
  String get tagUpdated => 'टैग अपडेट किया गया।';

  @override
  String get tagDeleted => 'टैग हटा दिया गया।';

  @override
  String get noTagsFound => 'कोई टैग नहीं मिला।';

  @override
  String get libraryItemDetail => 'लाइब्रेरी आइटम';

  @override
  String get viewActivity => 'गतिविधि देखें';

  @override
  String get viewStatus => 'स्थिति देखें';

  @override
  String get installations => 'इंस्टॉलेशन';

  @override
  String get createAdeIntegration => 'ADE इंटीग्रेशन बनाएँ';

  @override
  String get adeCreateDescription =>
      'नई ADE इंटीग्रेशन बनाने के लिए Apple Business Manager से सर्वर टोकन फ़ाइल (.p7m) अपलोड करें।';

  @override
  String get selectTokenFile => 'टोकन फ़ाइल चुनें';

  @override
  String tokenFileSelected(String name) {
    return 'टोकन फ़ाइल: $name';
  }

  @override
  String get noTokenFileSelected => 'कोई टोकन फ़ाइल नहीं चुनी गई';

  @override
  String get integrationCreated => 'इंटीग्रेशन बनाया गया।';

  @override
  String get create => 'बनाएँ';

  @override
  String get step1GetPublicKey => 'चरण 1: सार्वजनिक कुंजी डाउनलोड करें';

  @override
  String get step1Description =>
      'सार्वजनिक कुंजी कॉपी करें और Apple Business Manager में अपलोड करें।';

  @override
  String get step2UploadToken => 'चरण 2: सर्वर टोकन अपलोड करें';

  @override
  String get step2Description =>
      'Apple से डाउनलोड की गई .p7m टोकन फ़ाइल चुनें।';

  @override
  String get step3Configure => 'चरण 3: कॉन्फ़िगर करें';

  @override
  String get publicKeyCopied => 'सार्वजनिक कुंजी क्लिपबोर्ड पर कॉपी की गई।';

  @override
  String get renewTokenDescription =>
      'इस इंटीग्रेशन का टोकन नवीनीकृत करने के लिए नई .p7m टोकन फ़ाइल अपलोड करें।';

  @override
  String get tokenRenewed => 'टोकन नवीनीकृत किया गया।';

  @override
  String get aboutLinks => 'लिंक';

  @override
  String get aboutWebsite => 'वेबसाइट';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'सोर्स कोड';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'प्रौद्योगिकी';

  @override
  String get aboutFramework => 'फ़्रेमवर्क';

  @override
  String get aboutStateManagement => 'स्टेट मैनेजमेंट';

  @override
  String get aboutArchitecture => 'आर्किटेक्चर';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'डेटा क्लासेस';

  @override
  String get aboutNavigationLabel => 'नेविगेशन';

  @override
  String get aboutOpenSourceLicenses => 'ओपन सोर्स लाइसेंस';

  @override
  String get aboutShowHide => 'दृश्यता टॉगल करें';

  @override
  String get editProfileTitle => 'कनेक्शन संपादित करें';

  @override
  String get editProfileSubtitle => 'अपनी टेनेंट कनेक्शन सेटिंग्स अपडेट करें।';

  @override
  String get apiTokenHintEdit => 'मौजूदा टोकन रखने के लिए खाली छोड़ें';

  @override
  String get profileUpdated => 'प्रोफ़ाइल अपडेट की गई।';

  @override
  String profileSwitched(String name) {
    return '$name पर स्विच किया गया।';
  }

  @override
  String get securityAutoLock => 'स्वचालित लॉक';

  @override
  String get securityAutoLockDescription =>
      'ऐप बैकग्राउंड में जाने के बाद स्वचालित रूप से प्रमाणीकरण आवश्यक करें।';

  @override
  String get timeoutImmediately => 'तुरंत';

  @override
  String get timeoutSeconds30 => '30 सेकंड बाद';

  @override
  String get timeoutSeconds60 => '1 मिनट बाद';

  @override
  String get timeoutSeconds120 => '2 मिनट बाद';

  @override
  String get timeoutMinutes5 => '5 मिनट बाद';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'कोई Blueprint नहीं';

  @override
  String get presetSaveFilter => 'फ़िल्टर प्रीसेट सहेजें';

  @override
  String get presetLoad => 'प्रीसेट लोड करें';

  @override
  String get presetName => 'प्रीसेट नाम';

  @override
  String get presetNameHint => 'जैसे अपर्यवेक्षित Macs';

  @override
  String get presetSaved => 'फ़िल्टर प्रीसेट सहेजा गया।';

  @override
  String get presetDeleted => 'फ़िल्टर प्रीसेट हटा दिया गया।';

  @override
  String presetApplied(String name) {
    return 'प्रीसेट \"$name\" लागू किया गया।';
  }

  @override
  String get presetNoPresets => 'कोई सहेजे गए प्रीसेट नहीं';

  @override
  String get presetNoPresetsMessage =>
      'त्वरित पहुँच के लिए अपने वर्तमान फ़िल्टर प्रीसेट के रूप में सहेजें।';

  @override
  String get presetDeleteConfirm => 'यह प्रीसेट हटाएँ?';

  @override
  String get presetNameRequired => 'कृपया प्रीसेट के लिए एक नाम दर्ज करें।';

  @override
  String selectedCount(int count) {
    return '$count चयनित';
  }

  @override
  String get selectAll => 'सभी चुनें';

  @override
  String get deselectAll => 'सभी अचयनित करें';

  @override
  String get bulkActions => 'कार्रवाइयाँ';

  @override
  String bulkActionsTitle(int count) {
    return '$count डिवाइस के लिए कार्रवाइयाँ';
  }

  @override
  String get bulkActionAssignTag => 'टैग असाइन करें';

  @override
  String get bulkActionAssignTagDescription =>
      'सभी चयनित डिवाइस में टैग जोड़ें';

  @override
  String get bulkActionAssignBlueprint => 'Blueprint असाइन करें';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'चयनित डिवाइस को Blueprint में ले जाएँ';

  @override
  String get bulkActionLock => 'डिवाइस लॉक करें';

  @override
  String get bulkActionLockDescription =>
      'सभी चयनित डिवाइस को दूरस्थ रूप से लॉक करें';

  @override
  String get bulkActionRestart => 'डिवाइस रीस्टार्ट करें';

  @override
  String get bulkActionRestartDescription => 'सभी चयनित डिवाइस रीस्टार्ट करें';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'क्या आप वाकई $count डिवाइस रीस्टार्ट करना चाहते हैं?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'कार्रवाई $count डिवाइस पर सफलतापूर्वक पूर्ण।';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return '$success डिवाइस पर पूर्ण, $failed विफल।';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed में से $total पूर्ण';
  }

  @override
  String get biometricReasonBulkAction =>
      'बल्क कार्रवाई निष्पादित करने के लिए प्रमाणित करें';

  @override
  String get lockPin => 'लॉक PIN (वैकल्पिक)';

  @override
  String get noTagsAvailable =>
      'कोई टैग उपलब्ध नहीं। MDM वेब कंसोल में टैग बनाएँ।';

  @override
  String get noBlueprintsAvailable => 'कोई Blueprint उपलब्ध नहीं।';

  @override
  String get selectADevice => 'डिवाइस चुनें';

  @override
  String get selectABlueprint => 'Blueprint चुनें';

  @override
  String get clearSearch => 'खोज हटाएँ';

  @override
  String get refresh => 'रीफ़्रेश';

  @override
  String get moreActions => 'अधिक कार्रवाइयाँ';

  @override
  String get close => 'बंद करें';

  @override
  String get onboardingSkip => 'छोड़ें';

  @override
  String get onboardingNext => 'आगे';

  @override
  String get onboardingGetStarted => 'शुरू करें';

  @override
  String get onboardingWelcomeTitle => 'FleetPilot में आपका स्वागत है';

  @override
  String get onboardingWelcomeSubtitle =>
      'Apple डिवाइस फ्लीट प्रबंधन के लिए आपका मोबाइल कमांड सेंटर। अपने पूरे फ्लीट को कहीं से भी मॉनिटर, प्रबंधित और सुरक्षित करें।';

  @override
  String get onboardingDevicesTitle => 'डिवाइस प्रबंधन';

  @override
  String get onboardingDevicesSubtitle =>
      'आपके फ्लीट में हर डिवाइस पर पूर्ण पारदर्शिता और नियंत्रण।';

  @override
  String get onboardingDevicesFeature1 =>
      'सभी पंजीकृत iPhones, iPads, Macs और Apple TVs देखें';

  @override
  String get onboardingDevicesFeature2 =>
      'रिमोट कमांड भेजें: लॉक, रीस्टार्ट, मिटाएँ और अधिक';

  @override
  String get onboardingDevicesFeature3 =>
      'Blueprints, ऐप्स और अनुपालन स्थिति ट्रैक करें';

  @override
  String get onboardingSecurityTitle => 'सुरक्षा के लिए निर्मित';

  @override
  String get onboardingSecuritySubtitle =>
      'आपका फ्लीट डेटा कई सुरक्षा परतों से सुरक्षित रहता है।';

  @override
  String get onboardingSecurityFeature1 =>
      'Face ID या फिंगरप्रिंट द्वारा बायोमेट्रिक प्रमाणीकरण';

  @override
  String get onboardingSecurityFeature2 => 'ऐप एक्सेस के लिए 6-अंकीय PIN लॉक';

  @override
  String get onboardingSecurityFeature3 => 'समय समाप्ति पर स्वचालित सत्र लॉक';

  @override
  String get onboardingReadyTitle => 'शुरू करने के लिए तैयार';

  @override
  String get onboardingReadySubtitle =>
      'अपने Apple डिवाइस फ्लीट का प्रबंधन शुरू करने के लिए अपना MDM टेनेंट कनेक्ट करें। अगले चरण में अपना API कनेक्शन और सुरक्षा PIN सेट करें।';

  @override
  String get searchTags => 'टैग खोजें';

  @override
  String tagDeviceCount(int count) {
    return '$count डिवाइस';
  }

  @override
  String get sortTitle => 'क्रमबद्ध';

  @override
  String get sortDirection => 'क्रम दिशा';

  @override
  String get ascending => 'आरोही';

  @override
  String get descending => 'अवरोही';

  @override
  String get filterSeverity => 'गंभीरता';

  @override
  String get filterSort => 'फ़िल्टर और क्रमबद्ध';

  @override
  String get statusQuarantined => 'क्वारंटाइन';

  @override
  String get statusNotQuarantined => 'गैर-पृथक';

  @override
  String get statusDetected => 'पहचाना गया';

  @override
  String get statusReleased => 'मुक्त';

  @override
  String get severityCritical => 'गंभीर';

  @override
  String get severityHigh => 'उच्च';

  @override
  String get severityMedium => 'मध्यम';

  @override
  String get severityLow => 'निम्न';

  @override
  String threatCount(int count) {
    return '$count खतरे';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count पहचान';
  }

  @override
  String get downloadPublicKey => 'डाउनलोड करें';

  @override
  String get publicKeySaved => 'सार्वजनिक कुंजी सहेजी गई';

  @override
  String get sortBy => 'क्रमबद्ध करें';

  @override
  String get sortByCvss => 'CVSS स्कोर';

  @override
  String get sortByDeviceCount => 'प्रभावित डिवाइस';

  @override
  String get sortByCveId => 'CVE-ID';

  @override
  String vulnCount(int count) {
    return '$count भेद्यताएँ';
  }

  @override
  String get assignTags => 'टैग';

  @override
  String get noTagsAvailableMessage => 'कोई टैग उपलब्ध नहीं। पहले टैग बनाएँ।';

  @override
  String get failedToLoadTags => 'टैग लोड नहीं हो सके';

  @override
  String get details => 'विवरण';

  @override
  String get searchLibraryItems => 'लाइब्रेरी आइटम खोजें...';

  @override
  String get categoryCustomScript => 'कस्टम स्क्रिप्ट';

  @override
  String get categoryCustomApp => 'कस्टम ऐप';

  @override
  String get categoryCustomProfile => 'कस्टम प्रोफ़ाइल';

  @override
  String get categoryInHouseApp => 'इन-हाउस ऐप';

  @override
  String get categoryBuiltIn => 'बिल्ट-इन';

  @override
  String get categoryVppApps => 'VPP / App Store ऐप्स';

  @override
  String get categoryManagedProfiles => 'प्रबंधित प्रोफ़ाइल';

  @override
  String get categoryKandjiSetup => 'MDM सेटअप';

  @override
  String get categoryMacosRelease => 'macOS अपडेट';

  @override
  String get categoryThreatPolicy => 'सुरक्षा नीतियाँ';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count Blueprints में',
      one: '1 Blueprint में',
    );
    return '$_temp0';
  }

  @override
  String get executionFrequencyOnce => 'एक बार';

  @override
  String get executionFrequencyEvery15Min => 'हर 15 मिनट';

  @override
  String get executionFrequencyEveryDay => 'प्रतिदिन';

  @override
  String get executionFrequencyNoEnforcement => 'कोई प्रवर्तन नहीं';

  @override
  String get scriptBody => 'स्क्रिप्ट';

  @override
  String get remediationScript => 'सुधार स्क्रिप्ट';

  @override
  String get allProperties => 'सभी गुण';

  @override
  String get builtInLibraryItem => 'बिल्ट-इन लाइब्रेरी आइटम';

  @override
  String get builtInDetailsHint => 'विवरण स्थिति टैब पर उपलब्ध';

  @override
  String get active => 'सक्रिय';

  @override
  String get yes => 'हाँ';

  @override
  String get no => 'नहीं';

  @override
  String get execution => 'निष्पादन';

  @override
  String get restart => 'रीस्टार्ट';

  @override
  String get selfService => 'सेल्फ़ सर्विस';

  @override
  String get installType => 'इंस्टॉल प्रकार';

  @override
  String get enforcement => 'प्रवर्तन';

  @override
  String get runsOnMac => 'Mac पर चलता है';

  @override
  String get runsOnIphone => 'iPhone पर चलता है';

  @override
  String get runsOnIpad => 'iPad पर चलता है';

  @override
  String get appName => 'ऐप नाम';

  @override
  String get appVersion => 'ऐप संस्करण';

  @override
  String get minOsVersion => 'न्यूनतम OS संस्करण';

  @override
  String get created => 'बनाया गया';

  @override
  String get updated => 'अपडेट किया गया';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count आइटम',
      one: '1 आइटम',
      zero: 'कोई आइटम नहीं',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'हल किया गया';

  @override
  String get severityInformational => 'सूचनात्मक';

  @override
  String get managementState => 'प्रबंधन स्थिति';

  @override
  String get managementStateOpen => 'खुला';

  @override
  String get managementStateClosed => 'बंद';

  @override
  String get classificationMalware => 'मैलवेयर';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'संदिग्ध';

  @override
  String get classificationMal => 'हानिकारक';

  @override
  String get blueprintRouting => 'Blueprint रूटिंग';

  @override
  String get blueprintRoutingDesc =>
      'मैनुअल / Android Work Profile पंजीकरण के लिए पंजीकरण कोड और रूटिंग';

  @override
  String get blueprintRoutingNotConfigured =>
      'इस टेनेंट के लिए Blueprint रूटिंग कॉन्फ़िगर नहीं है।';

  @override
  String get enrollmentCodeActive => 'सक्रिय';

  @override
  String get enrollmentCodeInactive => 'निष्क्रिय';

  @override
  String get routingActivity => 'रूटिंग गतिविधि';

  @override
  String get noRoutingActivity => 'कोई रूटिंग गतिविधि नहीं मिली।';

  @override
  String get selfServiceCategories => 'सेल्फ़-सर्विस श्रेणियाँ';

  @override
  String get selfServiceDesc =>
      'अपने उपयोगकर्ताओं के लिए सेल्फ़-सर्विस श्रेणियाँ प्रबंधित करें';

  @override
  String get addCategory => 'श्रेणी जोड़ें';

  @override
  String get categoryName => 'श्रेणी नाम';

  @override
  String get deleteCategory => 'श्रेणी हटाएँ';

  @override
  String get deleteCategoryConfirm =>
      'क्या आप वाकई इस श्रेणी को हटाना चाहते हैं?';

  @override
  String get noCategoriesFound => 'कोई श्रेणी नहीं मिली।';

  @override
  String get categoryCreated => 'श्रेणी बनाई गई';

  @override
  String get categoryDeleted => 'श्रेणी हटा दी गई';

  @override
  String get profileBody => 'प्रोफ़ाइल XML';

  @override
  String get customProfile => 'कस्टम प्रोफ़ाइल';

  @override
  String get classification => 'वर्गीकरण';

  @override
  String get mdmEnabled => 'MDM सक्षम';

  @override
  String get enrolledViaDep => 'DEP द्वारा पंजीकृत';

  @override
  String get userApprovedMdm => 'उपयोगकर्ता-अनुमोदित MDM';

  @override
  String get network => 'नेटवर्क';

  @override
  String get ipAddress => 'IP पता';

  @override
  String get wifiNetwork => 'Wi-Fi नेटवर्क';

  @override
  String get bluetoothMac => 'Bluetooth MAC';

  @override
  String get activationLock => 'एक्टिवेशन लॉक';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'डेवलपर मोड';

  @override
  String get adbEnabled => 'ADB सक्षम';

  @override
  String get unknownSources => 'अज्ञात स्रोत';

  @override
  String get securityPatch => 'सुरक्षा पैच';

  @override
  String get provisioningUdid => 'प्रोविज़निंग UDID';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'MDM जानकारी';

  @override
  String get lastEnrollment => 'अंतिम पंजीकरण';

  @override
  String get enterpriseId => 'एंटरप्राइज़ ID';

  @override
  String get manufacturer => 'निर्माता';

  @override
  String get generalStatus => 'सामान्य स्थिति';

  @override
  String get apiLevel => 'API लेवल';

  @override
  String get userApprovedEnrollment => 'उपयोगकर्ता-अनुमोदित पंजीकरण';

  @override
  String get hostname => 'होस्टनाम';

  @override
  String get macAddress => 'MAC पता';

  @override
  String get publicIp => 'सार्वजनिक IP';

  @override
  String get volumes => 'वॉल्यूम';

  @override
  String volumeUsed(String percent) {
    return '$percent% उपयोग किया गया';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$total में से $available उपलब्ध';
  }

  @override
  String get encrypted => 'एन्क्रिप्टेड';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores कोर';
  }

  @override
  String processors(String count) {
    return '$count प्रोसेसर';
  }

  @override
  String get batteryLevel => 'बैटरी स्तर';

  @override
  String get lastUser => 'अंतिम उपयोगकर्ता';

  @override
  String get bootVolume => 'बूट वॉल्यूम';

  @override
  String get localUsers => 'स्थानीय उपयोगकर्ता';

  @override
  String get regularUsers => 'सामान्य उपयोगकर्ता';

  @override
  String get systemUsers => 'सिस्टम उपयोगकर्ता';

  @override
  String get admin => 'एडमिन';

  @override
  String get assignToBlueprint => 'Blueprint असाइन करें';

  @override
  String get installOnDevice => 'डिवाइस पर इंस्टॉल करें';

  @override
  String get selectBlueprint => 'Blueprint चुनें';

  @override
  String get selectDevice => 'डिवाइस चुनें';

  @override
  String get selfServiceEnabled => 'सेल्फ़ सर्विस';

  @override
  String get vppLicenses => 'VPP लाइसेंस';

  @override
  String get fileName => 'फ़ाइल नाम';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'डिवाइस इंटेलिजेंस';

  @override
  String get prismCategoryActivationLock => 'एक्टिवेशन लॉक';

  @override
  String get prismCategoryApps => 'ऐप्लिकेशन';

  @override
  String get prismCategoryApplicationFirewall => 'ऐप्लिकेशन फ़ायरवॉल';

  @override
  String get prismCategoryCellular => 'सेलुलर';

  @override
  String get prismCategoryCertificates => 'प्रमाणपत्र';

  @override
  String get prismCategoryDesktopAndScreensaver => 'डेस्कटॉप और स्क्रीनसेवर';

  @override
  String get prismCategoryDeviceInformation => 'डिवाइस जानकारी';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper और XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'इंस्टॉल किए गए प्रोफ़ाइल';

  @override
  String get prismCategoryKernelExtensions => 'Kernel Extensions';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents और Daemons';

  @override
  String get prismCategoryLocalUsers => 'स्थानीय उपयोगकर्ता';

  @override
  String get prismCategoryStartupSettings => 'स्टार्टअप सेटिंग्स';

  @override
  String get prismCategorySystemExtensions => 'सिस्टम एक्सटेंशन';

  @override
  String get prismCategoryTransparencyDatabase => 'पारदर्शिता डेटाबेस';

  @override
  String prismRecords(int count) {
    return '$count रिकॉर्ड';
  }

  @override
  String get prismNoData => 'इस श्रेणी के लिए कोई डेटा उपलब्ध नहीं।';

  @override
  String get prismExport => 'CSV निर्यात';

  @override
  String get prismExportRequested =>
      'निर्यात अनुरोध किया गया। डाउनलोड लिंक शीघ्र उपलब्ध होगा।';

  @override
  String get prismFilterByFamily => 'डिवाइस परिवार';

  @override
  String get prismAllFamilies => 'सभी परिवार';

  @override
  String get appearance => 'प्रकटन';

  @override
  String get themeMode => 'थीम';

  @override
  String get themeModeSystem => 'सिस्टम';

  @override
  String get themeModeLight => 'लाइट';

  @override
  String get themeModeDark => 'डार्क';

  @override
  String get shortTypeScript => 'स्क्रिप्ट';

  @override
  String get shortTypeCustom => 'कस्टम';

  @override
  String get shortTypeProfile => 'प्रोफ़ाइल';

  @override
  String get shortTypeInHouse => 'इन-हाउस';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'प्रबंधित';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'सुरक्षा';

  @override
  String get shortTypeAuto => 'ऑटो';

  @override
  String get categoryOsUpdates => 'OS अपडेट';

  @override
  String get categoryAutoApps => 'ऑटो ऐप्स';

  @override
  String get autoApp => 'ऑटो ऐप';

  @override
  String get fileSize => 'फ़ाइल आकार';

  @override
  String get unzipLocation => 'अनज़िप स्थान';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'फ़ाइल अपडेट की गई';

  @override
  String get mdmIdentifier => 'MDM आइडेंटिफ़ायर';

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
  String get typeLabel => 'प्रकार';

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
