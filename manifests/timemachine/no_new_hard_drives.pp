# Public: Prevent Time Machine from prompting to use new hard drives as backup volume.
class osx::timemachine::no_new_hard_drives {
  boxen::osx_defaults { 'Prevent Time Machine from prompting to use new hard drives as backup volume':
    user   => $::boxen_user,
    key    => 'DoNotOfferNewDisksForBackup',
    domain => 'com.apple.TimeMachine',
    value  => true;
  }
}
