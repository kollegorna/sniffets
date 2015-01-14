require 'rails/generators'
require 'rails/generators/migration'

module Wwsnippets
  module Generators
    class InstallGenerator < Rails::Generators::Base
      include Rails::Generators::Migration

      desc "Generates the necessary migrations and routes"

      source_root File.expand_path("../templates", __FILE__)

      def setup_routes
        route "\n  namespace :admin do\n    resources :snippets\n  end"
      end

      def create_migrations
        migration_template 'migrations/create_snippets.rb', 'db/migrate/create_snippets.rb'
      end

      private 

      def self.next_migration_number(path)
        Time.now.utc.strftime("%Y%m%d%H%M%S")
      end
    end
  end
end
