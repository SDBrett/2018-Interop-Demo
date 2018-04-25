# frozen_string_literal: true

require 'serverspec'
require 'rspec_junit_formatter'

describe port(80) do
  it { should be_listening }
end

describe package 'apache2' do
  it { should be_installed }
end

describe service('httpd') do
  it { should be_running }
  it { should be_enabled }
end

set :backend, :exec

RSpec.configure do |config|
  config.add_formatter 'RspecJunitFormatter', '/opt/serverspec_endpoint.xml'
end
