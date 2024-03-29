# -*- mode: ruby -*-
# vi: set ft=ruby :
Vagrant.require_version ">= 2.0.0"
### configuration parameters
BOX_BASE = "ubuntu/bionic64"
BOX_CPU_COUNT = 2
BOX_RAM_MB = "2048"

### master node configuration(s)
MASTER_IP = "172.81.81.200"
MASTER_HOSTNAME = "node-01"

USE_SAMPLE_APP_V2 = "true"

Vagrant.configure("2") do |config|

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = BOX_CPU_COUNT
    vb.memory = BOX_RAM_MB
  end

  config.vm.define "#{MASTER_HOSTNAME}" do |node|
    node.vm.box = BOX_BASE
    node.vm.box_check_update = false
    node.vm.hostname = "#{MASTER_HOSTNAME}"
    node.vm.network "private_network", ip: MASTER_IP
    # warning: If you get "Hash sum mismatch" error while provisioning, please uncomment it!
    #node.vm.provision "shell", inline: "sudo rm -rf /var/lib/apt/lists/* && sudo apt-get update -o Acquire::CompressionTypes::Order::=gz"
    node.vm.provision "shell", inline: "echo 'cd /vagrant' >> ~/.bashrc && exit", privileged: false
    if USE_SAMPLE_APP_V2 == "false"
      node.vm.provision "shell" do |s|
        s.path = "scripts/install-nginx.sh"
      end
    end
    node.vm.provision "shell" do |s|
      s.path = "scripts/install-docker.sh"
    end
    node.vm.provision "shell" do |s|
      s.path = "scripts/docker-build-run.sh"
      s.args = [USE_SAMPLE_APP_V2]
    end
  end
end