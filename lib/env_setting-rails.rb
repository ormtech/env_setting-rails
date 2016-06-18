require 'env_setting'

class EnvSetting
  module Rails
    class Railtie < ::Rails::Railtie
      def env_rb_file
        File.join(::Rails.root.to_s, 'config/env.rb')
      end

      config.before_configuration do
        if File.exists?(env_rb_file)
          load env_rb_file
        else
          Rails.logger.warn "Your environment variable configuration could not be found. Please create #{env_rb_file} to set up environment variables at Rails boot."
        end
      end
    end
  end
end
