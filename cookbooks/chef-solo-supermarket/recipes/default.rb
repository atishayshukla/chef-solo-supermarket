#
# Cookbook Name:: chef-solo-supermarket
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.

# Setting Java version
# node.default['java']['jdk_version'] = '7'

# Install Java
include_recipe 'java'

# Install curl
package 'curl' do
  action :install
end
