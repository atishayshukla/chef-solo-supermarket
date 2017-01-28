#
# Cookbook Name:: chef-vault
# Recipe:: default
#
# Author: Joshua Timberman <joshua@chef.io>
#
# Copyright (c) 2013-2016, Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

if Chef::Resource::ChefGem.instance_methods(false).include?(:compile_time)
  chef_gem 'chef-vault' do # ~FC009
    options node['chef-vault']['gem_options']
    source node['chef-vault']['gem_source']
    version node['chef-vault']['version']
    clear_sources true unless node['chef-vault']['gem_source'].nil?
    compile_time true
  end
else
  chef_gem 'chef-vault' do
    options node['chef-vault']['gem_options']
    source node['chef-vault']['gem_source']
    version node['chef-vault']['version']
    clear_sources true unless node['chef-vault']['gem_source'].nil?
    action :nothing
  end.run_action(:install)
end

require 'chef-vault'
