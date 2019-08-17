control 'packages' do
  impact 1.0
  title 'confirm package installation'
  desc 'confirm all desired packages are installed'
  describe command('apk info') do
    its('stdout') { should include ('python3') }
  end
end

control 'python3 version' do
  impact 1.0
  title 'confirm python3 version installed'
  desc 'confirm version reported by python3 matches the desired version'
  describe command('python3 -V') do
    its('stdout') { should include ('3.7') }
  end
end

control 'pip version' do
  impact 1.0
  title 'confirm pip version installed'
  desc 'confirm version reported by pip3 matches the desired version'
  describe command('pip -V') do
    its('stdout') { should include ('19') }
  end
end

control 'python packages' do
  impact 1.0
  title 'confirm python package installation'
  desc 'confirm all desired python packages are installed'
  describe command('pip list') do
    its('stdout') { should include ('pylint') }
    its('stdout') { should include ('pytest') }
    its('stdout') { should include ('pytest-runner') }
    its('stdout') { should include ('coverage') }
    its('stdout') { should include ('twine') }
  end
end

control 'pylint version' do
  impact 1.0
  title 'confirm pylint version installed'
  desc 'confirm version reported by pylint matches the desired version'
  describe command('pylint --version') do
    its('stdout') { should include ('2.3') }
  end
end

control 'pytest version' do
  impact 1.0
  title 'confirm pytest version installed'
  desc 'confirm version reported by pytest matches the desired version'
  describe command('pytest --version') do
    its('stdout') { should include ('5.1') }
  end
end

control 'coverage version' do
  impact 1.0
  title 'confirm coverage version installed'
  desc 'confirm version reported by coverage matches the desired version'
  describe command('coverage --version') do
    its('stdout') { should include ('4.5') }
  end
end

control 'twine version' do
  impact 1.0
  title 'confirm twine version installed'
  desc 'confirm version reported by twine matches the desired version'
  describe command('twine --version') do
    its('stdout') { should include ('1.13') }
  end
end

control 'pylint version' do
  impact 1.0
  title 'confirm pylint version installed'
  desc 'confirm version reported by pylint matches the desired version'
  describe command('pylint --version') do
    its('stdout') { should include ('2.3') }
  end
end
