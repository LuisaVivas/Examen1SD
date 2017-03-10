# -*- mode: ruby -*-
# vi: set ft=ruby :

VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.ssh.insert_key = false
  config.vm.define :centos_balanceador do |balancer|
    balancer.vm.box = "centos64"
    balancer.vm.network :private_network, ip: "192.168.33.14"
    balancer.vm.network "public_network", bridge: "enp5s0", ip:"192.168.131.116"
    balancer.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "1", "--name", "centos-balanceador"]
    end
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "balanceador"
    end
  end
  config.vm.define :centos_web1 do |web1|
    web1.vm.box = "Centos64Update1"
    web1.vm.network :private_network, ip: "192.168.33.13"
    web1.vm.network "public_network", bridge: "enp5s0", ip:"192.168.131.115"
    web1.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "1", "--name", "centos-web1" ]
    end
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "web1"
    end
  end
  config.vm.define :centos_web2 do |web2|
    web2.vm.box = "Centos64Update1"
    web2.vm.network :private_network, ip: "192.168.33.15"
    web2.vm.network "public_network", bridge: "enp5s0", ip:"192.168.131.117"
    web2.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "1", "--name", "centos-web2" ]
    end
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "web2"
    end
 end
  config.vm.define :centos_db do |db|
    db.vm.box = "Centos64Update1"
    db.vm.network :private_network, ip: "192.168.33.16"
    db.vm.network "public_network", bridge: "enp5s0", ip:"192.168.131.118"
    db.vm.provider :virtualbox do |vb|
      vb.customize ["modifyvm", :id, "--memory", "1024","--cpus", "1", "--name", "centos-db" ]
    end
    config.vm.provision :chef_solo do |chef|
      chef.cookbooks_path = "cookbooks"
      chef.add_recipe "db"
    end
  end
end
