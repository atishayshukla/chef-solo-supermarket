# Including jenkins installation recipe from supermarket
include_recipe 'jenkins::master'

# Create password credentials
jenkins_password_credentials 'ashukla' do
 description 'Atishay Shukla'
 password 'atishay'
end
