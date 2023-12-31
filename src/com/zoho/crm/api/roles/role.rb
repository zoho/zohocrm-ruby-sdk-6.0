require_relative '../users/minified_user'
require_relative '../util/model'

module ZOHOCRMSDK
  module Roles
    class Role
      include Util::Model

      # Creates an instance of Role
      def initialize
        @display_label = nil
        @forecast_manager = nil
        @reporting_to = nil
        @share_with_peers = nil
        @description = nil
        @id = nil
        @name = nil
        @created_by__s = nil
        @modified_by__s = nil
        @modified_time__s = nil
        @created_time__s = nil
        @admin_user = nil
        @key_modified = Hash.new
      end

        # The method to get the display_label
        # @return A String value

      def display_label
        @display_label
      end

        # The method to set the value to display_label
        # @param display_label [String] A String

      def display_label=(display_label)
        if display_label!=nil and !display_label.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: display_label EXPECTED TYPE: String', nil, nil)
        end
        @display_label = display_label
        @key_modified['display_label'] = 1
      end

        # The method to get the forecast_manager
        # @return An instance of ReportingTo

      def forecast_manager
        @forecast_manager
      end

        # The method to set the value to forecast_manager
        # @param forecast_manager [ReportingTo] An instance of ReportingTo

      def forecast_manager=(forecast_manager)
        if forecast_manager!=nil and !forecast_manager.is_a? ReportingTo
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: forecast_manager EXPECTED TYPE: ReportingTo', nil, nil)
        end
        @forecast_manager = forecast_manager
        @key_modified['forecast_manager'] = 1
      end

        # The method to get the reporting_to
        # @return An instance of ReportingTo

      def reporting_to
        @reporting_to
      end

        # The method to set the value to reporting_to
        # @param reporting_to [ReportingTo] An instance of ReportingTo

      def reporting_to=(reporting_to)
        if reporting_to!=nil and !reporting_to.is_a? ReportingTo
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: reporting_to EXPECTED TYPE: ReportingTo', nil, nil)
        end
        @reporting_to = reporting_to
        @key_modified['reporting_to'] = 1
      end

        # The method to get the share_with_peers
        # @return A Boolean value

      def share_with_peers
        @share_with_peers
      end

        # The method to set the value to share_with_peers
        # @param share_with_peers [Boolean] A Boolean

      def share_with_peers=(share_with_peers)
        if share_with_peers!=nil and ! [true, false].include?share_with_peers
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: share_with_peers EXPECTED TYPE: Boolean', nil, nil)
        end
        @share_with_peers = share_with_peers
        @key_modified['share_with_peers'] = 1
      end

        # The method to get the description
        # @return A String value

      def description
        @description
      end

        # The method to set the value to description
        # @param description [String] A String

      def description=(description)
        if description!=nil and !description.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: description EXPECTED TYPE: String', nil, nil)
        end
        @description = description
        @key_modified['description'] = 1
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

        # The method to get the name
        # @return A String value

      def name
        @name
      end

        # The method to set the value to name
        # @param name [String] A String

      def name=(name)
        if name!=nil and !name.is_a? String
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: name EXPECTED TYPE: String', nil, nil)
        end
        @name = name
        @key_modified['name'] = 1
      end

        # The method to get the created_by__s
        # @return An instance of Users::MinifiedUser

      def created_by__s
        @created_by__s
      end

        # The method to set the value to created_by__s
        # @param created_by__s [Users::MinifiedUser] An instance of Users::MinifiedUser

      def created_by__s=(created_by__s)
        if created_by__s!=nil and !created_by__s.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_by__s EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @created_by__s = created_by__s
        @key_modified['created_by__s'] = 1
      end

        # The method to get the modified_by__s
        # @return An instance of Users::MinifiedUser

      def modified_by__s
        @modified_by__s
      end

        # The method to set the value to modified_by__s
        # @param modified_by__s [Users::MinifiedUser] An instance of Users::MinifiedUser

      def modified_by__s=(modified_by__s)
        if modified_by__s!=nil and !modified_by__s.is_a? Users::MinifiedUser
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_by__s EXPECTED TYPE: MinifiedUser', nil, nil)
        end
        @modified_by__s = modified_by__s
        @key_modified['modified_by__s'] = 1
      end

        # The method to get the modified_time__s
        # @return An instance of DateTime

      def modified_time__s
        @modified_time__s
      end

        # The method to set the value to modified_time__s
        # @param modified_time__s [DateTime] An instance of DateTime

      def modified_time__s=(modified_time__s)
        if modified_time__s!=nil and !modified_time__s.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: modified_time__s EXPECTED TYPE: DateTime', nil, nil)
        end
        @modified_time__s = modified_time__s
        @key_modified['modified_time__s'] = 1
      end

        # The method to get the created_time__s
        # @return An instance of DateTime

      def created_time__s
        @created_time__s
      end

        # The method to set the value to created_time__s
        # @param created_time__s [DateTime] An instance of DateTime

      def created_time__s=(created_time__s)
        if created_time__s!=nil and !created_time__s.is_a? DateTime
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: created_time__s EXPECTED TYPE: DateTime', nil, nil)
        end
        @created_time__s = created_time__s
        @key_modified['created_time__s'] = 1
      end

        # The method to get the admin_user
        # @return A Boolean value

      def admin_user
        @admin_user
      end

        # The method to set the value to admin_user
        # @param admin_user [Boolean] A Boolean

      def admin_user=(admin_user)
        if admin_user!=nil and ! [true, false].include?admin_user
          raise SDKException.new(Constants::DATA_TYPE_ERROR, 'KEY: admin_user EXPECTED TYPE: Boolean', nil, nil)
        end
        @admin_user = admin_user
        @key_modified['admin_user'] = 1
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
