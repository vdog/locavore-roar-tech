
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

directory '/opt/apps/oursignal' do
	recursive true
end

git '/opt/apps/oursignal' do
	repository 'git://github.com/vdog/oursignal.git' 
	reference 'master'
end

user 'oursignal' do
	supports :manage_home => true;
	home '/home/oursignal'
	shell '/bin/bash'
end



