# Public: Enable subpixel font rendering on non-Apple LCDs
class osx::global::enable_subpixel_rendering {
  boxen::osx_defaults { 'Enable subpixel font rendering on non-Apple LCDs':
    ensure => present,
    domain => 'NSGlobalDomain',
    key    => 'AppleFontSmoothing',
    value  => 2,
    user   => $::boxen_user;
  }
}
