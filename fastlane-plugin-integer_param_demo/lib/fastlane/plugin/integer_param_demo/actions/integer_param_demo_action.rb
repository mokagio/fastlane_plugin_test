require 'fastlane/action'
require_relative '../helper/integer_param_demo_helper'

module Fastlane
  module Actions
    class IntegerParamDemoAction < Action
      def self.run(params)
        UI.message("The integer_param_demo plugin is working!")
      end

      def self.description
        "Pluging to demo the integer parameter behavior"
      end

      def self.authors
        ["Gio Lodi"]
      end

      def self.return_value
        # If your method provides a return value, you can describe here what it does
      end

      def self.details
        # Optional:
        "Pluging to demo the integer parameter behavior"
      end

      def self.available_options
        [
          # FastlaneCore::ConfigItem.new(key: :your_option,
          #                         env_name: "INTEGER_PARAM_DEMO_YOUR_OPTION",
          #                      description: "A description of your option",
          #                         optional: false,
          #                             type: String)
        ]
      end

      def self.is_supported?(platform)
        # Adjust this if your plugin only works for a particular platform (iOS vs. Android, for example)
        # See: https://docs.fastlane.tools/advanced/#control-configuration-by-lane-and-by-platform
        #
        # [:ios, :mac, :android].include?(platform)
        true
      end
    end
  end
end
