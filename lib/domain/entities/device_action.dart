/// Available MDM device actions.
enum DeviceAction {
  // Common actions (all platforms)
  lock('lock'),
  restart('restart'),
  shutdown('shutdown'),
  erase('erase'),
  sendBlankPush('blankpush'),
  updateInventory('updateinventory'),
  dailyCheckIn('dailycheckin'),
  renewMdmProfile('renewmdmprofile'),
  setName('setname'),

  // Mac-only actions
  reinstallAgent('reinstallagent'),
  remoteDesktop('remotedesktop'),
  deleteUser('deleteuser'),
  unlockAccount('unlockaccount'),

  // Mobile-only actions (iPhone/iPad)
  enableLostMode('enablelostmode'),
  disableLostMode('disablelostmode'),
  playLostModeSound('playlostmodesound'),
  updateLocation('updatelocation'),
  clearPasscode('clearpasscode'),
  resetWorkProfilePasscode('resetworkprofilepasscode'),
  refreshCellularPlans('refreshcellularplans'),
  togglePersonalHotspot('togglepersonalhotspot'),
  toggleDataRoaming('toggledataroaming');

  const DeviceAction(this.apiPath);

  /// The URL path segment used in the API request.
  final String apiPath;

  /// Whether this action is destructive (requires typed confirmation).
  bool get isDestructive => switch (this) {
    DeviceAction.erase ||
    DeviceAction.shutdown ||
    DeviceAction.deleteUser => true,
    _ => false,
  };

  /// Whether this action is only for macOS devices.
  bool get isMacOnly => switch (this) {
    DeviceAction.reinstallAgent ||
    DeviceAction.remoteDesktop ||
    DeviceAction.deleteUser ||
    DeviceAction.unlockAccount => true,
    _ => false,
  };

  /// Whether this action is only for mobile devices (iPhone/iPad).
  bool get isMobileOnly => switch (this) {
    DeviceAction.enableLostMode ||
    DeviceAction.disableLostMode ||
    DeviceAction.playLostModeSound ||
    DeviceAction.updateLocation ||
    DeviceAction.clearPasscode ||
    DeviceAction.resetWorkProfilePasscode ||
    DeviceAction.refreshCellularPlans ||
    DeviceAction.togglePersonalHotspot ||
    DeviceAction.toggleDataRoaming => true,
    _ => false,
  };
}
