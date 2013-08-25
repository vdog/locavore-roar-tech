
package 'git'
package 'nginx'
package 'postgresql-server'
package 'postgresql-libs'
package 'postgresql-devel'
package 'libuuid-devel'
package 'gcc'
package 'libtool'
package 'make'
gem_package 'addressable'
gem_package 'bigdecimal'
gem_package 'bundler'
gem_package 'unicorn'
gem_package 'swift'
gem_package 'swift-db-postgres'

directory '/opt/apps/oursignal'

git '/opt/apps/oursignal' do
	repository 'git://github.com/vdog/oursignal.git' 
	reference 'master'
end

