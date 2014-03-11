require 'rails/generators'

module Hare
  class InstallGenerator < Rails::Generators::Base
    source_root File.expand_path('../templates', __FILE__)

    def create_executable_file
      filepath = Rails.root + "bin/hare"
      template "hare", filepath
      chmod filepath, 0755
    end

    def create_amqp_config_file
      filepath = Rails.root + "config"
      template "amqp.yml.sample", filepath + "amqp.yml.sample"
    end
  end
end