#
# Cookbook Name:: chef-solo-supermarket
# Recipe:: default
#
# Copyright (c) 2017 The Authors, All Rights Reserved.


# Install Java
include_recipe 'chef-solo-supermarket::java_install'

# Install Jenkins
include_recipe 'chef-solo-supermarket::jenkins_install'

