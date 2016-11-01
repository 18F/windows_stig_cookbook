#
# Cookbook Name:: windows_stig_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

registry_key 'HKEY_LOCAL_MACHINE\Software\Policies\Microsoft\Windows NT\Terminal Services' do
  values [{
    :name => 'fEncryptRPCTraffic',
    :type => :dword,
    :data => 1
  }]
#  recursive true
  action :create
end
