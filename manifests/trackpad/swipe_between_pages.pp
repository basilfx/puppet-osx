# Public: Enable/disable swipe between pages for trackpads (default = (disabled, 0)). Requires re-login.
class osx::trackpad::swipe_between_pages($enabled = false, $value = 0) {
  boxen::osx_defaults { 'Set two or three finger gesture for trackpad':
    user   => $::boxen_user,
    domain => 'com.apple.AppleMultitouchTrackpad',
    key    => 'TrackpadThreeFingerHorizSwipeGesture',
    value  => $value,
    type   => 'int'
  }

  boxen::osx_defaults { 'Set two or three finger gesture for Bluetooth trackpad':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadThreeFingerHorizSwipeGesture',
    value  => $value,
    type   => 'int'
  }
}
