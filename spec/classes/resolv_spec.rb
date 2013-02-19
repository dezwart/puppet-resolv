require 'spec_helper'

describe 'resolv' do
  resolv = '/etc/resolv.conf'

  files = [
    resolv
  ]

  context 'default' do
    let(:params) {
      {
        :domain_name => 'garbu.com',
        :search_path => [ 'garbu.com', 'sworbu.net' ],
        :name_servers => [ '10.0.0.1', '10.0.0.2' ]
      }
    }

    it {
      files.map { |x| should contain_file(x) }
    }
  end
end
