machines = {
  'master' => {"memory" => "512","ip" => "101", "cpu" => "1", "image" => "bento/ubuntu-20.04"},
  'node01' => {"memory" => "512","ip" => "102", "cpu" => "1", "image" => "bento/ubuntu-20.04"},
  'node02' => {"memory" => "512","ip" => "103", "cpu" => "1", "image" => "bento/ubuntu-20.04"},
  'node03' => {"memory" => "512","ip" => "104", "cpu" => "1", "image" => "bento/ubuntu-20.04"}
}

Vagrant.configure("2") do |config|
  machines.each do |name, conf|
    config.vm.define "#{name}" do |machine|
      machine.vm.box = "#{conf['image']}"
      machine.vm.hostname = "#{name}"
      machine.vm.network "public_network", ip: "192.168.15.#{conf["ip"]}"
      machine.vm.provider "virtualbox" do |vb|
           vb.name = "#{name}"
           vb.memory = conf['memory']
           vb.cpus = conf['cpu']
      end
      machine.vm.provision "shell", path: 'docker.sh'
      if "#{name}" == "master"
        machine.vm.synced_folder ".", "/home/vagrant"
        machine.vm.provision "shell", path: 'manager.sh'
        machine.vm.provision "shell", path: 'portainer.sh'
      else
        machine.vm.provision "shell", path: 'worker.sh'
      end
    end
  end
end
