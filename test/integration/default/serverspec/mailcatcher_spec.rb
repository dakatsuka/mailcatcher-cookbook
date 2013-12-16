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

describe "mailcatcher daemon" do
  it "has a running service of mailcatcher" do
    expect(service("mailcatcher")).to be_running
  end
end
