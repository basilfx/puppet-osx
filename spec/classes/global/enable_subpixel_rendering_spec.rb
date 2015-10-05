require 'spec_helper'

describe 'osx::global::enable_subpixel_rendering' do
  let(:facts) { {:boxen_user => 'ilikebees'} }

  it do
    should contain_boxen__osx_defaults('Enable subpixel font rendering on non-Apple LCDs').with({
      :key    => 'AppleFontSmoothing',
      :domain => 'NSGlobalDomain',
      :value  => 2,
      :user   => facts[:boxen_user]
    })
  end
end
