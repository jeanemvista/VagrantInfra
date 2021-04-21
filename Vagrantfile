# global configuration
BOX_BASE = "debian/stretch64"
BOX_RAM_MB = "2048"
BOX_CPU = "2"

Vagrant.configure("2") do |config|

  # Master
  config.vm.define "master" do |master|
    master.vm.box = BOX_BASE
    master.vm.hostname = "master"
    master.vm.network :private_network, ip: "192.168.0.10"
    master.vm.provider :virtualbox do |m|
      m.customize ["modifyvm", :id, "--memory", BOX_RAM_MB]
      m.customize ["modifyvm", :id, "--cpus", BOX_CPU]
      m.customize ["modifyvm", :id, "--name", master]
      m.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
    end
  end

  # X Node with 0 < X < 100
  nbNode = 2
  (1..nbNode).each do |i|
    config.vm.define "node#{i}" do |node|
      node.vm.box = BOX_BASE
      node.vm.hostname = "node#{i}"
      node.vm.network :private_network, ip: "192.168.0.1#{i}"
      node.vm.provider :virtualbox do |n|
        n.customize ["modifyvm", :id, "--memory", BOX_RAM_MB]
        n.customize ["modifyvm", :id, "--cpus", BOX_CPU]
        n.customize ["modifyvm", :id, "--name", "node#{i}"]
        n.customize ["modifyvm", :id, "--natdnshostresolver1", "on"]
      end
    end
  end
end
