# attribute for java cookbook

default['java']['jdk_version'] = '7'
default['java']['install_flavor'] = 'oracle'
default['java']['oracle']['accept_oracle_download_terms'] = true

# attribute for jenkins installation

default['jenkins']['master']['jvm_options'] = '-Djenkins.install.runSetupWizard=false -Dhudson.model.User.allowNonExistentUserToLogin=true'
default['jenkins']['admin']['name'] = "admin" 
default['jenkins']['admin']['password'] = "admin" 


