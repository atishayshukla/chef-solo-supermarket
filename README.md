# chef-solo-supermarket

Steps:

from workstation: 

chef generate app chef-solo-supermarket
Go to metadata and append whatever cookbook you would like to cook. Here In this example I start with Java.
Check for the attributes that need to be set for supermarket.
I have added node.default in default.rb itself for the time being.

Berkshelf:

On workstation chefdk comes with berkshelf installed. Use it to consolidate all the cookbooks in one place so that it can be referenced by solo.

In the Berksfile assign all 3rd party cookbook in vendor group so as to have single source of truth (as per Continuous delivery)
Check - Berksfile

Now run :
berks vendor vendor-cookbooks --berksfile=cookbooks/chef-solo-supermarket/Berksfile --only=vendor

Then create solo.rb in the cookbook root folder giving path to resolve cookbook from:
Check solo.rb

Then to run it with solo.. extract it to the path specified in solo.rb file (/etc/chef/chef-solo-supermarket)


