#
# Cookbook:: nexus
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

docker_service 'default' do
  action [:create, :start]
end

docker_image "nexus3" do
  repo 'sonatype/nexus3'
  action :pull
end

docker_container 'nexus3' do
  repo 'sonatype/nexus3'
  container_name 'nexus3'
  port '8081:8081'
end
