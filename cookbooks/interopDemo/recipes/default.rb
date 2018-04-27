# frozen_string_literal: true

#
# Cookbook:: interop-demo
# Recipe:: default
#
# Copyright:: 2018, Brett Johnson, All Rights Reserved.

apt_update 'update_apt' do
  action :update
end

service 'apache2' do
  action [:enable, :start]
end

apt_package 'apache2' do
  action :install
end

file '/var/www/html/index.html' do
  content '<html>
  <body>
  <img src="http://aussiememes.com.au/media/created/Thanks-maaaate.jpg">
  </body>
</html>'
end
