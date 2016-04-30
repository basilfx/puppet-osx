# Public: Enable one or two button mode for multitouch trackpad (default = (0, 2)). Requires re-login.
class osx::trackpad::button_mode($mode = 0, $position = 2) {
  boxen::osx_defaults { 'Set the button mode for trackpad':
    user   => $::boxen_user,
    domain => 'com.apple.AppleMultitouchTrackpad',
    key    => 'TrackpadRightClick',
    value  => $mode,
    type   => 'int'
  }

  boxen::osx_defaults { 'Set the button mode for Bluetooth trackpad':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadRightClick',
    value  => $mode,
    type   => 'int'
  }

  boxen::osx_defaults { 'Set the trackpad right click position':
    user   => $::boxen_user,
    domain => 'com.apple.AppleMultitouchTrackpad',
    key    => 'TrackpadCornerSecondaryClick',
    value  => $position,
    type   => 'int'
  }

  boxen::osx_defaults { 'Set the Bluetooth trackpad right click position':
    user   => $::boxen_user,
    domain => 'com.apple.driver.AppleBluetoothMultitouch.trackpad',
    key    => 'TrackpadCornerSecondaryClick',
    value  => $position,
    type   => 'int'
  }
}
