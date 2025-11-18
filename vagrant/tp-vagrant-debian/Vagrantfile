Vagrant.configure("2") do |config|

  # Box de base
  config.vm.box = "bento/debian-13"

  # Nom d'hôte de la machine
  config.vm.hostname = "debian-base"

  # Réseau privé avec IP fixe
  config.vm.network "private_network", ip: "192.168.56.10"

  # Configuration VirtualBox
  config.vm.provider "virtualbox" do |vb|
    vb.name   = "debian-base"
    vb.memory = 1024
    vb.cpus   = 1
  end

  # Provisionnement simple : message dans /etc/motd
  config.vm.provision "shell", inline: <<-SHELL
    echo "VM TP – Debian Base" > /etc/motd
  SHELL
end
