require_relative '../util/model'

module ZOHOCRMSDK
  module PortalInvite
    class BodyWrapper
      include Util::Model

      # Creates an instance of BodyWrapper
      def initialize
        @portal_invite = nil
        @key_modified = Hash.new
      end

        # The method to get the portal_invite
        # @return An instance of Array

      def portal_invite
        @portal_invite
      end

        # The method to set the value to portal_invite
        # @param portal_invite [Array] An instance of Array

      def portal_invite=(portal_invite)
        if portal_invite!=nil and !portal_invite.is_a? Array
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: portal_invite EXPECTED TYPE: Array', nil, nil)
        end
        @portal_invite = portal_invite
        @key_modified['portal_invite'] = 1
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