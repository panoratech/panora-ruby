# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedAtsUserOutput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The access role of the user
      field :access_role, T.nilable(::OpenApiSDK::Shared::AccessRole), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('access_role'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::AccessRole, true) } }
      # The created date of the object
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # Whether the user is disabled
      field :disabled, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('disabled') } }
      # The email of the user
      field :email, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('email') } }
      # The custom field mappings of the object between the remote 3rd party & Panora
      field :field_mappings, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The first name of the user
      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('first_name') } }
      # The UUID of the user
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The last name of the user
      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('last_name') } }
      # The modified date of the object
      field :modified_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('modified_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The remote creation date of the user
      field :remote_created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The remote data of the user in the context of the 3rd Party
      field :remote_data, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_data') } }
      # The remote ID of the user in the context of the 3rd Party
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_id') } }
      # The remote modification date of the user
      field :remote_modified_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_modified_at'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(access_role: T.nilable(::OpenApiSDK::Shared::AccessRole), created_at: T.nilable(::DateTime), disabled: T.nilable(T::Boolean), email: T.nilable(::String), field_mappings: T.nilable(T::Hash[Symbol, ::Object]), first_name: T.nilable(::String), id: T.nilable(::String), last_name: T.nilable(::String), modified_at: T.nilable(::DateTime), remote_created_at: T.nilable(::DateTime), remote_data: T.nilable(T::Hash[Symbol, ::Object]), remote_id: T.nilable(::String), remote_modified_at: T.nilable(::DateTime)).void }
      def initialize(access_role: nil, created_at: nil, disabled: nil, email: nil, field_mappings: nil, first_name: nil, id: nil, last_name: nil, modified_at: nil, remote_created_at: nil, remote_data: nil, remote_id: nil, remote_modified_at: nil)
        @access_role = access_role
        @created_at = created_at
        @disabled = disabled
        @email = email
        @field_mappings = field_mappings
        @first_name = first_name
        @id = id
        @last_name = last_name
        @modified_at = modified_at
        @remote_created_at = remote_created_at
        @remote_data = remote_data
        @remote_id = remote_id
        @remote_modified_at = remote_modified_at
      end
    end
  end
end
