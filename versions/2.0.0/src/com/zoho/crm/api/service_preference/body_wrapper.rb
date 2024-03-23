require_relative '../util/model'

module ZOHOCRMSDK
  module ServicePreference
    class BodyWrapper
      include Util::Model

      # Creates an instance of BodyWrapper
      def initialize
        @service_preferences = nil
        @key_modified = Hash.new
      end

        # The method to get the service_preferences
        # @return An instance of ServicePreference

      def service_preferences
        @service_preferences
      end

        # The method to set the value to service_preferences
        # @param service_preferences [ServicePreference] An instance of ServicePreference

      def service_preferences=(service_preferences)
        if service_preferences!=nil and !service_preferences.is_a? ServicePreference
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: service_preferences EXPECTED TYPE: ServicePreference', nil, nil)
        end
        @service_preferences = service_preferences
        @key_modified['service_preferences'] = 1
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