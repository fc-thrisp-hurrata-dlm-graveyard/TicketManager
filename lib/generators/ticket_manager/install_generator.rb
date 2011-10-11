require 'rails/generators'
require 'rails/generators/migration'
module TicketManager
  module Generators
    class InstallGenerator < Rails::Generators::Base
    desc "This generator copies necessary migrations and models into your application."
    class_option :separatedb, :type => :boolean, :default => false, :description => "Creates a separate sqlite repository for tickets and comments"

      def self.source_root
       @source_root ||= File.join(File.dirname(__FILE__), 'templates')
      end

      if defined?(DataMapper::Resource)

        def copy_model
          if options.separatedb?
            newconfig = YAML.load(File.open(Rails.root.join("config","database.yml")))
            newconfig.each do | k,v | 
              addrepo = { "repositories" => { "ticketengine" => { "adapter" => "sqlite", "database" => "db/"+k.to_s+"_ticketengine.db"}}}
              v.merge!(addrepo)
            end 
            File.open( Rails.root.join("config","database.yml"), 'w+') { |f| f.write( YAML.dump(newconfig) ) }
          end
          copy_file "default/ticket.rb", "app/models/ticket.rb"
          copy_file "default/comment.rb", "app/models/comment.rb"
        end

      end

    end
  end
end
