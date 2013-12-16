#
# Cookbook Name:: mailcatcher
# Recipe:: php
#
# 2013, Dai Akatsuka
#
directory node['php']['ext_conf_dir'] do
  owner 'root'
  group 'root'
  mode '0755'
  recursive true
  action :create
  not_if { File.exists? node['php']['ext_conf_dir'] }
end

template 'mailcatcher.ini' do
  path "#{node['php']['ext_conf_dir']}/mailcatcher.ini"
  source 'php/mailcatcher.ini.erb'
  owner 'root'
  group 'root'
  mode '0644'
  action :create
end
