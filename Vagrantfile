# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "centos/7"

  config.vm.synced_folder ".", "/vagrant" 
  config.vm.provider "virtualbox" do |v|
    v.memory = 2048 
  end

  config.vm.define :dev do |dev|
    dev.vm.network "private_network", ip: "10.100.199.200" 
    dev.vm.provision :shell, path: "bootstrap.sh" 
    dev.vm.provision :shell,
      inline: 'PYTHONUNBUFFERED=1 ansible-playbook \
            /vagrant/ansible/dev.yml -c local'
  end
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box 
  end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  # config.vm.provision "shell", inline: <<-SHELL
  #   sudo apt-get update
  #   sudo apt-get install -y apache2
  # SHELL
end
