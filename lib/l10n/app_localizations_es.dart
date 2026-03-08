// ignore: unused_import
import 'package:intl/intl.dart' as intl;
import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Spanish Castilian (`es`).
class AppLocalizationsEs extends AppLocalizations {
  AppLocalizationsEs([String locale = 'es']) : super(locale);

  @override
  String get appTitle => 'FleetPilot';

  @override
  String get navDevices => 'Dispositivos';

  @override
  String get navBlueprints => 'Blueprints';

  @override
  String get navUsers => 'Usuarios';

  @override
  String get navSettings => 'Ajustes';

  @override
  String get welcomeTitle => 'Bienvenido a FleetPilot';

  @override
  String get welcomeSubtitle =>
      'Administra tu flota de dispositivos Apple desde cualquier lugar.';

  @override
  String get addProfile => 'Agregar perfil';

  @override
  String get editProfile => 'Editar perfil';

  @override
  String get displayName => 'Nombre visible';

  @override
  String get displayNameHint => 'p. ej. Acme Corp — Prod';

  @override
  String get region => 'Región';

  @override
  String get regionUs => 'EE. UU.';

  @override
  String get regionEu => 'UE';

  @override
  String get subdomain => 'Subdominio';

  @override
  String get subdomainHint => 'tu-tenant';

  @override
  String get apiToken => 'Token de API';

  @override
  String get apiTokenHint => 'Pega tu token de API aquí';

  @override
  String urlPreview(String url) {
    return 'URL de API: $url';
  }

  @override
  String get verifyAndSave => 'Verificar y guardar';

  @override
  String get verifying => 'Verificando conexión...';

  @override
  String get connectionSuccess => '¡Conexión verificada correctamente!';

  @override
  String get errorInvalidToken =>
      'Token de API no válido. Revisa tu token en la consola web.';

  @override
  String get errorInsufficientPermissions =>
      'El token no tiene permisos suficientes. Asegúrate de que el token tenga acceso de lectura a Dispositivos.';

  @override
  String get errorNetworkUnreachable =>
      'No se pudo contactar la API. Verifica tu conexión a internet y el subdominio.';

  @override
  String get errorNotFound => 'El recurso solicitado no fue encontrado.';

  @override
  String get errorValidation =>
      'La solicitud contenía datos no válidos. Revisa tu entrada.';

  @override
  String get errorRateLimit =>
      'Demasiadas solicitudes. Espera un momento e inténtalo de nuevo.';

  @override
  String get errorServer =>
      'El servidor encontró un error. Inténtalo de nuevo más tarde.';

  @override
  String get errorUnexpected =>
      'Ocurrió un error inesperado. Inténtalo de nuevo.';

  @override
  String get retry => 'Reintentar';

  @override
  String get cancel => 'Cancelar';

  @override
  String get delete => 'Eliminar';

  @override
  String get save => 'Guardar';

  @override
  String get search => 'Buscar';

  @override
  String get searchDevices => 'Buscar dispositivos...';

  @override
  String get filterAll => 'Todos';

  @override
  String get filterMac => 'Mac';

  @override
  String get filterIphone => 'iPhone';

  @override
  String get filterIpad => 'iPad';

  @override
  String get filterAppleTv => 'Apple TV';

  @override
  String get allBlueprints => 'Todos los Blueprints';

  @override
  String loadingDevices(int count) {
    return 'Cargando $count dispositivos...';
  }

  @override
  String deviceCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count dispositivos',
      one: '1 dispositivo',
      zero: 'Sin dispositivos',
    );
    return '$_temp0';
  }

  @override
  String get noDevicesFound => 'No se encontraron dispositivos';

  @override
  String get noDevicesFoundMessage => 'Intenta ajustar tu búsqueda o filtros.';

  @override
  String lastCheckIn(String time) {
    return 'Último registro: $time';
  }

  @override
  String get compliancePass => 'Aprobado';

  @override
  String get complianceFail => 'No aprobado';

  @override
  String get compliancePending => 'Pendiente';

  @override
  String get deviceDetails => 'Detalles del dispositivo';

  @override
  String get serialNumber => 'Número de serie';

  @override
  String get model => 'Modelo';

  @override
  String get osVersion => 'Versión del SO';

  @override
  String get assetTag => 'Etiqueta de activo';

  @override
  String get blueprint => 'Blueprint';

  @override
  String get enrolledDate => 'Inscrito';

  @override
  String get assignedUser => 'Usuario asignado';

  @override
  String get actions => 'Acciones';

  @override
  String get actionLock => 'Bloquear';

  @override
  String get actionRestart => 'Reiniciar';

  @override
  String get actionShutdown => 'Apagar';

  @override
  String get actionErase => 'Borrar';

  @override
  String get actionBlankPush => 'Enviar push vacío';

  @override
  String get actionReinstallAgent => 'Reinstalar agente';

  @override
  String get actionUpdateInventory => 'Actualizar inventario';

  @override
  String get actionRecoveryLock => 'Recovery Lock';

  @override
  String get actionRemoteDesktopEnable => 'Activar escritorio remoto';

  @override
  String get actionRemoteDesktopDisable => 'Desactivar escritorio remoto';

  @override
  String get actionLostMode => 'Activar modo perdido';

  @override
  String get destructiveActionTitle => 'Confirmar acción destructiva';

  @override
  String destructiveActionMessage(String deviceName) {
    return 'Esta acción no se puede deshacer. Escribe \"$deviceName\" para confirmar.';
  }

  @override
  String get destructiveActionHint =>
      'Escribe el nombre del dispositivo para confirmar';

  @override
  String get confirm => 'Confirmar';

  @override
  String get actionSuccess => 'Acción completada correctamente.';

  @override
  String get actionFailed => 'La acción falló. Inténtalo de nuevo.';

  @override
  String get biometricReason => 'Autentícate para acceder a FleetPilot';

  @override
  String get biometricReasonSecrets =>
      'Autentícate para ver datos confidenciales';

  @override
  String get biometricReasonDestructive =>
      'Autentícate para realizar esta acción';

  @override
  String get biometricFailed => 'La autenticación falló. Inténtalo de nuevo.';

  @override
  String get profiles => 'Perfiles';

  @override
  String activeProfile(String name) {
    return 'Activo: $name';
  }

  @override
  String get switchProfile => 'Cambiar perfil';

  @override
  String get deleteProfile => 'Eliminar perfil';

  @override
  String get deleteProfileConfirm =>
      '¿Estás seguro de que deseas eliminar este perfil? Esta acción no se puede deshacer.';

  @override
  String get noProfiles => 'No hay perfiles configurados';

  @override
  String get settings => 'Ajustes';

  @override
  String get about => 'Acerca de';

  @override
  String version(String version) {
    return 'Versión $version';
  }

  @override
  String get validationRequired => 'Este campo es obligatorio.';

  @override
  String get validationSubdomain =>
      'Solo se permiten letras, números y guiones. Sin guiones al inicio o al final.';

  @override
  String get complianceStatus => 'Estado de cumplimiento';

  @override
  String get platform => 'Plataforma';

  @override
  String get deviceName => 'Nombre del dispositivo';

  @override
  String get searchUsers => 'Buscar usuarios...';

  @override
  String userCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count usuarios',
      one: '1 usuario',
      zero: 'Sin usuarios',
    );
    return '$_temp0';
  }

  @override
  String get noUsersFound => 'No se encontraron usuarios';

  @override
  String get noUsersFoundMessage => 'Intenta ajustar tu búsqueda o filtros.';

  @override
  String get showArchived => 'Mostrar archivados';

  @override
  String get archived => 'Archivado';

  @override
  String get email => 'Correo electrónico';

  @override
  String blueprintCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count blueprints',
      one: '1 blueprint',
      zero: 'Sin blueprints',
    );
    return '$_temp0';
  }

  @override
  String get noBlueprintsFound => 'No se encontraron blueprints';

  @override
  String get noBlueprintsFoundMessage =>
      'Aún no se han configurado blueprints.';

  @override
  String get enrollmentActive => 'Inscripción activa';

  @override
  String get enrollmentInactive => 'Inscripción inactiva';

  @override
  String get tabOverview => 'Resumen';

  @override
  String get tabApps => 'Apps';

  @override
  String get tabStatus => 'Estado';

  @override
  String get tabActivity => 'Actividad';

  @override
  String get tabCommands => 'Comandos';

  @override
  String get hardware => 'Hardware';

  @override
  String get security => 'Seguridad';

  @override
  String get totalStorage => 'Almacenamiento total';

  @override
  String get availableStorage => 'Almacenamiento disponible';

  @override
  String get totalRam => 'RAM total';

  @override
  String get wifiMac => 'Dirección MAC Wi-Fi';

  @override
  String get encryption => 'Cifrado';

  @override
  String get passcode => 'Código de acceso';

  @override
  String get noAppsFound => 'No se encontraron apps';

  @override
  String get noActivityFound => 'No se encontró actividad';

  @override
  String get noCommandsFound => 'No se encontraron comandos';

  @override
  String get libraryItems => 'Elementos de biblioteca';

  @override
  String get parameters => 'Parámetros';

  @override
  String get imei => 'IMEI';

  @override
  String get osBuild => 'Compilación del SO';

  @override
  String get cellular => 'Celular';

  @override
  String appCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count apps',
      one: '1 app',
      zero: 'Sin apps',
    );
    return '$_temp0';
  }

  @override
  String get sortAZ => 'A → Z';

  @override
  String get sortZA => 'Z → A';

  @override
  String get userDetails => 'Detalles del usuario';

  @override
  String get jobTitle => 'Cargo';

  @override
  String get department => 'Departamento';

  @override
  String get createdAt => 'Creado';

  @override
  String get updatedAt => 'Actualizado';

  @override
  String get assignedDevices => 'Dispositivos asignados';

  @override
  String get noAssignedDevices =>
      'No hay dispositivos asignados a este usuario.';

  @override
  String get userInfo => 'Información del usuario';

  @override
  String get navMore => 'Más';

  @override
  String get tabSecrets => 'Secretos';

  @override
  String get filevaultKey => 'Clave de recuperación de FileVault';

  @override
  String get unlockPin => 'PIN de desbloqueo';

  @override
  String get recoveryPassword => 'Contraseña de Recovery Lock';

  @override
  String get bypassCode => 'Código de omisión del bloqueo de activación';

  @override
  String get noSecretsFound =>
      'No hay secretos disponibles para este dispositivo.';

  @override
  String get secretCopied => 'Secreto copiado al portapapeles';

  @override
  String get threats => 'Amenazas';

  @override
  String get noThreatsFound => 'No se detectaron amenazas.';

  @override
  String get vulnerabilities => 'Vulnerabilidades';

  @override
  String get noVulnerabilitiesFound => 'No se detectaron vulnerabilidades.';

  @override
  String get aboutApp => 'Acerca de FleetPilot';

  @override
  String get aboutDescription =>
      'FleetPilot es una aplicación de gestión MDM de código abierto para Kandji.';

  @override
  String get tapToCopy => 'Toca para copiar';

  @override
  String get devices => 'Dispositivos';

  @override
  String get severity => 'Gravedad';

  @override
  String get tabLocation => 'Ubicación';

  @override
  String get locationNotAvailable =>
      'Los datos de ubicación no están disponibles para este dispositivo.';

  @override
  String get lostModeEnabled => 'Modo perdido activado';

  @override
  String get noLibraryItemsFound =>
      'No se encontraron elementos de biblioteca.';

  @override
  String get licenses => 'Licencias';

  @override
  String get lostModeMessage => 'Mensaje de modo perdido';

  @override
  String get lostModePhone => 'Número de teléfono';

  @override
  String get lostModeFootnote =>
      'Mensaje y número de teléfono opcionales mostrados en el dispositivo';

  @override
  String get supervised => 'Supervisado';

  @override
  String get unsupervised => 'No supervisado';

  @override
  String get filterSupervised => 'Supervisados';

  @override
  String get filterUnsupervised => 'No supervisados';

  @override
  String get language => 'Idioma';

  @override
  String get languageSystem => 'Predeterminado del sistema';

  @override
  String get actionDisableLostMode => 'Desactivar modo perdido';

  @override
  String get actionClearPasscode => 'Borrar código de acceso';

  @override
  String get filterLostMode => 'Modo perdido';

  @override
  String get lostMode => 'Modo perdido';

  @override
  String get sectionManagement => 'Gestión';

  @override
  String get sectionStatus => 'Estado';

  @override
  String get statusMissing => 'Ausente';

  @override
  String get statusRemoved => 'Eliminado';

  @override
  String get agent => 'Agente';

  @override
  String get identifier => 'Identificador';

  @override
  String get processor => 'Procesador';

  @override
  String get hardwareUuid => 'UUID de hardware';

  @override
  String get devicePosture => 'Postura del dispositivo';

  @override
  String get unknownDevice => 'Dispositivo desconocido';

  @override
  String get securityAppLock => 'Bloqueo de app';

  @override
  String get securityAppLockDescription =>
      'Establece un PIN de 6 dígitos para proteger la app. La autenticación biométrica se puede activar después de configurar un PIN.';

  @override
  String get securityAppLockActive => 'Bloqueo de app activado';

  @override
  String get securityAppLockInactive => 'Sin bloqueo de app configurado';

  @override
  String get securitySetPin => 'Establecer PIN';

  @override
  String get securityChangePin => 'Cambiar PIN';

  @override
  String get securityRemovePin => 'Eliminar PIN';

  @override
  String get securityCurrentPin => 'PIN actual';

  @override
  String get securityNewPin => 'Nuevo PIN';

  @override
  String get securityConfirmPin => 'Ingresa el PIN nuevamente para confirmar.';

  @override
  String get securityPinLength => 'El PIN debe tener 6 dígitos.';

  @override
  String get securityPinMismatch => 'Los PINs no coinciden.';

  @override
  String get securityPinWrong => 'PIN incorrecto.';

  @override
  String get securityPinSet => 'El PIN ha sido establecido.';

  @override
  String get securityPinChanged => 'El PIN ha sido cambiado.';

  @override
  String get securityPinRemoved =>
      'El PIN y el bloqueo de app han sido eliminados.';

  @override
  String get securityBiometric => 'Biométrico';

  @override
  String get securityBiometricDescription =>
      'Usa huella digital o reconocimiento facial para desbloquear la app en lugar de ingresar el PIN.';

  @override
  String get securityBiometricEnable => 'Desbloqueo biométrico';

  @override
  String get securityBiometricActive => 'Activo';

  @override
  String get securityBiometricInactive => 'Inactivo';

  @override
  String get securityBiometricUnavailable =>
      'La autenticación biométrica no está disponible en este dispositivo.';

  @override
  String get securityNext => 'Siguiente';

  @override
  String get actionRenewMdm => 'Renovar perfil MDM';

  @override
  String get actionSetName => 'Establecer nombre del dispositivo';

  @override
  String get actionSetNameHint => 'Ingresa el nuevo nombre del dispositivo';

  @override
  String get actionDeleteUser => 'Eliminar usuario';

  @override
  String get actionDeleteUserName => 'Nombre de usuario';

  @override
  String get actionDeleteAllUsers => 'Eliminar todos los usuarios';

  @override
  String get actionForceDeletion => 'Forzar eliminación';

  @override
  String get actionUnlockAccount => 'Desbloquear cuenta';

  @override
  String get actionPlayLostModeSound => 'Reproducir sonido de modo perdido';

  @override
  String get actionUpdateLocation => 'Actualizar ubicación';

  @override
  String get erasePin => 'PIN de 6 dígitos';

  @override
  String get erasePinHint => 'Requerido para dispositivos móviles';

  @override
  String get erasePreserveDataPlan => 'Preservar plan de datos';

  @override
  String get eraseDisallowProximitySetup =>
      'No permitir configuración por proximidad';

  @override
  String get eraseReturnToService => 'Volver al servicio';

  @override
  String get lockMessage => 'Mensaje de bloqueo (opcional)';

  @override
  String get lockPhone => 'Número de teléfono';

  @override
  String get restartRebuildKernelCache => 'Reconstruir caché del kernel';

  @override
  String get restartNotifyUser => 'Notificar al usuario';

  @override
  String get actionRemoteDesktop => 'Escritorio remoto';

  @override
  String get tabNotes => 'Notas';

  @override
  String get noNotesFound => 'Sin notas aún';

  @override
  String get addNote => 'Agregar nota';

  @override
  String get editNote => 'Editar nota';

  @override
  String get deleteNote => 'Eliminar nota';

  @override
  String get deleteNoteConfirm =>
      '¿Estás seguro de que deseas eliminar esta nota?';

  @override
  String get noteContent => 'Contenido de la nota';

  @override
  String get noteSaved => 'Nota guardada.';

  @override
  String get noteDeleted => 'Nota eliminada.';

  @override
  String get editDevice => 'Editar dispositivo';

  @override
  String get deviceUpdated => 'Dispositivo actualizado.';

  @override
  String get deleteDevice => 'Eliminar dispositivo';

  @override
  String get deleteDeviceConfirm =>
      'Esto eliminará permanentemente el dispositivo del MDM. Esta acción no se puede deshacer.';

  @override
  String get deviceDeleted => 'Dispositivo eliminado.';

  @override
  String get cancelLostMode => 'Cancelar modo perdido';

  @override
  String get cancelLostModeConfirm =>
      '¿Cancelar la solicitud de modo perdido pendiente?';

  @override
  String get lostModeCancelled => 'Modo perdido cancelado.';

  @override
  String get tags => 'Etiquetas';

  @override
  String get noTags => 'Sin etiquetas';

  @override
  String get addTag => 'Agregar etiqueta';

  @override
  String get tagName => 'Nombre de etiqueta';

  @override
  String get manageTags => 'Gestionar etiquetas';

  @override
  String get auditLog => 'Registro de auditoría';

  @override
  String get noAuditEvents => 'No se encontraron eventos de auditoría';

  @override
  String get actionDailyCheckIn => 'Check-in diario';

  @override
  String get licensing => 'Licencias';

  @override
  String get deviceLimit => 'Límite de dispositivos';

  @override
  String get devicesUsed => 'Dispositivos usados';

  @override
  String get licenseType => 'Tipo de licencia';

  @override
  String get appleDevices => 'Dispositivos Apple';

  @override
  String get deleteUser => 'Eliminar usuario';

  @override
  String get deleteUserConfirm =>
      '¿Estás seguro de que deseas eliminar este usuario? Esta acción no se puede deshacer.';

  @override
  String get userDeleted => 'Usuario eliminado.';

  @override
  String get createBlueprint => 'Crear blueprint';

  @override
  String get editBlueprint => 'Editar blueprint';

  @override
  String get deleteBlueprint => 'Eliminar blueprint';

  @override
  String get deleteBlueprintConfirm =>
      'Eliminar este blueprint cancelará la inscripción de todos los dispositivos asignados. Esta acción no se puede deshacer.';

  @override
  String get blueprintCreated => 'Blueprint creado.';

  @override
  String get blueprintUpdated => 'Blueprint actualizado.';

  @override
  String get blueprintDeleted => 'Blueprint eliminado.';

  @override
  String get blueprintName => 'Nombre del blueprint';

  @override
  String get blueprintDescription => 'Descripción';

  @override
  String get enrollmentCode => 'Código de inscripción';

  @override
  String get assignLibraryItem => 'Asignar elemento de biblioteca';

  @override
  String get removeLibraryItem => 'Eliminar elemento de biblioteca';

  @override
  String get libraryItemAssigned => 'Elemento de biblioteca asignado.';

  @override
  String get libraryItemRemoved => 'Elemento de biblioteca eliminado.';

  @override
  String get lostModeDetails => 'Detalles del modo perdido';

  @override
  String get lostModeEnabledBy => 'Activado por';

  @override
  String get lostModeEnabledAt => 'Activado el';

  @override
  String get searchBlueprints => 'Buscar blueprints...';

  @override
  String get searchVulnerabilities => 'Buscar vulnerabilidades...';

  @override
  String get searchThreats => 'Buscar amenazas...';

  @override
  String get searchAuditLog => 'Buscar registro de auditoría...';

  @override
  String get filterCritical => 'Crítico';

  @override
  String get filterHigh => 'Alto';

  @override
  String get filterMedium => 'Medio';

  @override
  String get filterLow => 'Bajo';

  @override
  String get filterClearAll => 'Limpiar todo';

  @override
  String get filterTitle => 'Filtros';

  @override
  String get filterApply => 'Aplicar';

  @override
  String get filterPlatform => 'Plataforma';

  @override
  String get filterSupervision => 'Supervisión';

  @override
  String get filterStatus => 'Estado';

  @override
  String get adeIntegrations => 'Integraciones ADE';

  @override
  String get noAdeIntegrations => 'No se encontraron integraciones ADE.';

  @override
  String get adeDevices => 'Dispositivos ADE';

  @override
  String get noAdeDevices => 'No se encontraron dispositivos ADE.';

  @override
  String get tokenExpiry => 'Expiración del token';

  @override
  String get tokenValid => 'Token válido';

  @override
  String get tokenExpired => 'Token expirado';

  @override
  String get orgName => 'Organización';

  @override
  String get defaultBlueprint => 'Blueprint predeterminado';

  @override
  String get renewToken => 'Renovar token';

  @override
  String get publicKey => 'Clave pública';

  @override
  String get vulnerabilityDetections => 'Detecciones de vulnerabilidades';

  @override
  String get noDetectionsFound => 'No se encontraron detecciones.';

  @override
  String get behavioralDetections => 'Detecciones de comportamiento';

  @override
  String get noBehavioralDetections =>
      'No se encontraron detecciones de comportamiento.';

  @override
  String get searchBehavioralDetections => 'Buscar detecciones...';

  @override
  String get affectedDevices => 'Dispositivos afectados';

  @override
  String get noAffectedDevices =>
      'No se encontraron dispositivos afectados. Los dispositivos anteriormente afectados pueden haber sido eliminados.';

  @override
  String get affectedSoftware => 'Software afectado';

  @override
  String get blueprintTemplates => 'Plantillas de blueprint';

  @override
  String get noTemplatesFound => 'No se encontraron plantillas.';

  @override
  String get otaEnrollmentProfile => 'Perfil de inscripción OTA';

  @override
  String get libraryItemActivity => 'Actividad';

  @override
  String get libraryItemDeploymentStatus => 'Estado de despliegue';

  @override
  String get noActivityFound2 => 'No se encontró actividad.';

  @override
  String get noStatusFound => 'No se encontró estado de despliegue.';

  @override
  String detectionCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count detecciones',
      one: '1 detección',
      zero: 'Sin detecciones',
    );
    return '$_temp0';
  }

  @override
  String integrationCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count integraciones',
      one: '1 integración',
      zero: 'Sin integraciones',
    );
    return '$_temp0';
  }

  @override
  String get vulnerabilityDetail => 'Detalle de vulnerabilidad';

  @override
  String get description => 'Descripción';

  @override
  String get firstDetected => 'Primera detección';

  @override
  String get lastDetected => 'Última detección';

  @override
  String softwareCount(int count) {
    String _temp0 = intl.Intl.pluralLogic(
      count,
      locale: localeName,
      other: '$count software',
      one: '1 software',
      zero: 'Sin software',
    );
    return '$_temp0';
  }

  @override
  String get editIntegration => 'Editar integración';

  @override
  String get deleteIntegration => 'Eliminar integración';

  @override
  String get deleteIntegrationConfirm =>
      '¿Está seguro de que desea eliminar esta integración ADE? Esta acción no se puede deshacer.';

  @override
  String get integrationDeleted => 'Integración eliminada.';

  @override
  String get integrationUpdated => 'Integración actualizada.';

  @override
  String get defaultBlueprintId => 'ID de Blueprint predeterminado';

  @override
  String get phone => 'Teléfono';

  @override
  String get downloadOtaProfile => 'Descargar perfil de inscripción';

  @override
  String get otaProfileCopied =>
      'Perfil de inscripción copiado al portapapeles.';

  @override
  String get noOtaProfile => 'No hay perfil de inscripción disponible.';

  @override
  String get createTag => 'Crear etiqueta';

  @override
  String get editTag => 'Editar etiqueta';

  @override
  String get deleteTag => 'Eliminar etiqueta';

  @override
  String get deleteTagConfirm =>
      '¿Está seguro de que desea eliminar esta etiqueta?';

  @override
  String get tagColor => 'Color';

  @override
  String get tagCreated => 'Etiqueta creada.';

  @override
  String get tagUpdated => 'Etiqueta actualizada.';

  @override
  String get tagDeleted => 'Etiqueta eliminada.';

  @override
  String get noTagsFound => 'No se encontraron etiquetas.';

  @override
  String get libraryItemDetail => 'Elemento de biblioteca';

  @override
  String get viewActivity => 'Ver actividad';

  @override
  String get viewStatus => 'Ver estado';

  @override
  String get installations => 'Instalaciones';

  @override
  String get createAdeIntegration => 'Crear integración ADE';

  @override
  String get adeCreateDescription =>
      'Suba un archivo de token de servidor (.p7m) de Apple Business Manager para crear una nueva integración ADE.';

  @override
  String get selectTokenFile => 'Seleccionar archivo de token';

  @override
  String tokenFileSelected(String name) {
    return 'Archivo de token: $name';
  }

  @override
  String get noTokenFileSelected => 'Ningún archivo de token seleccionado';

  @override
  String get integrationCreated => 'Integración creada.';

  @override
  String get create => 'Crear';

  @override
  String get step1GetPublicKey => 'Paso 1: Descargar clave pública';

  @override
  String get step1Description =>
      'Copie la clave pública y súbala a Apple Business Manager.';

  @override
  String get step2UploadToken => 'Paso 2: Subir token de servidor';

  @override
  String get step2Description =>
      'Seleccione el archivo de token .p7m descargado de Apple.';

  @override
  String get step3Configure => 'Paso 3: Configurar';

  @override
  String get publicKeyCopied => 'Clave pública copiada al portapapeles.';

  @override
  String get renewTokenDescription =>
      'Suba un nuevo archivo de token .p7m para renovar el token de esta integración.';

  @override
  String get tokenRenewed => 'Token renovado.';

  @override
  String get aboutLinks => 'Enlaces';

  @override
  String get aboutWebsite => 'Sitio web';

  @override
  String get aboutWebsiteDomain => 'kiefer-networks.de';

  @override
  String get aboutSourceCode => 'Código fuente';

  @override
  String get aboutGitHub => 'GitHub';

  @override
  String get aboutTechStack => 'Tecnología';

  @override
  String get aboutFramework => 'Framework';

  @override
  String get aboutStateManagement => 'Gestión de estado';

  @override
  String get aboutArchitecture => 'Arquitectura';

  @override
  String get aboutApi => 'API';

  @override
  String get aboutDataClasses => 'Clases de datos';

  @override
  String get aboutNavigationLabel => 'Navegación';

  @override
  String get aboutOpenSourceLicenses => 'Licencias de código abierto';

  @override
  String get aboutShowHide => 'Alternar visibilidad';

  @override
  String get editProfileTitle => 'Editar conexión';

  @override
  String get editProfileSubtitle =>
      'Actualiza la configuración de conexión de tu tenant.';

  @override
  String get apiTokenHintEdit => 'Dejar vacío para conservar el token actual';

  @override
  String get profileUpdated => 'Perfil actualizado.';

  @override
  String profileSwitched(String name) {
    return 'Cambiado a $name.';
  }

  @override
  String get securityAutoLock => 'Bloqueo automático';

  @override
  String get securityAutoLockDescription =>
      'Requerir autenticación automáticamente después de que la app estuvo en segundo plano.';

  @override
  String get timeoutImmediately => 'Inmediatamente';

  @override
  String get timeoutSeconds30 => 'Después de 30 segundos';

  @override
  String get timeoutSeconds60 => 'Después de 1 minuto';

  @override
  String get timeoutSeconds120 => 'Después de 2 minutos';

  @override
  String get timeoutMinutes5 => 'Después de 5 minutos';

  @override
  String get filterBlueprint => 'Blueprint';

  @override
  String get noBlueprint => 'Sin Blueprint';

  @override
  String get presetSaveFilter => 'Guardar filtro predefinido';

  @override
  String get presetLoad => 'Cargar predefinido';

  @override
  String get presetName => 'Nombre del predefinido';

  @override
  String get presetNameHint => 'p. ej. Macs no supervisados';

  @override
  String get presetSaved => 'Filtro predefinido guardado.';

  @override
  String get presetDeleted => 'Filtro predefinido eliminado.';

  @override
  String presetApplied(String name) {
    return 'Predefinido \"$name\" aplicado.';
  }

  @override
  String get presetNoPresets => 'Sin predefinidos guardados';

  @override
  String get presetNoPresetsMessage =>
      'Guarda tus filtros actuales como predefinido para acceso rápido.';

  @override
  String get presetDeleteConfirm => '¿Eliminar este predefinido?';

  @override
  String get presetNameRequired => 'Ingresa un nombre para el predefinido.';

  @override
  String selectedCount(int count) {
    return '$count seleccionados';
  }

  @override
  String get selectAll => 'Seleccionar todo';

  @override
  String get deselectAll => 'Deseleccionar todo';

  @override
  String get bulkActions => 'Acciones';

  @override
  String bulkActionsTitle(int count) {
    return 'Acciones para $count dispositivos';
  }

  @override
  String get bulkActionAssignTag => 'Asignar etiqueta';

  @override
  String get bulkActionAssignTagDescription =>
      'Agregar una etiqueta a todos los dispositivos seleccionados';

  @override
  String get bulkActionAssignBlueprint => 'Asignar blueprint';

  @override
  String get bulkActionAssignBlueprintDescription =>
      'Mover los dispositivos seleccionados a un blueprint';

  @override
  String get bulkActionLock => 'Bloquear dispositivos';

  @override
  String get bulkActionLockDescription =>
      'Bloquear de forma remota todos los dispositivos seleccionados';

  @override
  String get bulkActionRestart => 'Reiniciar dispositivos';

  @override
  String get bulkActionRestartDescription =>
      'Reiniciar todos los dispositivos seleccionados';

  @override
  String bulkRestartConfirmMessage(int count) {
    return '¿Está seguro de que desea reiniciar $count dispositivos?';
  }

  @override
  String bulkActionSuccess(int count) {
    return 'Acción completada con éxito en $count dispositivos.';
  }

  @override
  String bulkActionPartialSuccess(int success, int failed) {
    return 'Completado en $success dispositivos, $failed fallidos.';
  }

  @override
  String bulkProgressStatus(int completed, int total) {
    return '$completed de $total completados';
  }

  @override
  String get biometricReasonBulkAction =>
      'Autenticarse para realizar la acción masiva';

  @override
  String get lockPin => 'PIN de bloqueo (opcional)';

  @override
  String get noTagsAvailable =>
      'No hay etiquetas disponibles. Cree etiquetas en la consola de Kandji.';

  @override
  String get noBlueprintsAvailable => 'No hay blueprints disponibles.';

  @override
  String get selectADevice => 'Seleccionar un dispositivo';

  @override
  String get selectABlueprint => 'Seleccionar un blueprint';

  @override
  String get clearSearch => 'Borrar búsqueda';

  @override
  String get refresh => 'Actualizar';

  @override
  String get moreActions => 'Más acciones';

  @override
  String get close => 'Cerrar';

  @override
  String get onboardingSkip => 'Omitir';

  @override
  String get onboardingNext => 'Siguiente';

  @override
  String get onboardingGetStarted => 'Comenzar';

  @override
  String get onboardingWelcomeTitle => 'Bienvenido a FleetPilot';

  @override
  String get onboardingWelcomeSubtitle =>
      'Tu centro de mando móvil para la gestión de flotas de dispositivos Apple. Supervisa, gestiona y protege toda tu flota desde cualquier lugar.';

  @override
  String get onboardingDevicesTitle => 'Gestión de dispositivos';

  @override
  String get onboardingDevicesSubtitle =>
      'Visibilidad y control total sobre cada dispositivo de tu flota.';

  @override
  String get onboardingDevicesFeature1 =>
      'Ver todos los iPhones, iPads, Macs y Apple TVs registrados';

  @override
  String get onboardingDevicesFeature2 =>
      'Enviar comandos remotos: bloquear, reiniciar, borrar y más';

  @override
  String get onboardingDevicesFeature3 =>
      'Seguir blueprints, apps y estado de cumplimiento';

  @override
  String get onboardingSecurityTitle => 'Diseñado para la seguridad';

  @override
  String get onboardingSecuritySubtitle =>
      'Los datos de tu flota están protegidos con múltiples capas de seguridad.';

  @override
  String get onboardingSecurityFeature1 =>
      'Autenticación biométrica con Face ID o huella digital';

  @override
  String get onboardingSecurityFeature2 =>
      'Bloqueo con PIN de 6 dígitos para acceder a la app';

  @override
  String get onboardingSecurityFeature3 =>
      'Bloqueo automático de sesión tras tiempo de espera';

  @override
  String get onboardingReadyTitle => 'Listo para empezar';

  @override
  String get onboardingReadySubtitle =>
      'Conecta tu tenant de Kandji para comenzar a gestionar tu flota de dispositivos Apple. A continuación, configurarás tu conexión API y PIN de seguridad.';

  @override
  String get searchTags => 'Buscar etiquetas';

  @override
  String tagDeviceCount(int count) {
    return '$count dispositivos';
  }

  @override
  String get sortTitle => 'Ordenar';

  @override
  String get sortDirection => 'Dirección de orden';

  @override
  String get ascending => 'Ascendente';

  @override
  String get descending => 'Descendente';

  @override
  String get filterSeverity => 'Severidad';

  @override
  String get filterSort => 'Filtrar y ordenar';

  @override
  String get statusQuarantined => 'En cuarentena';

  @override
  String get statusNotQuarantined => 'Sin cuarentena';

  @override
  String get statusDetected => 'Detectado';

  @override
  String get statusReleased => 'Liberado';

  @override
  String get severityCritical => 'Crítico';

  @override
  String get severityHigh => 'Alto';

  @override
  String get severityMedium => 'Medio';

  @override
  String get severityLow => 'Bajo';

  @override
  String threatCount(int count) {
    return '$count amenazas';
  }

  @override
  String behavioralDetectionCount(int count) {
    return '$count detecciones';
  }

  @override
  String get downloadPublicKey => 'Descargar';

  @override
  String get publicKeySaved => 'Clave pública guardada';

  @override
  String get sortBy => 'Ordenar por';

  @override
  String get sortByCvss => 'Puntuación CVSS';

  @override
  String get sortByDeviceCount => 'Dispositivos afectados';

  @override
  String get sortByCveId => 'ID de CVE';

  @override
  String vulnCount(int count) {
    return '$count vulnerabilidades';
  }

  @override
  String get assignTags => 'Etiquetas';

  @override
  String get noTagsAvailableMessage =>
      'No hay etiquetas disponibles. Cree etiquetas primero.';

  @override
  String get failedToLoadTags => 'No se pudieron cargar las etiquetas';
}
