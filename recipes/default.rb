#
# Cookbook Name:: mailcatcher
# Recipe:: default
#
# 2013, Dai Akatsuka
#
case node['platform_family']
when 'debian', 'ubuntu'
  package 'libsqlite3-dev'
when 'rhel', 'fedora', 'suse'
  package 'sqlite-devel'
end

include_recipe 'build-essential'
include_recipe "rbenv::default"
include_recipe "rbenv::ruby_build"

rbenv_ruby "1.9.3-p484" do
  global true
end

rbenv_gem 'mailcatcher' do
  ruby_version '1.9.3-p484'
end
