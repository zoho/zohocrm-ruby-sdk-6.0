require_relative '../util/model'

module ZOHOCRMSDK
  module PortalUserType
    require_relative 'response_handler'
    class ResponseWrapper
      include Util::Model
      include ResponseHandler

      # Creates an instance of ResponseWrapper
      def initialize
        @user_type = nil
        @key_modified = Hash.new
      end

        # The method to get the user_type
        # @return An instance of Array

      def user_type
        @user_type
      end

        # The method to set the value to user_type
        # @param user_type [Array] An instance of Array

      def user_type=(user_type)
        if user_type!=nil and !user_type.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: user_type EXPECTED TYPE: Array', nil, nil)
        end
        @user_type = user_type
        @key_modified['user_type'] = 1
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
