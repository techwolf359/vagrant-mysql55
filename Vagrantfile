Vagrant.configure("2") do |config|

	config.vm.box = "CentOS-6.5-x86_64-v20140311"
	config.vm.box_url = "http://developer.nrel.gov/downloads/vagrant-boxes/CentOS-6.5-x86_64-v20140311.box"
	config.vm.hostname = "mysql55-dev.localdomain"
	config.vm.provision :puppet do |puppet|
		puppet.manifests_path = "puppet/manifests"
		puppet.manifest_file = "init.pp"
		puppet.module_path = "puppet/modules"
		puppet.options = "--verbose"
	end

end