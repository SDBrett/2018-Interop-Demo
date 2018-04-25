#
# Cookbook:: interop-demo
# Recipe:: default
#
# Copyright:: 2018, Brett Johnson, All Rights Reserved.

apt_update 'update_apt' do
  action :update
end

apt_package 'apache2' do
  action :install
end

service 'httpd' do
  action [:enable, :start]
end

file '/var/www/html/index.html' do
  content '<html>
  <body>
    <h1>hello world</h1>
  </body>
</html>'
end
