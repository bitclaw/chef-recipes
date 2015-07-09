Vagrant::Config.run do |config|
  config.vm.box = "kasifi/phpbox"
  config.vm.box_url = "https://atlas.hashicorp.com/kasifi/boxes/phpbox"
  config.vm.network :hostonly, "33.33.33.10"
  config.vm.share_folder "v-cookbooks", "/cookbooks", "."
end
