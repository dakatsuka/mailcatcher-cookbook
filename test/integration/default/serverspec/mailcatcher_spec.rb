# coding: utf-8

require 'serverspec'
require 'pathname'

include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

RSpec.configure do |configure|
  configure.before :all do
    configure.os = backend(Serverspec::Commands::Base).check_os
    configure.path = '/sbin:/usr/bin'
  end
end

describe service('mailcatcher') do
  it { should be_enabled }
  it { should be_running }
end

describe file('/etc/php5/conf.d/mailcatcher.ini') do
  it { should be_file }
  it { should contain "sendmail" }
  it { should contain "catchmail" }
end
