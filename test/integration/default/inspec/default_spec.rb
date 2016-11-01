require 'inspec'

describe file('c:/') do
  it { should exist }
end

describe registry_key({
    hive: 'HKEY_LOCAL_MACHINE',
    key:  'Software\Policies\Microsoft\Windows NT\Terminal Services'
  }) do
    its("fEncryptRPCTraffic") { should eq 1 }
end
