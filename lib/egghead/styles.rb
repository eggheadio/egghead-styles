require "egghead/styles/version"

module Egghead
  module Styles

    class Engine < ::Rails::Engine
      config.assets.paths << root.join('assets', 'stylesheets').to_s
      config.assets.paths << File.expand_path("../../vendor/assets/stylesheets", __FILE__)
    end

  end
end
