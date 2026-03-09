// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for French (`fr`).
class AppLocalizationsFr extends AppLocalizations {
  AppLocalizationsFr([String locale = 'fr']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Appareils';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Utilisateurs';

  @override
  String get navSettings => 'Paramètres';

  @override
  String get welcomeTitle => 'Bienvenue sur FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Gérez votre flotte d\'appareils Apple depuis n\'importe où.';

  @override
  String get addProfile => 'Ajouter un profil';

  @override
  String get editProfile => 'Modifier le profil';

  @override
  String get displayName => 'Nom d\'affichage';

  @override
  String get displayNameHint => 'ex. Acme Corp — Prod';

  @override
  String get region => 'Région';

  @override
  String get regionUs => 'US';

  @override
  String get regionEu => 'EU';

  @override
  String get subdomain => 'Sous-domaine';

  @override
  String get subdomainHint => 'votre-tenant';

  @override
  String get apiToken => 'Jeton API';

  @override
  String get apiTokenHint => 'Collez votre jeton API ici';

  @override
  String urlPreview(String url) {
    return 'URL API : $url';
  }

  @override
  String get verifyAndSave => 'Vérifier et enregistrer';

  @override
  String get verifying => 'Vérification de la connexion...';

  @override
  String get connectionSuccess => 'Connexion vérifiée avec succès !';

  @override
  String get errorInvalidToken =>
      'Jeton API invalide. Veuillez vérifier votre jeton dans la console web.';

  @override
  String get errorInsufficientPermissions =>
      'Permissions insuffisantes. Assurez-vous que le jeton dispose d\'un accès en lecture aux appareils.';

  @override
  String get errorNetworkUnreachable =>
      'API inaccessible. Vérifiez votre connexion Internet et le sous-domaine.';

  @override
  String get errorNotFound => 'La ressource demandée est introuvable.';

  @override
  String get errorValidation =>
      'La requête contient des données invalides. Veuillez vérifier votre saisie.';

  @override
  String get errorRateLimit =>
      'Trop de requêtes. Veuillez patienter un instant et réessayer.';

  @override
  String get errorServer =>
      'Le serveur a rencontré une erreur. Veuillez réessayer plus tard.';

  @override
  String get errorUnexpected =>
      'Une erreur inattendue s\'est produite. Veuillez réessayer.';

  @override
  String get retry => 'Réessayer';

  @override
  String get cancel => 'Annuler';

  @override
  String get delete => 'Supprimer';

  @override
  String get save => 'Enregistrer';

  @override
  String get search => 'Rechercher';

  @override
  String get searchDevices => 'Rechercher des appareils...';

  @override
  String get filterAll => 'Tous';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Tous les blueprints';

  @override
  String loadingDevices(int count) {
    return 'Chargement de $count appareils...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count appareils',
      one: '1 appareil',
      zero: 'Aucun appareil',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'Aucun appareil trouvé';

  @override
  String get noDevicesFoundMessage => 'Ajustez votre recherche ou vos filtres.';

  @override
  String lastCheckIn(String time) {
    return 'Dernier check-in : $time';
  }

  @override
  String get compliancePass => 'Conforme';

  @override
  String get complianceFail => 'Non conforme';

  @override
  String get compliancePending => 'En attente';

  @override
  String get deviceDetails => 'Détails de l\'appareil';

  @override
  String get serialNumber => 'Numéro de série';

  @override
  String get model => 'Modèle';

  @override
  String get osVersion => 'Version OS';

  @override
  String get assetTag => 'Étiquette d\'inventaire';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Inscrit';

  @override
  String get assignedUser => 'Utilisateur assigné';

  @override
  String get actions => 'Actions';

  @override
  String get actionLock => 'Verrouiller';

  @override
  String get actionRestart => 'Redémarrer';

  @override
  String get actionShutdown => 'Éteindre';

  @override
  String get actionErase => 'Effacer';

  @override
  String get actionBlankPush => 'Envoyer un Blank Push';

  @override
  String get actionReinstallAgent => 'Réinstaller l\'agent';

  @override
  String get actionUpdateInventory => 'Mettre à jour l\'inventaire';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Activer le bureau à distance';

  @override
  String get actionRemoteDesktopDisable => 'Désactiver le bureau à distance';

  @override
  String get actionLostMode => 'Activer le mode Perdu';

  @override
  String get destructiveActionTitle => 'Confirmer l\'action destructrice';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Cette action est irréversible. Saisissez « $deviceName » pour confirmer.';
  }

  @override
  String get destructiveActionHint =>
      'Saisissez le nom de l\'appareil pour confirmer';

  @override
  String get confirm => 'Confirmer';

  @override
  String get actionSuccess => 'Action exécutée avec succès.';

  @override
  String get actionFailed => 'Échec de l\'action. Veuillez réessayer.';

  @override
  String get biometricReason => 'Authentifiez-vous pour accéder à FleetPilot';

  @override
  String get biometricReasonSecrets =>
      'Authentifiez-vous pour afficher les données sensibles';

  @override
  String get biometricReasonDestructive =>
      'Authentifiez-vous pour exécuter cette action';

  @override
  String get biometricFailed =>
      'Échec de l\'authentification. Veuillez réessayer.';

  @override
  String get profiles => 'Profils';

  @override
  String activeProfile(String name) {
    return 'Actif : $name';
  }

  @override
  String get switchProfile => 'Changer de profil';

  @override
  String get deleteProfile => 'Supprimer le profil';

  @override
  String get deleteProfileConfirm =>
      'Voulez-vous vraiment supprimer ce profil ? Cette action est irréversible.';

  @override
  String get noProfiles => 'Aucun profil configuré';

  @override
  String get settings => 'Paramètres';

  @override
  String get about => 'À propos';

  @override
  String version(String version) {
    return 'Version $version';
  }

  @override
  String get validationRequired => 'Ce champ est obligatoire.';

  @override
  String get validationSubdomain =>
      'Seuls les lettres, chiffres et tirets sont autorisés. Pas de tirets en début ou fin.';

  @override
  String get validationToken =>
      'Format de jeton invalide. 20 à 500 caractères, alphanumériques et séparateurs courants uniquement.';

  @override
  String pinLockedOut(int seconds) {
    return 'Trop de tentatives échouées. Réessayez dans $seconds secondes.';
  }

  @override
  String get complianceStatus => 'État de conformité';

  @override
  String get platform => 'Plateforme';

  @override
  String get deviceName => 'Nom de l\'appareil';

  @override
  String get searchUsers => 'Rechercher des utilisateurs...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count utilisateurs',
      one: '1 utilisateur',
      zero: 'Aucun utilisateur',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'Aucun utilisateur trouvé';

  @override
  String get noUsersFoundMessage => 'Ajustez votre recherche ou vos filtres.';

  @override
  String get showArchived => 'Afficher les archivés';

  @override
  String get archived => 'Archivé';

  @override
  String get email => 'E-mail';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprints',
      one: '1 blueprint',
      zero: 'Aucun blueprint',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'Aucun blueprint trouvé';

  @override
  String get noBlueprintsFoundMessage =>
      'Aucun blueprint n\'a encore été configuré.';

  @override
  String get enrollmentActive => 'Inscription active';

  @override
  String get enrollmentInactive => 'Inscription inactive';

  @override
  String get tabOverview => 'Aperçu';

  @override
  String get tabApps => 'Apps';

  @override
  String get tabStatus => 'Statut';

  @override
  String get tabActivity => 'Activité';

  @override
  String get tabCommands => 'Commandes';

  @override
  String get hardware => 'Matériel';

  @override
  String get security => 'Sécurité';

  @override
  String get totalStorage => 'Stockage total';

  @override
  String get availableStorage => 'Stockage disponible';

  @override
  String get totalRam => 'RAM totale';

  @override
  String get wifiMac => 'Adresse MAC Wi-Fi';

  @override
  String get encryption => 'Chiffrement';

  @override
  String get passcode => 'Code d\'accès';

  @override
  String get noAppsFound => 'Aucune application trouvée';

  @override
  String get noActivityFound => 'Aucune activité trouvée';

  @override
  String get noCommandsFound => 'Aucune commande trouvée';

  @override
  String get libraryItems => 'Éléments de bibliothèque';

  @override
  String get parameters => 'Paramètres';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'Build OS';

  @override
  String get cellular => 'Cellulaire';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count applications',
      one: '1 application',
      zero: 'Aucune application',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Détails de l\'utilisateur';

  @override
  String get jobTitle => 'Fonction';

  @override
  String get department => 'Département';

  @override
  String get createdAt => 'Créé';

  @override
  String get updatedAt => 'Mis à jour';

  @override
  String get assignedDevices => 'Appareils assignés';

  @override
  String get noAssignedDevices =>
      'Aucun appareil n\'est assigné à cet utilisateur.';

  @override
  String get userInfo => 'Informations utilisateur';

  @override
  String get navMore => 'Plus';

  @override
  String get tabSecrets => 'Secrets';

  @override
  String get filevaultKey => 'Clé de récupération FileVault';

  @override
  String get unlockPin => 'PIN de déverrouillage';

  @override
  String get recoveryPassword => 'Mot de passe Recovery Lock';

  @override
  String get bypassCode =>
      'Code de contournement du verrouillage d\'activation';

  @override
  String get noSecretsFound => 'Aucun secret disponible pour cet appareil.';

  @override
  String get secretCopied => 'Secret copié dans le presse-papiers';

  @override
  String get threats => 'Menaces';

  @override
  String get noThreatsFound => 'Aucune menace détectée.';

  @override
  String get vulnerabilities => 'Vulnérabilités';

  @override
  String get noVulnerabilitiesFound => 'Aucune vulnérabilité détectée.';

  @override
  String get aboutApp => 'À propos de FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot est une application open source de gestion MDM pour les flottes d\'appareils Apple.';

  @override
  String get tapToCopy => 'Appuyez pour copier';

  @override
  String get devices => 'Appareils';

  @override
  String get severity => 'Sévérité';

  @override
  String get tabLocation => 'Localisation';

  @override
  String get locationNotAvailable =>
      'Les données de localisation ne sont pas disponibles pour cet appareil.';

  @override
  String get enableLostModeHint =>
      'Activez le mode Perdu pour localiser cet appareil.';

  @override
  String get lostModeEnabled => 'Mode Perdu activé';

  @override
  String get noLibraryItemsFound => 'Aucun élément de bibliothèque trouvé.';

  @override
  String get licenses => 'Licences';

  @override
  String get lostModeMessage => 'Message du mode Perdu';

  @override
  String get lostModePhone => 'Numéro de téléphone';

  @override
  String get lostModeFootnote =>
      'Message et numéro de téléphone optionnels affichés sur l\'appareil';

  @override
  String get supervised => 'Supervisé';

  @override
  String get unsupervised => 'Non supervisé';

  @override
  String get filterSupervised => 'Supervisé';

  @override
  String get filterUnsupervised => 'Non supervisé';

  @override
  String get language => 'Langue';

  @override
  String get languageSystem => 'Système par défaut';

  @override
  String get actionDisableLostMode => 'Désactiver le mode Perdu';

  @override
  String get actionClearPasscode => 'Effacer le code d\'accès';

  @override
  String get filterLostMode => 'Mode Perdu';

  @override
  String get lostMode => 'Mode Perdu';

  @override
  String get sectionManagement => 'Gestion';

  @override
  String get sectionStatus => 'Statut';

  @override
  String get statusMissing => 'Manquant';

  @override
  String get statusRemoved => 'Supprimé';

  @override
  String get agent => 'Agent';

  @override
  String get identifier => 'Identifiant';

  @override
  String get processor => 'Processeur';

  @override
  String get hardwareUuid => 'UUID matériel';

  @override
  String get devicePosture => 'État de l\'appareil';

  @override
  String get unknownDevice => 'Appareil inconnu';

  @override
  String get securityAppLock => 'Verrouillage de l\'application';

  @override
  String get securityAppLockDescription =>
      'Définissez un PIN à 6 chiffres pour protéger l\'application. L\'authentification biométrique peut être activée après avoir défini un PIN.';

  @override
  String get securityAppLockActive => 'Verrouillage de l\'application activé';

  @override
  String get securityAppLockInactive => 'Aucun verrouillage configuré';

  @override
  String get securitySetPin => 'Définir le PIN';

  @override
  String get securityChangePin => 'Modifier le PIN';

  @override
  String get securityRemovePin => 'Supprimer le PIN';

  @override
  String get securityCurrentPin => 'PIN actuel';

  @override
  String get securityNewPin => 'Nouveau PIN';

  @override
  String get securityConfirmPin => 'Saisissez à nouveau le PIN pour confirmer.';

  @override
  String get securityPinLength => 'Le PIN doit comporter 6 chiffres.';

  @override
  String get securityPinMismatch => 'Les PIN ne correspondent pas.';

  @override
  String get securityPinWrong => 'PIN incorrect.';

  @override
  String get securityPinSet => 'PIN défini.';

  @override
  String get securityPinChanged => 'PIN modifié.';

  @override
  String get securityPinRemoved =>
      'PIN et verrouillage de l\'application supprimés.';

  @override
  String get securityBiometric => 'Biométrie';

  @override
  String get securityBiometricDescription =>
      'Utilisez l\'empreinte digitale ou la reconnaissance faciale pour déverrouiller l\'application au lieu du PIN.';

  @override
  String get securityBiometricEnable => 'Déverrouillage biométrique';

  @override
  String get securityBiometricActive => 'Actif';

  @override
  String get securityBiometricInactive => 'Inactif';

  @override
  String get securityBiometricUnavailable =>
      'L\'authentification biométrique n\'est pas disponible sur cet appareil.';

  @override
  String get securityNext => 'Suivant';

  @override
  String get actionRenewMdm => 'Renouveler le profil MDM';

  @override
  String get actionSetName => 'Définir le nom de l\'appareil';

  @override
  String get actionSetNameHint => 'Saisir le nouveau nom de l\'appareil';

  @override
  String get actionDeleteUser => 'Supprimer l\'utilisateur';

  @override
  String get actionDeleteUserName => 'Nom d\'utilisateur';

  @override
  String get actionDeleteAllUsers => 'Supprimer tous les utilisateurs';

  @override
  String get actionForceDeletion => 'Forcer la suppression';

  @override
  String get actionUnlockAccount => 'Déverrouiller le compte';

  @override
  String get actionPlayLostModeSound => 'Jouer le son du mode Perdu';

  @override
  String get actionUpdateLocation => 'Mettre à jour la localisation';

  @override
  String get erasePin => 'PIN à 6 chiffres';

  @override
  String get erasePinHint => 'Requis pour les appareils mobiles';

  @override
  String get erasePreserveDataPlan => 'Conserver le forfait data';

  @override
  String get eraseDisallowProximitySetup =>
      'Interdire la configuration de proximité';

  @override
  String get eraseReturnToService => 'Return to Service';

  @override
  String get lockMessage => 'Message de verrouillage';

  @override
  String get lockPhone => 'Numéro de téléphone';

  @override
  String get restartRebuildKernelCache => 'Reconstruire le cache du noyau';

  @override
  String get restartNotifyUser => 'Notifier l\'utilisateur';

  @override
  String get actionRemoteDesktop => 'Bureau à distance';

  @override
  String get tabNotes => 'Notes';

  @override
  String get noNotesFound => 'Aucune note pour le moment';

  @override
  String get addNote => 'Ajouter une note';

  @override
  String get editNote => 'Modifier la note';

  @override
  String get deleteNote => 'Supprimer la note';

  @override
  String get deleteNoteConfirm => 'Voulez-vous vraiment supprimer cette note ?';

  @override
  String get noteContent => 'Contenu de la note';

  @override
  String get noteSaved => 'Note enregistrée.';

  @override
  String get noteDeleted => 'Note supprimée.';

  @override
  String get editDevice => 'Modifier l\'appareil';

  @override
  String get deviceUpdated => 'Appareil mis à jour.';

  @override
  String get deleteDevice => 'Supprimer l\'appareil';

  @override
  String get deleteDeviceConfirm =>
      'L\'appareil sera définitivement supprimé du MDM. Cette action est irréversible.';

  @override
  String get deviceDeleted => 'Appareil supprimé.';

  @override
  String get cancelLostMode => 'Annuler le mode Perdu';

  @override
  String get cancelLostModeConfirm =>
      'Annuler la demande de mode Perdu en attente ?';

  @override
  String get lostModeCancelled => 'Mode Perdu annulé.';

  @override
  String get tags => 'Tags';

  @override
  String get noTags => 'Aucun tag';

  @override
  String get addTag => 'Ajouter un tag';

  @override
  String get tagName => 'Nom du tag';

  @override
  String get manageTags => 'Gérer les tags';

  @override
  String get auditLog => 'Journal d\'audit';

  @override
  String get noAuditEvents => 'Aucun événement d\'audit trouvé';

  @override
  String get actionDailyCheckIn => 'Check-in quotidien';

  @override
  String get licensing => 'Licences';

  @override
  String get deviceLimit => 'Limite d\'appareils';

  @override
  String get devicesUsed => 'Appareils utilisés';

  @override
  String get licenseType => 'Type de licence';

  @override
  String get appleDevices => 'Appareils Apple';

  @override
  String get deleteUser => 'Supprimer l\'utilisateur';

  @override
  String get deleteUserConfirm =>
      'Voulez-vous vraiment supprimer cet utilisateur ? Cette action est irréversible.';

  @override
  String get userDeleted => 'Utilisateur supprimé.';

  @override
  String get createBlueprint => 'Créer un blueprint';

  @override
  String get editBlueprint => 'Modifier le blueprint';

  @override
  String get deleteBlueprint => 'Supprimer le blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'La suppression de ce blueprint désinscrit tous les appareils assignés. Cette action est irréversible.';

  @override
  String get blueprintCreated => 'Blueprint créé.';

  @override
  String get blueprintUpdated => 'Blueprint mis à jour.';

  @override
  String get blueprintDeleted => 'Blueprint supprimé.';

  @override
  String get blueprintName => 'Nom du blueprint';

  @override
  String get blueprintDescription => 'Description';

  @override
  String get enrollmentCode => 'Code d\'inscription';

  @override
  String get assignLibraryItem => 'Assigner un élément de bibliothèque';

  @override
  String get removeLibraryItem => 'Retirer l\'élément de bibliothèque';

  @override
  String get libraryItemAssigned => 'Élément de bibliothèque assigné.';

  @override
  String get libraryItemRemoved => 'Élément de bibliothèque retiré.';

  @override
  String get lostModeDetails => 'Détails du mode Perdu';

  @override
  String get lostModeEnabledBy => 'Activé par';

  @override
  String get lostModeEnabledAt => 'Activé le';

  @override
  String get searchBlueprints => 'Rechercher des blueprints...';

  @override
  String get searchVulnerabilities => 'Rechercher des vulnérabilités...';

  @override
  String get searchThreats => 'Rechercher des menaces...';

  @override
  String get searchAuditLog => 'Rechercher dans le journal d\'audit...';

  @override
  String get filterCritical => 'Critique';

  @override
  String get filterHigh => 'Élevé';

  @override
  String get filterMedium => 'Moyen';

  @override
  String get filterLow => 'Faible';

  @override
  String get filterClearAll => 'Tout effacer';

  @override
  String get filterTitle => 'Filtres';

  @override
  String get filterApply => 'Appliquer';

  @override
  String get filterPlatform => 'Plateforme';

  @override
  String get filterSupervision => 'Supervision';

  @override
  String get filterStatus => 'Statut';

  @override
  String get adeIntegrations => 'Intégrations ADE';

  @override
  String get noAdeIntegrations => 'Aucune intégration ADE trouvée.';

  @override
  String get adeDevices => 'Appareils ADE';

  @override
  String get noAdeDevices => 'Aucun appareil ADE trouvé.';

  @override
  String get tokenExpiry => 'Expiration du jeton';

  @override
  String get tokenValid => 'Jeton valide';

  @override
  String get tokenExpired => 'Jeton expiré';

  @override
  String get orgName => 'Organisation';

  @override
  String get defaultBlueprint => 'Blueprint par défaut';

  @override
  String get renewToken => 'Renouveler le jeton';

  @override
  String get publicKey => 'Clé publique';

  @override
  String get vulnerabilityDetections => 'Détections de vulnérabilités';

  @override
  String get noDetectionsFound => 'Aucune détection trouvée.';

  @override
  String get behavioralDetections => 'Détections comportementales';

  @override
  String get noBehavioralDetections =>
      'Aucune détection comportementale trouvée.';

  @override
  String get searchBehavioralDetections => 'Rechercher des détections...';

  @override
  String get affectedDevices => 'Appareils affectés';

  @override
  String get noAffectedDevices =>
      'Aucun appareil affecté trouvé. Les appareils précédemment affectés ont peut-être été supprimés.';

  @override
  String get affectedSoftware => 'Logiciels affectés';

  @override
  String get blueprintTemplates => 'Modèles de blueprints';

  @override
  String get noTemplatesFound => 'Aucun modèle trouvé.';

  @override
  String get otaEnrollmentProfile => 'Profil d\'inscription OTA';

  @override
  String get libraryItemActivity => 'Activité';

  @override
  String get libraryItemDeploymentStatus => 'État du déploiement';

  @override
  String get noActivityFound2 => 'Aucune activité trouvée.';

  @override
  String get noStatusFound => 'Aucun état de déploiement trouvé.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count détections',
      one: '1 détection',
      zero: 'Aucune détection',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count intégrations',
      one: '1 intégration',
      zero: 'Aucune intégration',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Détails de la vulnérabilité';

  @override
  String get description => 'Description';

  @override
  String get firstDetected => 'Première détection';

  @override
  String get lastDetected => 'Dernière détection';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count logiciels',
      one: '1 logiciel',
      zero: 'Aucun logiciel',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Modifier l\'intégration';

  @override
  String get deleteIntegration => 'Supprimer l\'intégration';

  @override
  String get deleteIntegrationConfirm =>
      'Voulez-vous vraiment supprimer cette intégration ADE ? Cette action est irréversible.';

  @override
  String get integrationDeleted => 'Intégration supprimée.';

  @override
  String get integrationUpdated => 'Intégration mise à jour.';

  @override
  String get defaultBlueprintId => 'ID du blueprint par défaut';

  @override
  String get phone => 'Téléphone';

  @override
  String get downloadOtaProfile => 'Télécharger le profil d\'inscription';

  @override
  String get otaProfileCopied =>
      'Profil d\'inscription copié dans le presse-papiers.';

  @override
  String get noOtaProfile => 'Aucun profil d\'inscription disponible.';

  @override
  String get createTag => 'Créer un tag';

  @override
  String get editTag => 'Modifier le tag';

  @override
  String get deleteTag => 'Supprimer le tag';

  @override
  String get deleteTagConfirm => 'Voulez-vous vraiment supprimer ce tag ?';

  @override
  String get tagColor => 'Couleur';

  @override
  String get tagCreated => 'Tag créé.';

  @override
  String get tagUpdated => 'Tag mis à jour.';

  @override
  String get tagDeleted => 'Tag supprimé.';

  @override
  String get noTagsFound => 'Aucun tag trouvé.';

  @override
  String get libraryItemDetail => 'Élément de bibliothèque';

  @override
  String get viewActivity => 'Voir l\'activité';

  @override
  String get viewStatus => 'Voir le statut';

  @override
  String get installations => 'Installations';

  @override
  String get createAdeIntegration => 'Créer une intégration ADE';

  @override
  String get adeCreateDescription =>
      'Téléchargez un fichier de jeton serveur (.p7m) depuis l\'Apple Business Manager pour créer une nouvelle intégration ADE.';

  @override
  String get selectTokenFile => 'Sélectionner le fichier de jeton';

  @override
  String tokenFileSelected(String name) {
    return 'Fichier de jeton : $name';
  }

  @override
  String get noTokenFileSelected => 'Aucun fichier de jeton sélectionné';

  @override
  String get integrationCreated => 'Intégration créée.';

  @override
  String get create => 'Créer';

  @override
  String get step1GetPublicKey => 'Étape 1 : Télécharger la clé publique';

  @override
  String get step1Description =>
      'Copiez la clé publique et importez-la dans l\'Apple Business Manager.';

  @override
  String get step2UploadToken => 'Étape 2 : Importer le jeton serveur';

  @override
  String get step2Description =>
      'Sélectionnez le fichier de jeton .p7m que vous avez téléchargé depuis Apple.';

  @override
  String get step3Configure => 'Étape 3 : Configurer';

  @override
  String get publicKeyCopied => 'Clé publique copiée dans le presse-papiers.';

  @override
  String get renewTokenDescription =>
      'Importez un nouveau fichier de jeton .p7m pour renouveler le jeton de cette intégration.';

  @override
  String get tokenRenewed => 'Jeton renouvelé.';

  @override
  String get aboutLinks => 'Liens';

  @override
  String get aboutWebsite => 'Site web';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Code source';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Technologie';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'Gestion d\'état';

  @override
  String get aboutArchitecture => 'Architecture';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Classes de données';

  @override
  String get aboutNavigationLabel => 'Navigation';

  @override
  String get aboutOpenSourceLicenses => 'Licences open source';

  @override
  String get aboutShowHide => 'Basculer la visibilité';

  @override
  String get editProfileTitle => 'Modifier la connexion';

  @override
  String get editProfileSubtitle =>
      'Mettez à jour les paramètres de connexion de votre tenant.';

  @override
  String get apiTokenHintEdit =>
      'Laisser vide pour conserver le jeton existant';

  @override
  String get profileUpdated => 'Profil mis à jour.';

  @override
  String profileSwitched(String name) {
    return 'Basculé vers $name.';
  }

  @override
  String get securityAutoLock => 'Verrouillage automatique';

  @override
  String get securityAutoLockDescription =>
      'Exiger l\'authentification automatiquement après que l\'application est passée en arrière-plan.';

  @override
  String get timeoutImmediately => 'Immédiatement';

  @override
  String get timeoutSeconds30 => 'Après 30 secondes';

  @override
  String get timeoutSeconds60 => 'Après 1 minute';

  @override
  String get timeoutSeconds120 => 'Après 2 minutes';

  @override
  String get timeoutMinutes5 => 'Après 5 minutes';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Aucun blueprint';

  @override
  String get presetSaveFilter => 'Enregistrer un filtre prédéfini';

  @override
  String get presetLoad => 'Charger un filtre prédéfini';

  @override
  String get presetName => 'Nom du filtre prédéfini';

  @override
  String get presetNameHint => 'ex. Macs non supervisés';

  @override
  String get presetSaved => 'Filtre prédéfini enregistré.';

  @override
  String get presetDeleted => 'Filtre prédéfini supprimé.';

  @override
  String presetApplied(String name) {
    return 'Filtre prédéfini « $name » appliqué.';
  }

  @override
  String get presetNoPresets => 'Aucun filtre prédéfini enregistré';

  @override
  String get presetNoPresetsMessage =>
      'Enregistrez vos filtres actuels en tant que filtre prédéfini pour un accès rapide.';

  @override
  String get presetDeleteConfirm => 'Supprimer ce filtre prédéfini ?';

  @override
  String get presetNameRequired =>
      'Veuillez saisir un nom pour le filtre prédéfini.';

  @override
  String selectedCount(int count) {
    return '$count sélectionné(s)';
  }

  @override
  String get selectAll => 'Tout sélectionner';

  @override
  String get deselectAll => 'Tout désélectionner';

  @override
  String get bulkActions => 'Actions';

  @override
  String bulkActionsTitle(int count) {
    return 'Actions pour $count appareils';
  }

  @override
  String get bulkActionAssignTag => 'Assigner un tag';

  @override
  String get bulkActionAssignTagDescription =>
      'Ajouter un tag à tous les appareils sélectionnés';

  @override
  String get bulkActionAssignBlueprint => 'Assigner un blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Déplacer les appareils sélectionnés vers un blueprint';

  @override
  String get bulkActionLock => 'Verrouiller les appareils';

  @override
  String get bulkActionLockDescription =>
      'Verrouiller à distance tous les appareils sélectionnés';

  @override
  String get bulkActionRestart => 'Redémarrer les appareils';

  @override
  String get bulkActionRestartDescription =>
      'Redémarrer tous les appareils sélectionnés';

  @override
  String bulkRestartConfirmMessage(int count) {
    return 'Voulez-vous vraiment redémarrer $count appareils ?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Action terminée avec succès sur $count appareils.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Terminé sur $success appareils, $failed en échec.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed sur $total terminé(s)';
  }

  @override
  String get biometricReasonBulkAction =>
      'Authentifiez-vous pour exécuter l\'action groupée';

  @override
  String get lockPin => 'PIN de verrouillage (optionnel)';

  @override
  String get noTagsAvailable =>
      'Aucun tag disponible. Créez des tags dans la console web MDM.';

  @override
  String get noBlueprintsAvailable => 'Aucun blueprint disponible.';

  @override
  String get selectADevice => 'Sélectionner un appareil';

  @override
  String get selectABlueprint => 'Sélectionner un blueprint';

  @override
  String get clearSearch => 'Effacer la recherche';

  @override
  String get refresh => 'Actualiser';

  @override
  String get moreActions => 'Plus d\'actions';

  @override
  String get close => 'Fermer';

  @override
  String get onboardingSkip => 'Passer';

  @override
  String get onboardingNext => 'Suivant';

  @override
  String get onboardingGetStarted => 'Commencer';

  @override
  String get onboardingWelcomeTitle => 'Bienvenue sur FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Votre centre de commande mobile pour la gestion de flotte d\'appareils Apple. Surveillez, gérez et sécurisez l\'ensemble de votre flotte depuis n\'importe où.';

  @override
  String get onboardingDevicesTitle => 'Gestion des appareils';

  @override
  String get onboardingDevicesSubtitle =>
      'Visibilité et contrôle complets sur chaque appareil de votre flotte.';

  @override
  String get onboardingDevicesFeature1 =>
      'Voir tous les iPhones, iPads, Macs et Apple TV inscrits';

  @override
  String get onboardingDevicesFeature2 =>
      'Envoyer des commandes à distance : verrouiller, redémarrer, effacer et plus';

  @override
  String get onboardingDevicesFeature3 =>
      'Suivre les blueprints, applications et l\'état de conformité';

  @override
  String get onboardingSecurityTitle => 'Conçu pour la sécurité';

  @override
  String get onboardingSecuritySubtitle =>
      'Les données de votre flotte restent protégées par plusieurs couches de sécurité.';

  @override
  String get onboardingSecurityFeature1 =>
      'Authentification biométrique avec Face ID ou empreinte digitale';

  @override
  String get onboardingSecurityFeature2 =>
      'Verrouillage par PIN à 6 chiffres pour l\'accès à l\'application';

  @override
  String get onboardingSecurityFeature3 =>
      'Verrouillage automatique de session après expiration du délai';

  @override
  String get onboardingReadyTitle => 'Prêt à démarrer';

  @override
  String get onboardingReadySubtitle =>
      'Connectez votre tenant MDM pour commencer à gérer votre flotte d\'appareils Apple. Vous allez configurer votre connexion API et votre PIN de sécurité.';

  @override
  String get searchTags => 'Rechercher des tags';

  @override
  String tagDeviceCount(int count) {
    return '$count appareils';
  }

  @override
  String get sortTitle => 'Tri';

  @override
  String get sortDirection => 'Sens du tri';

  @override
  String get ascending => 'Croissant';

  @override
  String get descending => 'Décroissant';

  @override
  String get filterSeverity => 'Sévérité';

  @override
  String get filterSort => 'Filtrer et trier';

  @override
  String get statusQuarantined => 'En quarantaine';

  @override
  String get statusNotQuarantined => 'Non isolé';

  @override
  String get statusDetected => 'Détecté';

  @override
  String get statusReleased => 'Libéré';

  @override
  String get severityCritical => 'Critique';

  @override
  String get severityHigh => 'Élevé';

  @override
  String get severityMedium => 'Moyen';

  @override
  String get severityLow => 'Faible';

  @override
  String threatCount(int count) {
    return '$count menaces';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count détections';
  }

  @override
  String get downloadPublicKey => 'Télécharger';

  @override
  String get publicKeySaved => 'Clé publique enregistrée';

  @override
  String get sortBy => 'Trier par';

  @override
  String get sortByCvss => 'Score CVSS';

  @override
  String get sortByDeviceCount => 'Appareils affectés';

  @override
  String get sortByCveId => 'ID CVE';

  @override
  String vulnCount(int count) {
    return '$count vulnérabilités';
  }

  @override
  String get assignTags => 'Tags';

  @override
  String get noTagsAvailableMessage =>
      'Aucun tag disponible. Créez d\'abord des tags.';

  @override
  String get failedToLoadTags => 'Impossible de charger les tags';

  @override
  String get details => 'Détails';

  @override
  String get searchLibraryItems => 'Rechercher des éléments de bibliothèque...';

  @override
  String get categoryCustomScript => 'Script personnalisé';

  @override
  String get categoryCustomApp => 'Application personnalisée';

  @override
  String get categoryCustomProfile => 'Profil personnalisé';

  @override
  String get categoryInHouseApp => 'Application interne';

  @override
  String get categoryBuiltIn => 'Intégré';

  @override
  String get categoryVppApps => 'Applications VPP / App Store';

  @override
  String get categoryManagedProfiles => 'Profils gérés';

  @override
  String get categoryKandjiSetup => 'Configuration MDM';

  @override
  String get categoryMacosRelease => 'Mises à jour macOS';

  @override
  String get categoryThreatPolicy => 'Politiques de sécurité';

  @override
  String inBlueprints(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprints',
      one: '1 blueprint',
    );
    return 'Dans $_temp0';
  }

  @override
  String get executionFrequencyOnce => 'Une seule fois';

  @override
  String get executionFrequencyEvery15Min => 'Toutes les 15 minutes';

  @override
  String get executionFrequencyEveryDay => 'Quotidiennement';

  @override
  String get executionFrequencyNoEnforcement => 'Pas d\'application';

  @override
  String get scriptBody => 'Script';

  @override
  String get remediationScript => 'Script de remédiation';

  @override
  String get allProperties => 'Toutes les propriétés';

  @override
  String get builtInLibraryItem => 'Élément de bibliothèque intégré';

  @override
  String get builtInDetailsHint => 'Détails disponibles dans l\'onglet Statut';

  @override
  String get active => 'Actif';

  @override
  String get yes => 'Oui';

  @override
  String get no => 'Non';

  @override
  String get execution => 'Exécution';

  @override
  String get restart => 'Redémarrage';

  @override
  String get selfService => 'Self Service';

  @override
  String get installType => 'Type d\'installation';

  @override
  String get enforcement => 'Application';

  @override
  String get runsOnMac => 'Fonctionne sur Mac';

  @override
  String get runsOnIphone => 'Fonctionne sur iPhone';

  @override
  String get runsOnIpad => 'Fonctionne sur iPad';

  @override
  String get appName => 'Nom de l\'application';

  @override
  String get appVersion => 'Version de l\'application';

  @override
  String get minOsVersion => 'Version OS min.';

  @override
  String get created => 'Créé';

  @override
  String get updated => 'Mis à jour';

  @override
  String libraryItemCount(num count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count éléments',
      one: '1 élément',
      zero: 'Aucun élément',
    );
    return '$_temp0';
  }

  @override
  String get statusResolved => 'Résolu';

  @override
  String get severityInformational => 'Informatif';

  @override
  String get managementState => 'État de gestion';

  @override
  String get managementStateOpen => 'Ouvert';

  @override
  String get managementStateClosed => 'Fermé';

  @override
  String get classificationMalware => 'Malware';

  @override
  String get classificationPup => 'PUP';

  @override
  String get classificationSus => 'Suspect';

  @override
  String get classificationMal => 'Malveillant';

  @override
  String get blueprintRouting => 'Routage de blueprint';

  @override
  String get blueprintRoutingDesc =>
      'Code d\'inscription et routage pour l\'inscription manuelle / Android Work Profile';

  @override
  String get blueprintRoutingNotConfigured =>
      'Le routage de blueprint n\'est pas configuré pour ce tenant.';

  @override
  String get enrollmentCodeActive => 'Actif';

  @override
  String get enrollmentCodeInactive => 'Inactif';

  @override
  String get routingActivity => 'Activité de routage';

  @override
  String get noRoutingActivity => 'Aucune activité de routage trouvée.';

  @override
  String get selfServiceCategories => 'Catégories Self Service';

  @override
  String get selfServiceDesc =>
      'Gérer les catégories Self Service pour vos utilisateurs';

  @override
  String get addCategory => 'Ajouter une catégorie';

  @override
  String get categoryName => 'Nom de la catégorie';

  @override
  String get deleteCategory => 'Supprimer la catégorie';

  @override
  String get deleteCategoryConfirm =>
      'Voulez-vous vraiment supprimer cette catégorie ?';

  @override
  String get noCategoriesFound => 'Aucune catégorie trouvée.';

  @override
  String get categoryCreated => 'Catégorie créée';

  @override
  String get categoryDeleted => 'Catégorie supprimée';

  @override
  String get profileBody => 'XML du profil';

  @override
  String get customProfile => 'Profil personnalisé';

  @override
  String get classification => 'Classification';

  @override
  String get mdmEnabled => 'MDM activé';

  @override
  String get enrolledViaDep => 'Inscrit via DEP';

  @override
  String get userApprovedMdm => 'MDM approuvé par l\'utilisateur';

  @override
  String get network => 'Réseau';

  @override
  String get ipAddress => 'Adresse IP';

  @override
  String get wifiNetwork => 'Réseau Wi-Fi';

  @override
  String get bluetoothMac => 'MAC Bluetooth';

  @override
  String get activationLock => 'Verrouillage d\'activation';

  @override
  String get googlePlayProtect => 'Google Play Protect';

  @override
  String get developerMode => 'Mode développeur';

  @override
  String get adbEnabled => 'ADB activé';

  @override
  String get unknownSources => 'Sources inconnues';

  @override
  String get securityPatch => 'Correctif de sécurité';

  @override
  String get provisioningUdid => 'UDID de provisionnement';

  @override
  String get meid => 'MEID';

  @override
  String get mdmInfo => 'Info MDM';

  @override
  String get lastEnrollment => 'Dernière inscription';

  @override
  String get enterpriseId => 'ID d\'entreprise';

  @override
  String get manufacturer => 'Fabricant';

  @override
  String get generalStatus => 'Statut général';

  @override
  String get apiLevel => 'Niveau API';

  @override
  String get userApprovedEnrollment =>
      'Inscription approuvée par l\'utilisateur';

  @override
  String get hostname => 'Nom d\'hôte';

  @override
  String get macAddress => 'Adresse MAC';

  @override
  String get publicIp => 'IP publique';

  @override
  String get volumes => 'Volumes';

  @override
  String volumeUsed(String percent) {
    return '$percent% utilisé';
  }

  @override
  String volumeAvailable(String available, String total) {
    return '$available libre sur $total';
  }

  @override
  String get encrypted => 'Chiffré';

  @override
  String get cpuInfo => 'CPU';

  @override
  String processorCores(String cores) {
    return '$cores cœurs';
  }

  @override
  String processors(String count) {
    return '$count processeurs';
  }

  @override
  String get batteryLevel => 'Niveau de batterie';

  @override
  String get lastUser => 'Dernier utilisateur';

  @override
  String get bootVolume => 'Volume de démarrage';

  @override
  String get localUsers => 'Utilisateurs locaux';

  @override
  String get regularUsers => 'Utilisateurs standard';

  @override
  String get systemUsers => 'Utilisateurs système';

  @override
  String get admin => 'Admin';

  @override
  String get assignToBlueprint => 'Assigner au blueprint';

  @override
  String get installOnDevice => 'Installer sur l\'appareil';

  @override
  String get selectBlueprint => 'Sélectionner un blueprint';

  @override
  String get selectDevice => 'Sélectionner un appareil';

  @override
  String get selfServiceEnabled => 'Self Service';

  @override
  String get vppLicenses => 'Licences VPP';

  @override
  String get fileName => 'Nom du fichier';

  @override
  String get navPrism => 'Prism';

  @override
  String get prismTitle => 'Device Intelligence';

  @override
  String get prismCategoryActivationLock => 'Verrouillage d\'activation';

  @override
  String get prismCategoryApps => 'Applications';

  @override
  String get prismCategoryApplicationFirewall => 'Pare-feu applicatif';

  @override
  String get prismCategoryCellular => 'Cellulaire';

  @override
  String get prismCategoryCertificates => 'Certificats';

  @override
  String get prismCategoryDesktopAndScreensaver =>
      'Bureau et économiseur d\'écran';

  @override
  String get prismCategoryDeviceInformation => 'Informations sur l\'appareil';

  @override
  String get prismCategoryFilevault => 'FileVault';

  @override
  String get prismCategoryGatekeeperAndXprotect => 'Gatekeeper et XProtect';

  @override
  String get prismCategoryInstalledProfiles => 'Profils installés';

  @override
  String get prismCategoryKernelExtensions => 'Extensions noyau';

  @override
  String get prismCategoryLaunchAgentsAndDaemons => 'Launch Agents et Daemons';

  @override
  String get prismCategoryLocalUsers => 'Utilisateurs locaux';

  @override
  String get prismCategoryStartupSettings => 'Paramètres de démarrage';

  @override
  String get prismCategorySystemExtensions => 'Extensions système';

  @override
  String get prismCategoryTransparencyDatabase =>
      'Base de données de transparence';

  @override
  String prismRecords(int count) {
    return '$count enregistrements';
  }

  @override
  String get prismNoData => 'Aucune donnée disponible pour cette catégorie.';

  @override
  String get prismExport => 'Exporter en CSV';

  @override
  String get prismExportRequested =>
      'Export demandé. Le lien de téléchargement sera bientôt disponible.';

  @override
  String get prismFilterByFamily => 'Famille d\'appareils';

  @override
  String get prismAllFamilies => 'Toutes les familles';

  @override
  String get appearance => 'Apparence';

  @override
  String get themeMode => 'Thème';

  @override
  String get themeModeSystem => 'Système';

  @override
  String get themeModeLight => 'Clair';

  @override
  String get themeModeDark => 'Sombre';

  @override
  String get shortTypeScript => 'Script';

  @override
  String get shortTypeCustom => 'Perso';

  @override
  String get shortTypeProfile => 'Profil';

  @override
  String get shortTypeInHouse => 'Interne';

  @override
  String get shortTypeVpp => 'VPP';

  @override
  String get shortTypeManaged => 'Géré';

  @override
  String get shortTypeKandji => 'Kandji';

  @override
  String get shortTypeMacos => 'macOS';

  @override
  String get shortTypeOs => 'OS';

  @override
  String get shortTypeSecurity => 'Sécurité';

  @override
  String get shortTypeAuto => 'Auto';

  @override
  String get categoryOsUpdates => 'Mises à jour OS';

  @override
  String get categoryAutoApps => 'Applications auto';

  @override
  String get autoApp => 'Application auto';

  @override
  String get fileSize => 'Taille du fichier';

  @override
  String get unzipLocation => 'Emplacement de décompression';

  @override
  String get sha256Label => 'SHA-256';

  @override
  String get fileUpdated => 'Fichier mis à jour';

  @override
  String get mdmIdentifier => 'Identifiant MDM';

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
  String get typeLabel => 'Type';

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
