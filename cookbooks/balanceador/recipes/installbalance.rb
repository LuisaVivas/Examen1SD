bash 'open port' do
  code <<-EOH
  iptables -I INPUT 5 -p tcp -m state --state NEW -m tcp --dport 80 -j ACCEPT
  iptables -I INPUT 5 -p tcp -m state --state NEW -m tcp --dport 8080 -j ACCEPT
  service iptables save
  EOH
end

cookbook_file '/etc/yum.repos.d/nginx.repo' do
  source 'nginx.repo'
  mode 0644
end 

package 'nginx'

template '/etc/nginx/nginx.conf' do
  source 'nginx.conf.erb'
  mode 0777
  variables(
  ip_web1: node[:balanceador][:ip_web1],
  ip_web2: node[:balanceador][:ip_web2]
)
end 

service 'nginx' do 
  action [:enable, :restart]
end

