VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|
  config.vm.box = "bento/ubuntu-20.04"
  config.vm.network "forwarded_port", guest: 1313, host: 1313
  config.vm.hostname = "AutoHugo"
  config.vm.define "Auto Hugo" do |base|
  config.vm.synced_folder ".", "/home/vagrant/project"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.name = "AutoHugo"
    vb.gui = false
    vb.memory = "512"
    vb.cpus = 1
  end

  # Throw in our provisioning script
  config.vm.provision :shell, :path => "./vagrant/bootstrap.sh", run: "once", privileged: false

  config.ssh.forward_agent = true
end
