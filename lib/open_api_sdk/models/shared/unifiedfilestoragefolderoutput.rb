# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedFilestorageFolderOutput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The description of the folder
      field :description, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }
      # The UUID of the drive tied to the folder
      field :drive_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('drive_id') } }
      # The url of the folder
      field :folder_url, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('folder_url') } }
      # The name of the folder
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # The UUID of the parent folder
      field :parent_folder_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parent_folder_id') } }
      # The UUID of the permission tied to the folder
      field :permission, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('permission') } }
      # The UUID of the shared link tied to the folder
      field :shared_link, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('shared_link') } }
      # The size of the folder
      field :size, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('size') } }
      # The created date of the object
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The custom field mappings of the object between the remote 3rd party & Panora
      field :field_mappings, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The UUID of the folder
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The modified date of the object
      field :modified_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('modified_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The remote data of the folder in the context of the 3rd Party
      field :remote_data, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_data') } }
      # The id of the folder in the context of the 3rd Party
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_id') } }


      sig { params(description: ::String, drive_id: ::String, folder_url: ::String, name: ::String, parent_folder_id: ::String, permission: ::String, shared_link: ::String, size: ::String, created_at: T.nilable(::DateTime), field_mappings: T.nilable(T::Hash[Symbol, ::Object]), id: T.nilable(::String), modified_at: T.nilable(::DateTime), remote_data: T.nilable(T::Hash[Symbol, ::Object]), remote_id: T.nilable(::String)).void }
      def initialize(description: nil, drive_id: nil, folder_url: nil, name: nil, parent_folder_id: nil, permission: nil, shared_link: nil, size: nil, created_at: nil, field_mappings: nil, id: nil, modified_at: nil, remote_data: nil, remote_id: nil)
        @description = description
        @drive_id = drive_id
        @folder_url = folder_url
        @name = name
        @parent_folder_id = parent_folder_id
        @permission = permission
        @shared_link = shared_link
        @size = size
        @created_at = created_at
        @field_mappings = field_mappings
        @id = id
        @modified_at = modified_at
        @remote_data = remote_data
        @remote_id = remote_id
      end
    end
  end
end
