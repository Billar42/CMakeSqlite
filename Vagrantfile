Vagrant.configure("2") do |config|
  config.vm.box = "generic/debian11"
  config.vm.synced_folder ".", "/vagrant"
  config.vm.provider "virtualbox" do |vb|
    vb.name = "VagrantVM"
    vb.memory = "2048"
    vb.cpus = 2
  end

  config.vm.network "forwarded_port", guest: 22, host: 2222

  config.vm.provision "ansible_local" do |ansible|
    ansible.playbook = "install_docker.yml"
  end
end