require_relative '../util/model'

module ZOHOCRMSDK
  module GlobalPicklists
    class ReplacePicklistValue
      include Util::Model

      # Creates an instance of ReplacePicklistValue
      def initialize
        @id = nil
        @display_value = nil
        @key_modified = Hash.new
      end

        # The method to get the id
        # @return A Integer value

      def id
        @id
      end

        # The method to set the value to id
        # @param id [Integer] A Integer

      def id=(id)
        if id!=nil and !id.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: id EXPECTED TYPE: Integer', nil, nil)
        end
        @id = id
        @key_modified['id'] = 1
      end

        # The method to get the display_value
        # @return A String value

      def display_value
        @display_value
      end

        # The method to set the value to display_value
        # @param display_value [String] A String

      def display_value=(display_value)
        if display_value!=nil and !display_value.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_value EXPECTED TYPE: String', nil, nil)
        end
        @display_value = display_value
        @key_modified['display_value'] = 1
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
