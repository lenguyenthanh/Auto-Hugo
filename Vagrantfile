VAGRANTFILE_API_VERSION = "2"

Vagrant.configure(VAGRANTFILE_API_VERSION) do |config|

  config.vm.box = "ubuntu/disco64"
  config.vm.network "forwarded_port", guest: 1313, host: 8000
  config.vm.hostname = "Thanhs-blog"
  config.vm.define "Thanhs Blog'" do |base|
  config.vm.synced_folder ".", "/home/vagrant/src"
  end

  config.vm.provider "virtualbox" do |vb|
    vb.name = "Thanhs Blog"
    vb.gui = false
    vb.memory = "512"
    vb.cpus = 1
  end

  # Throw in our provisioning script
  config.vm.provision :shell, :path => "./vagrant/bootstrap.sh", run: "once", privileged: false
  config.vm.provision :shell, :path => "./vagrant/startup.sh", run: "always", privileged: false

  config.ssh.forward_agent = true
end
