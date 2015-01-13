#
# Cookbook Name:: tokyo-cabinet
# Recipe:: default
#
# Copyright (C) 2015 Rui Bando
#
src_dir = '/usr/local/src'
version     = node['tc']['version']
target_dir  = node['tc']['target_dir']
source_uri  = node['tc']['source_uri']

case node['platform']
when "ubuntu"
  package 'gcc'
  package 'g++'
  package 'make'
  package 'zlib1g-dev'
  package 'bzip2'
  package 'libbz2-dev'
when "centos"
  package 'gcc'
  package 'gcc-c++'
  package 'make'
  package 'zlib-devel'
  package 'bzip2-devel'
end

remote_file "#{src_dir}/tokyocabinet-#{version}.tar.gz" do
  not_if { ::File.exist?("#{target_dir}libexec/libexec/tcawmgr.cgi") }
  source "#{source_uri}"
end

bash 'install_tc' do
  not_if { ::File.exist?("#{target_dir}libexec/libexec/tcawmgr.cgi") }
  code <<-EOL
    cd #{src_dir}/
    tar -zxvf #{src_dir}/tokyocabinet-#{version}.tar.gz
    cd #{src_dir}/tokyocabinet-#{version}
    ./configure #{node['tc']['configure_option']} && make && make install
  EOL
end
