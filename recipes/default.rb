#
# Cookbook Name:: mailcatcher
# Recipe:: default
#
# 2013, Dai Akatsuka
#
case node['platform_family']
when 'debian'
  package 'libsqlite3-dev'
when 'rhel', 'fedora'
  package 'sqlite-devel'
end

include_recipe 'build-essential'
include_recipe 'rbenv::default'
include_recipe 'rbenv::ruby_build'

group 'mailcatcher' do
  action :create
end

user 'mailcatcher' do
  group 'mailcatcher'
  home '/var/lib/mailcatcher'
  shell '/bin/false'
  password nil
  supports :manage_home => true
  action [:create, :manage]
end

rbenv_ruby '1.9.3-p484' do
end

rbenv_gem 'mailcatcher' do
  ruby_version '1.9.3-p484'
end

service 'mailcatcher' do
  supports :start => true, :stop => true, :restart => true
  action :nothing
end

template 'mailcatcher' do
  path '/etc/init.d/mailcatcher'
  
  case node['platform_family']
  when 'debian'
    source 'mailcatcher.init.debian.erb'
  when 'rhel', 'fedora'
    source 'mailcatcher.init.rhel.erb'
  end

  owner 'root'
  group 'root'
  mode '0755'
  notifies :enable, 'service[mailcatcher]'
  notifies :start, 'service[mailcatcher]'
end
