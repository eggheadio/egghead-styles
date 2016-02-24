require "egghead/styles/version"

module Egghead
  module Styles

    class Engine < ::Rails::Engine
      config.assets.paths << Rails.root.join('assets', 'stylesheets').to_s
    end

  end
end
