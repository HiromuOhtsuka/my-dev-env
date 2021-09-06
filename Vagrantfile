Vagrant.configure("2") do |config|
  config.vm.provider "virtualbox" do |v|
    v.name = "dev.local"
  end

  config.vm.box = "ubuntu/hirsute64"

  config.vm.synced_folder "./share", "/share"

  config.vm.provider "virtualbox" do |vb|
    vb.cpus = 2
    vb.memory = "2048"
  end
  config.vm.disk :disk, size: "10GB", primary: true

  config.vm.provision :shell, path: "set-ssh-key.sh"
  config.vm.provision :shell, path: "set-gitconfig.sh"
  config.vm.provision :shell, path: "install-make.sh"
  config.vm.provision :shell, path: "install-golang.sh"
  config.vm.provision :shell, path: "install-docker.sh"
  config.vm.provision :shell, path: "install-minikube.sh"
end
