#
# Cookbook Name:: learn_chef_httpd
# Recipe:: default
# Author: ngowda
#
# Copyright (c) 2016 The Authors, All Rights Reserved.
package 'nginx'

service 'nginx' do
  action [:enable, :stop]
end

template '/var/www/html/index.html' do # ~FC033
  source 'index.html.erb'
end
