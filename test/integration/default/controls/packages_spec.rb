# frozen_string_literal: true

# Overide by Platform
package_name = 'openssh-server'
package_name = 'openssh' if platform[:family] == 'suse'

control 'openssh package' do
  title 'should be installed'

  describe package(package_name) do
    it { should be_installed }
  end
end
