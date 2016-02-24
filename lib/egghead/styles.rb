require "egghead/styles/version"

module Egghead
  module Styles

    class Engine < ::Rails::Engine
      config.assets.paths << root.join('assets', 'stylesheets').to_s
      config.assets.paths << root.join('../vendor', 'assets', 'stylesheets').to_s
    end

  end
end
