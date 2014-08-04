# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "mafraba"
client_key               "#{current_dir}/mafraba.pem"
validation_client_name   "frabs-validator"
validation_key           "#{current_dir}/frabs-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/frabs"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
cookbook_copyright 		 "frabs"
cookbook_license 		 "apachev2"
cookbook_email 			 "mafraba@gmail.com"
