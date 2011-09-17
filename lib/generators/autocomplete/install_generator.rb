require 'rails/generators'

module Autocomplete
  class InstallGenerator < Rails::Generators::Base
    def install
      # Copy the unobtrusive JS file
      if ::Rails.version < "3.1"
        copy_file('autocomplete-rails.js', 'public/javascripts/autocomplete-rails.js')
      else
        copy_file('autocomplete-rails.js', 'app/assets/javascripts/autocomplete-rails.js')
      end
    end

    def self.source_root
      File.join(File.dirname(__FILE__), '..', 'templates')
    end
  end
end
