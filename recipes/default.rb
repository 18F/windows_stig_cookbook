#
# Cookbook Name:: windows_stig_cookbook
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

registry_key 'HKEY_LOCAL_MACHINE\System\CurrentControlSet\Control\Lsa' do
  values [{
    :name => 'LimitBlankPasswordUse',
    :type => :dword,
    :data => 1
  }]
#  recursive true
  action :nothing
end
