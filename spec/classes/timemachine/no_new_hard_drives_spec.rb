require 'spec_helper'

describe 'osx::timemachine::no_new_hard_drives' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should contain_boxen__osx_defaults('Prevent Time Machine from prompting to use new hard drives as backup volume').with({
      :key    => 'DoNotOfferNewDisksForBackup',
      :domain => 'com.apple.TimeMachine',
      :value  => true,
      :user   => facts[:boxen_user]
    })
  end
end
