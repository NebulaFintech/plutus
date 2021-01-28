# Plutus
require "rails"

module Plutus
  class Engine < Rails::Engine
    isolate_namespace Plutus
    config.to_prepare do
      Dir.glob("#{Rails.root}/app/overrides/**/*_override.rb").each do |override|
        require_dependency override
      end
    end
  end


  # ------------------------------ tenancy ------------------------------
  # configuration to enable or disable tenancy
  mattr_accessor :enable_tenancy
  enable_tenancy = false

  mattr_accessor :tenant_class
  tenant_class = nil


  # provide hook to configure attributes
  def self.config
    yield(self)
  end
end
