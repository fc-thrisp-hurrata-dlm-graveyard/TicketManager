require 'rails/generators'
require 'rails/generators/migration'
module TicketManager
  module Generators
    class InstallGenerator < Rails::Generators::Base
    include Rails::Generators::Migration
    desc "This generator copies necessary migrations and configuration files into your application."

      def self.source_root
       @source_root ||= File.join(File.dirname(__FILE__), 'templates')
      end

  #def self.next_migration_number(dirname)
  #  if ActiveRecord::Base.timestamped_migrations
  #    Time.new.utc.strftime("%Y%m%d%H%M%S")
  #  else
  #    "%.3d" % (current_migration_number(dirname) + 1)
  #  end
  #end

      if defined?(ActiveRecord::Base)

    #def create_migration_file
    #  migration_template 'create_tickets.rb', 'db/migrate/create_tickets.rb'
    #end

    #def generate_config
    #  copy_file "door_settings.rb", "app/models/door_settings.rb"
    #  copy_file "door_settings.yml", "config/door_settings.yml"
    #end
 
      end

      if defined?(DataMapper::Resource)
      #not so clean atm

        def copy_model
          copy_file "ticket.rb", "app/models/ticket.rb"
          copy_file "comment.rb", "app/models/comment.rb"
        end

      end

    end
  end
end
