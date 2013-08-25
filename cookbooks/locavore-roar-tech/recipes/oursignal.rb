
package 'git'
package 'nginx'
package 'postgresql-server'
package 'postgresql-libs'
package 'postgresql-devel'
package 'libuuid-devel'
package 'gcc'
package 'libtool'
package 'make'
package 'mlocate'
package 'libxml2-devel'
package 'libxslt-devel'
package 'libcurl-devel'
package 'ImageMagick'
gem_package 'bigdecimal'
gem_package 'bundler'
gem_package 'unicorn'
gem_package 'compass'
gem_package 'haml'
gem_package 'rack'
gem_package 'rdiscount'
gem_package 'sass'
gem_package 'sinatra'
gem_package 'swift'
gem_package 'swift-db-postgres'
gem_package 'curb'
gem_package 'nokogiri'
gem_package 'yajl-ruby'
gem_package 'addressable'
gem_package 'postrank-uri'
gem_package 'flock'

service 'postgresql' do
	pattern 'postmaster'
	action [:enable, :start]
end

service 'nginx' do
	action [:enable, :start]
end

cookbook_file '/var/lib/pgsql9/data/pg_hba.conf' do
	source 'pg_hba.conf'
	notifies :restart, "service[postgresql]"
end

cookbook_file '/etc/nginx/conf.d/oursignal.conf' do
	source 'oursignal.conf'
	notifies :restart, "service[nginx]"
end

directory '/opt/apps/oursignal' do
	owner 'oursignal'
	recursive true
end

git '/opt/apps/oursignal' do
	repository 'git://github.com/vdog/oursignal.git' 
	reference 'master'
end

directory '/opt/apps/oursignal/public/' do 
	mode 00777
end
directory '/opt/apps/oursignal/tmp/' do 
	mode 00777
end

user 'oursignal' do
	supports :manage_home => true;
	home '/home/oursignal'
	shell '/bin/bash'
end



