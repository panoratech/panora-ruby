# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedAccountingAttachmentInput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the associated account
      field :account_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('account_id') } }
      # The custom field mappings of the object between the remote 3rd party & Panora
      field :field_mappings, T.nilable(::OpenApiSDK::Shared::UnifiedAccountingAttachmentInputFieldMappings), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The name of the attached file
      field :file_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('file_name') } }
      # The URL where the file can be accessed
      field :file_url, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('file_url') } }


      sig { params(account_id: T.nilable(::String), field_mappings: T.nilable(::OpenApiSDK::Shared::UnifiedAccountingAttachmentInputFieldMappings), file_name: T.nilable(::String), file_url: T.nilable(::String)).void }
      def initialize(account_id: nil, field_mappings: nil, file_name: nil, file_url: nil)
        @account_id = account_id
        @field_mappings = field_mappings
        @file_name = file_name
        @file_url = file_url
      end
    end
  end
end
