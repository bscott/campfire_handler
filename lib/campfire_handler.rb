require "chef/handler"
require 'tinder'

class CampfireHandler < Chef::Handler
  VERSION = "0.0.1"
  
  def initialize(opts = {})
    @config = opts
  end

  def report()
    if run_status.failed?
      Chef::Log.error("Creating Campfire exception report")
      campfire = Tinder::Campfire.new(@config[:subdomain], :token => @config[:token])
      campfire.rooms.first.speak("#{node.hostname} #{run_status.formatted_exception}")
      campfire.rooms.first.paste(Array(backtrace).join("\n"))
  end
end
end