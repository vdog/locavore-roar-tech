# See http://docs.opscode.com/config_rb_knife.html for more information on knife configuration options

current_dir = File.dirname(__FILE__)
log_level                :info
log_location             STDOUT
node_name                "vkenney"
client_key               "#{current_dir}/vkenney.pem"
validation_client_name   "locavore-roar-validator"
validation_key           "#{current_dir}/locavore-roar-validator.pem"
chef_server_url          "https://api.opscode.com/organizations/locavore-roar"
cache_type               'BasicFile'
cache_options( :path => "#{ENV['HOME']}/.chef/checksums" )
cookbook_path            ["#{current_dir}/../cookbooks"]
