# apt-get install nginx
package "nginx"

# define as a service
service "nginx" do
  supports :status => true, :restart => true, :reload => true
  action [:enable, :start]
end

template "/etc/nginx/nginx.conf" do
 # source "nginx.conf.erb"
 notifies :reload, "service[nginx]"
end

# This tells chef to not install a version which is newer than 1.0.3
# package "nginx" do
#   version "1.0.3"
# end

