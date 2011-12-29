require 'erb2haml-win'
require 'rails'

module ERb2Haml
  class Railtie < Rails::Railtie
    rake_tasks do
      load 'erb2haml-win/railties/erb2haml.rake'
    end
  end
end
