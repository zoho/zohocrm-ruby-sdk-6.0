require_relative '../util/model'

module ZOHOCRMSDK
  module Users
    class CustomizeInfo
      include Util::Model

      # Creates an instance of CustomizeInfo
      def initialize
        @notes_desc = nil
        @show_right_panel = nil
        @bc_view = nil
        @unpin_recent_item = nil
        @show_home = nil
        @show_detail_view = nil
        @key_modified = Hash.new
      end

        # The method to get the notes_desc
        # @return A lang::Object value

      def notes_desc
        @notes_desc
      end

        # The method to set the value to notes_desc
        # @param notes_desc [lang::Object] A lang::Object

      def notes_desc=(notes_desc)
        @notes_desc = notes_desc
        @key_modified['notes_desc'] = 1
      end

        # The method to get the show_right_panel
        # @return A lang::Object value

      def show_right_panel
        @show_right_panel
      end

        # The method to set the value to show_right_panel
        # @param show_right_panel [lang::Object] A lang::Object

      def show_right_panel=(show_right_panel)
        @show_right_panel = show_right_panel
        @key_modified['show_right_panel'] = 1
      end

        # The method to get the bc_view
        # @return A lang::Object value

      def bc_view
        @bc_view
      end

        # The method to set the value to bc_view
        # @param bc_view [lang::Object] A lang::Object

      def bc_view=(bc_view)
        @bc_view = bc_view
        @key_modified['bc_view'] = 1
      end

        # The method to get the unpin_recent_item
        # @return A lang::Object value

      def unpin_recent_item
        @unpin_recent_item
      end

        # The method to set the value to unpin_recent_item
        # @param unpin_recent_item [lang::Object] A lang::Object

      def unpin_recent_item=(unpin_recent_item)
        @unpin_recent_item = unpin_recent_item
        @key_modified['unpin_recent_item'] = 1
      end

        # The method to get the show_home
        # @return A Boolean value

      def show_home
        @show_home
      end

        # The method to set the value to show_home
        # @param show_home [Boolean] A Boolean

      def show_home=(show_home)
        if show_home!=nil and ! [true, false].include?show_home
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: show_home EXPECTED TYPE: Boolean', nil, nil)
        end
        @show_home = show_home
        @key_modified['show_home'] = 1
      end

        # The method to get the show_detail_view
        # @return A Boolean value

      def show_detail_view
        @show_detail_view
      end

        # The method to set the value to show_detail_view
        # @param show_detail_view [Boolean] A Boolean

      def show_detail_view=(show_detail_view)
        if show_detail_view!=nil and ! [true, false].include?show_detail_view
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: show_detail_view EXPECTED TYPE: Boolean', nil, nil)
        end
        @show_detail_view = show_detail_view
        @key_modified['show_detail_view'] = 1
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
