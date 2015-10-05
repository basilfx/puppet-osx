require 'spec_helper'

describe 'osx::global::disable_resume_system_wide' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should contain_boxen__osx_defaults('Disable resume system-wide').with({
      :key    => 'NSQuitAlwaysKeepsWindows',
      :domain => 'NSGlobalDomain',
      :value  => false,
      :user   => facts[:boxen_user]
    })
  end
end
