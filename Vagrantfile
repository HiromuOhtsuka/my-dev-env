Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.name = "development"
  end

  config.vm.box = "ubuntu/hirsute64"

  config.vm.synced_folder "./share", "/share"

  config.vm.provider "virtualbox" do |vb|
    vb.memory = "2048"
  end
  config.vm.disk :disk, size: "10GB", primary: true

  config.vm.provision :shell, path: "ssh-key.sh"
  config.vm.provision :shell, path: "git-config.sh"
  config.vm.provision :shell, path: "install-docker.sh"
end
