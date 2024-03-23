require_relative '../util/model'

module ZOHOCRMSDK
  module InventoryConvert
    class ConvertTo
      include Util::Model

      # Creates an instance of ConvertTo
      def initialize
        @module_1 = nil
        @carry_over_tags = nil
        @key_modified = Hash.new
      end

        # The method to get the module
        # @return An instance of Module

      def module
        @module_1
      end

        # The method to set the value to module
        # @param module_1 [Module] An instance of Module

      def module=(module_1)
        if module_1!=nil and !module_1.is_a? Module
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: module_1 EXPECTED TYPE: Module', nil, nil)
        end
        @module_1 = module_1
        @key_modified['module'] = 1
      end

        # The method to get the carry_over_tags
        # @return A Boolean value

      def carry_over_tags
        @carry_over_tags
      end

        # The method to set the value to carry_over_tags
        # @param carry_over_tags [Boolean] A Boolean

      def carry_over_tags=(carry_over_tags)
        if carry_over_tags!=nil and ! [true, false].include?carry_over_tags
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: carry_over_tags EXPECTED TYPE: Boolean', nil, nil)
        end
        @carry_over_tags = carry_over_tags
        @key_modified['carry_over_tags'] = 1
      end

        # The method to check if the user has modified the given key
        # @param key [String] A String
        # @return A Integer value

      def is_key_modified(key)
        if key!=nil and !key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
        end
        if @key_modified.key?(key)
          return @key_modified[key]
        end

        nil
      end

        # The method to mark the given key as modified
        # @param key [String] A String
        # @param modification [Integer] A Integer

      def set_key_modified(key, modification)
        if key!=nil and !key.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: key EXPECTED TYPE: String', nil, nil)
        end
        if modification!=nil and !modification.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modification EXPECTED TYPE: Integer', nil, nil)
        end
        @key_modified[key] = modification
      end

    end
  end
end