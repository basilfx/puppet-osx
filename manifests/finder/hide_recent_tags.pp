# Public: hide recent tags
class osx::finder::hide_recent_tags {
  include osx::finder

  boxen::osx_defaults { 'show recent tags':
    user   => $::boxen_user,
    key    => 'ShowRecentTags',
    domain => 'com.apple.finder',
    value  => false,
    notify => Exec['killall Finder'];
  }
}
