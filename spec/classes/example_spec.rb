require 'spec_helper'

describe 'redis' do
  context 'supported operating systems' do
    ['Debian', 'RedHat'].each do |osfamily|
      describe "redis class without any parameters on #{osfamily}" do
        let(:params) {{ }}
        let(:facts) {{
          :osfamily => osfamily,
        }}

        it { should compile.with_all_deps }

        it { should contain_class('redis::params') }
        it { should contain_class('redis::install').that_comes_before('redis::config') }
        it { should contain_class('redis::config') }
        it { should contain_class('redis::service').that_subscribes_to('redis::config') }

        it { should contain_service('redis') }
        it { should contain_package('redis').with_ensure('present') }
      end
    end
  end

  context 'unsupported operating system' do
    describe 'redis class without any parameters on Solaris/Nexenta' do
      let(:facts) {{
        :osfamily        => 'Solaris',
        :operatingsystem => 'Nexenta',
      }}

      it { expect { should contain_package('redis') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
