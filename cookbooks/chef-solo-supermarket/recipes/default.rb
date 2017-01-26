#
# Cookbook Name:: chef-solo-supermarket
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

# Install Java
node.default['java']['jdk_version'] = '7'

# Install curl
package 'curl' do
  action :install
end
