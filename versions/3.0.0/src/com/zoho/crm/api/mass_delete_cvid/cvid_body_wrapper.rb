require_relative '../util/model'

module ZOHOCRMSDK
  module MassDeleteCvid
    class CvidBodyWrapper
      include Util::Model

      # Creates an instance of CvidBodyWrapper
      def initialize
        @cvid = nil
        @territory = nil
        @key_modified = Hash.new
      end

        # The method to get the cvid
        # @return A Integer value

      def cvid
        @cvid
      end

        # The method to set the value to cvid
        # @param cvid [Integer] A Integer

      def cvid=(cvid)
        if cvid!=nil and !cvid.is_a? Integer
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: cvid EXPECTED TYPE: Integer', nil, nil)
        end
        @cvid = cvid
        @key_modified['cvid'] = 1
      end

        # The method to get the territory
        # @return An instance of Territory

      def territory
        @territory
      end

        # The method to set the value to territory
        # @param territory [Territory] An instance of Territory

      def territory=(territory)
        if territory!=nil and !territory.is_a? Territory
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: territory EXPECTED TYPE: Territory', nil, nil)
        end
        @territory = territory
        @key_modified['territory'] = 1
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
