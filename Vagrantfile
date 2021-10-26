# -*- mode: ruby -*-
# vi: set ft=ruby  :

machines = {
  "ansible"   => {"memory" => "1024", "cpu" => "2", "ip" => "30", "image" => "ubuntu/focal64"},
  "machine01" => {"memory" => "512",  "cpu" => "1", "ip" => "31", "image" => "debian/buster64"},
  "machine02" => {"memory" => "512",  "cpu" => "1", "ip" => "32", "image" => "centos/7"}
}

Vagrant.configure("2") do |config|

  machines.each do |name, conf|
    config.vm.define "#{name}" do |machine|
      machine.vm.box = "#{conf["image"]}"
      machine.vm.hostname = "#{name}.iac.example"
      machine.vm.network "private_network", ip: "10.10.10.#{conf["ip"]}", name: "vboxnet0"
      machine.vm.provider "virtualbox" do |vb|
        vb.name = "#{name}"
        vb.memory = conf["memory"]
        vb.cpus = conf["cpu"]
        vb.customize ["modifyvm", :id, "--groups", "/iac"]
      end

    config.ssh.forward_agent = "true"
    config.ssh.guest_port = 22
    config.vm.provision "shell", inline: <<-EOF
      HOSTS=$(head -n7 /etc/hosts)
      echo -e "$HOSTS" > /etc/hosts
      echo '10.10.10.30 ansible.iac.example' >> /etc/hosts
      echo '10.10.10.31 machine01.iac.example' >> /etc/hosts
      echo '10.10.10.32 machine02.iac.example' >> /etc/hosts
      EOF

    config.vm.provision "file", source: "id_rsa.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"
    config.vm.provision "shell", inline: <<-EOF
      cat /home/vagrant/.ssh/id_rsa.pub >> /home/vagrant/.ssh/authorized_keys    
      EOF
    
    if "#{name}" == "ansible"
      machine.vm.provision "file", source: "id_rsa", destination: "/home/vagrant/.ssh/id_rsa"
      machine.vm.provision "file", source: "id_rsa.pub", destination: "/home/vagrant/.ssh/id_rsa.pub"

      machine.vm.provision "shell", inline: <<-EOF
        chmod 600 /home/vagrant/.ssh/id_rsa

        apt-get update
        apt-get install ansible -y
      EOF

      machine.vm.provision "file", source: "ansible/hosts", destination: "/home/vagrant/hosts"

      machine.vm.provision "shell", inline: <<-EOF
        mv /home/vagrant/hosts /etc/ansible/hosts
      EOF
    end

    end
  end
end