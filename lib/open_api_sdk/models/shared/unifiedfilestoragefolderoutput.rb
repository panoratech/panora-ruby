# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedFilestorageFolderOutput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :created_at, ::OpenApiSDK::Shared::UnifiedFilestorageFolderOutputCreatedAt, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at') } }
      # The description of the folder
      field :description, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }
      # The UUID of the drive tied to the folder
      field :drive_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('drive_id') } }

      field :field_mappings, ::OpenApiSDK::Shared::UnifiedFilestorageFolderOutputFieldMappings, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The url of the folder
      field :folder_url, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('folder_url') } }

      field :modified_at, ::OpenApiSDK::Shared::UnifiedFilestorageFolderOutputModifiedAt, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('modified_at') } }
      # The name of the folder
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # The UUID of the parent folder
      field :parent_folder_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parent_folder_id') } }
      # The UUID of the permission tied to the folder
      field :permission, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('permission') } }

      field :remote_data, ::OpenApiSDK::Shared::UnifiedFilestorageFolderOutputRemoteData, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_data') } }
      # The UUID of the shared link tied to the folder
      field :shared_link, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('shared_link') } }
      # The size of the folder
      field :size, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('size') } }
      # The UUID of the folder
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The id of the folder in the context of the 3rd Party
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_id') } }


      sig { params(created_at: ::OpenApiSDK::Shared::UnifiedFilestorageFolderOutputCreatedAt, description: ::String, drive_id: ::String, field_mappings: ::OpenApiSDK::Shared::UnifiedFilestorageFolderOutputFieldMappings, folder_url: ::String, modified_at: ::OpenApiSDK::Shared::UnifiedFilestorageFolderOutputModifiedAt, name: ::String, parent_folder_id: ::String, permission: ::String, remote_data: ::OpenApiSDK::Shared::UnifiedFilestorageFolderOutputRemoteData, shared_link: ::String, size: ::String, id: T.nilable(::String), remote_id: T.nilable(::String)).void }
      def initialize(created_at: nil, description: nil, drive_id: nil, field_mappings: nil, folder_url: nil, modified_at: nil, name: nil, parent_folder_id: nil, permission: nil, remote_data: nil, shared_link: nil, size: nil, id: nil, remote_id: nil)
        @created_at = created_at
        @description = description
        @drive_id = drive_id
        @field_mappings = field_mappings
        @folder_url = folder_url
        @modified_at = modified_at
        @name = name
        @parent_folder_id = parent_folder_id
        @permission = permission
        @remote_data = remote_data
        @shared_link = shared_link
        @size = size
        @id = id
        @remote_id = remote_id
      end
    end
  end
end
