require_relative '../util/model'

module ZOHOCRMSDK
  module Currencies
    class BaseCurrencyWrapper
      include Util::Model

      # Creates an instance of BaseCurrencyWrapper
      def initialize
        @base_currency = nil
        @key_modified = Hash.new
      end

        # The method to get the base_currency
        # @return An instance of BaseCurrency

      def base_currency
        @base_currency
      end

        # The method to set the value to base_currency
        # @param base_currency [BaseCurrency] An instance of BaseCurrency

      def base_currency=(base_currency)
        if base_currency!=nil and !base_currency.is_a? BaseCurrency
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: base_currency EXPECTED TYPE: BaseCurrency', nil, nil)
        end
        @base_currency = base_currency
        @key_modified['base_currency'] = 1
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
