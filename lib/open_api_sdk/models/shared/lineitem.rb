# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class LineItem < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the associated company info object
      field :company_info_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('company_info_id') } }
      # The created date of the report item
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The last modified date of the report item
      field :modified_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('modified_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The name of the report item
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # The UUID of the parent item
      field :parent_item, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parent_item') } }
      # The date when the report item was generated in the remote system
      field :remote_generated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_generated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The remote ID of the report item
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_id') } }
      # The type of the report item
      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type') } }
      # The value of the report item
      field :value, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('value') } }


      sig { params(company_info_id: T.nilable(::String), created_at: T.nilable(::DateTime), modified_at: T.nilable(::DateTime), name: T.nilable(::String), parent_item: T.nilable(::String), remote_generated_at: T.nilable(::DateTime), remote_id: T.nilable(::String), type: T.nilable(::String), value: T.nilable(::Float)).void }
      def initialize(company_info_id: nil, created_at: nil, modified_at: nil, name: nil, parent_item: nil, remote_generated_at: nil, remote_id: nil, type: nil, value: nil)
        @company_info_id = company_info_id
        @created_at = created_at
        @modified_at = modified_at
        @name = name
        @parent_item = parent_item
        @remote_generated_at = remote_generated_at
        @remote_id = remote_id
        @type = type
        @value = value
      end
    end
  end
end
