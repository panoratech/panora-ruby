# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedHrisGroupOutput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The created date of the group record
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The custom field mappings of the object between the remote 3rd party & Panora
      field :field_mappings, T.nilable(::OpenApiSDK::Shared::UnifiedHrisGroupOutputFieldMappings), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The UUID of the group record
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The last modified date of the group record
      field :modified_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('modified_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The name of the group
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # The UUID of the parent group
      field :parent_group, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parent_group') } }
      # The date when the group was created in the 3rd party system
      field :remote_created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The remote data of the group in the context of the 3rd Party
      field :remote_data, T.nilable(::OpenApiSDK::Shared::UnifiedHrisGroupOutputRemoteData), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_data') } }
      # The remote ID of the group in the context of the 3rd Party
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_id') } }
      # Indicates if the group was deleted in the remote system
      field :remote_was_deleted, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_was_deleted') } }
      # The type of the group
      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type') } }


      sig { params(created_at: T.nilable(::DateTime), field_mappings: T.nilable(::OpenApiSDK::Shared::UnifiedHrisGroupOutputFieldMappings), id: T.nilable(::String), modified_at: T.nilable(::DateTime), name: T.nilable(::String), parent_group: T.nilable(::String), remote_created_at: T.nilable(::DateTime), remote_data: T.nilable(::OpenApiSDK::Shared::UnifiedHrisGroupOutputRemoteData), remote_id: T.nilable(::String), remote_was_deleted: T.nilable(T::Boolean), type: T.nilable(::String)).void }
      def initialize(created_at: nil, field_mappings: nil, id: nil, modified_at: nil, name: nil, parent_group: nil, remote_created_at: nil, remote_data: nil, remote_id: nil, remote_was_deleted: nil, type: nil)
        @created_at = created_at
        @field_mappings = field_mappings
        @id = id
        @modified_at = modified_at
        @name = name
        @parent_group = parent_group
        @remote_created_at = remote_created_at
        @remote_data = remote_data
        @remote_id = remote_id
        @remote_was_deleted = remote_was_deleted
        @type = type
      end
    end
  end
end
