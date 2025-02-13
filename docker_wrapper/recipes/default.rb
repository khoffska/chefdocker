#
# Cookbook:: docker_wrapper
# Recipe:: default
#
# Copyright:: 2025, The Authors, All Rights Reserved.
#
#
# #
# Cookbook:: my_docker_wrapper
# Recipe:: default
#

# Create and start the Docker service using the custom resource from the docker cookbook
docker_service 'default' do
  action [:create, :start]
end

# Pull the latest nginx image
docker_image 'nginx' do
  tag 'latest'
  action :pull
end

# Run an nginx container mapping host port 80 to container port 80
docker_container 'nginx_container' do
  repo 'nginx'
  tag 'latest'
  port '80:80'
  action :run
end

