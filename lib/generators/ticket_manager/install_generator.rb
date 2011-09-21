require 'rails/generators'
require 'rails/generators/migration'
module TicketManager
  module Generators
    class InstallGenerator < Rails::Generators::Base
    desc "This generator copies necessary migrations and models into your application."

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
         # not right now
      end

      if defined?(DataMapper::Resource)

        def copy_model
          copy_file "ticket.rb", "app/models/ticket.rb"
          copy_file "comment.rb", "app/models/comment.rb"
        end

      end

    end
  end
end
