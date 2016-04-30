# Public: Control dashboard state (default = 0).
class osx::dock::dashboard($state = 0) {
  include osx::dock

  boxen::osx_defaults { 'Control dashboard state':
    user   => $::boxen_user,
    key    => 'dashboard-enabled-state',
    domain => 'com.apple.dashboard',
    value  => $state,
    notify => Exec['killall Dock'];
  }
}
