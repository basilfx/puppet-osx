# Public: Search current folder first.
class osx::finder::search_current_folder_first {
  include osx::finder

  boxen::osx_defaults { 'Search current folder first':
    user   => $::boxen_user,
    domain => 'com.apple.finder',
    key    => 'FXDefaultSearchScope',
    value  => 'SCcf',
    notify => Exec['killall Finder'];
  }
}
