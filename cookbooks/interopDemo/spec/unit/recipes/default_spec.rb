# frozen_string_literal: true

# Cookbook:: interop-demo
# Spec:: default
# Copyright:: 2018, Brett Johnson, All Rights Reserved.

require 'spec_helper'

describe 'interop-demo::default' do
  let(:chef_run) do
    runner = ChefSpec::ServerRunner.new(platform: 'ubuntu', version: '16.04')
    runner.converge(described_recipe)
  end

  it 'converges successfully' do
    expect { chef_run }.to_not raise_error
  end

  it 'starts the httpd service' do
    expect(chef_run).to start_service 'apa'
  end

  it 'installs httpd' do
    expect(chef_run).to install_apt_package 'apache2'
  end

  it 'enables the httpd service' do
    expect(chef_run).to enable_service 'apache2'
  end
end