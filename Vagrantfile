Vagrant.configure(2) do |config|
	# box name
	config.vm.box = "psysdev/basebox-ubuntu-14.04-java8-mysql"

	# Configure VM
	config.vm.provider "virtualbox" do |v|
		v.name = 'RoyalRangersBackend'
		v.memory = 2000
		v.cpus = 1
	end

	# forward application port
	config.vm.network "forwarded_port", guest: 8080, host: 8080

	# create private network
	config.vm.network "private_network", ip: "172.16.1.99"

	config.vm.synced_folder "./../royalrangers.api/", "/var/www/royalrangers.api"

	# install dependencies
	config.vm.provision "shell", path: "./bootstrap.sh"
end
