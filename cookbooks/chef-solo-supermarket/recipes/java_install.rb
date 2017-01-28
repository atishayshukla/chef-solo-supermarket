# Install Java
include_recipe 'java'

# Install curl
package 'curl' do
  action :install
end