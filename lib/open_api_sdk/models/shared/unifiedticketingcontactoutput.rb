# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedTicketingContactOutput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The email address of the contact
      field :email_address, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('email_address') } }
      # The name of the contact
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # The created date of the object
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The details of the contact
      field :details, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('details') } }
      # The custom field mappings of the contact between the remote 3rd party & Panora
      field :field_mappings, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The UUID of the contact
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The modified date of the object
      field :modified_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('modified_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The phone number of the contact
      field :phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('phone_number') } }
      # The remote data of the contact in the context of the 3rd Party
      field :remote_data, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_data') } }
      # The id of the contact in the context of the 3rd Party
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_id') } }


      sig { params(email_address: ::String, name: ::String, created_at: T.nilable(::DateTime), details: T.nilable(::String), field_mappings: T.nilable(T::Hash[Symbol, ::Object]), id: T.nilable(::String), modified_at: T.nilable(::DateTime), phone_number: T.nilable(::String), remote_data: T.nilable(T::Hash[Symbol, ::Object]), remote_id: T.nilable(::String)).void }
      def initialize(email_address: nil, name: nil, created_at: nil, details: nil, field_mappings: nil, id: nil, modified_at: nil, phone_number: nil, remote_data: nil, remote_id: nil)
        @email_address = email_address
        @name = name
        @created_at = created_at
        @details = details
        @field_mappings = field_mappings
        @id = id
        @modified_at = modified_at
        @phone_number = phone_number
        @remote_data = remote_data
        @remote_id = remote_id
      end
    end
  end
end
