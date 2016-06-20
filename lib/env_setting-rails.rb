require 'env_setting'
require 'rails'

class EnvSetting
  module Rails
    class Railtie < ::Rails::Railtie
      def env_rb_file
        File.join(::Rails.root.to_s, 'config/env.rb')
      end

      config.before_configuration do
        load env_rb_file if File.exists?(env_rb_file)
      end
    end
  end
end
