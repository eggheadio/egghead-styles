require "egghead/styles/version"

module Egghead
  module Styles

    class Engine < ::Rails::Engine

      initializer 'egghead-styles.assets.precompile', group: :all do |app|
        %w(stylesheets).each do |sub|
          app.config.assets.paths << root.join('assets', sub).to_s
        end
      end

    end

  end
end
