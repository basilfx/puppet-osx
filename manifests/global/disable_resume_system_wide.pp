# Public: Disables resume system-wide
class osx::global::disable_resume_system_wide {
  boxen::osx_defaults { 'Disable resume system-wide':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'NSQuitAlwaysKeepsWindows',
    value  => false,
    user   => $::boxen_user;
  }
}
