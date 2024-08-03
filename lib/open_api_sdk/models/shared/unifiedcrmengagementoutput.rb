# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedCrmEngagementOutput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The type of the engagement. Authorized values are EMAIL, CALL or MEETING
      field :type, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type') } }
      # The UUID of the company tied to the engagement
      field :company_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('company_id') } }
      # The UUIDs of contacts tied to the engagement object
      field :contacts, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('contacts') } }
      # The content of the engagement
      field :content, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('content') } }
      # The created date of the object
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The direction of the engagement. Authorized values are INBOUND or OUTBOUND
      field :direction, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('direction') } }
      # The end time of the engagement
      field :end_time, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('end_time'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The custom field mappings of the engagement between the remote 3rd party & Panora
      field :field_mappings, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The UUID of the engagement
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The modified date of the object
      field :modified_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('modified_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The remote data of the engagement in the context of the Crm 3rd Party
      field :remote_data, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_data') } }
      # The id of the engagement in the context of the Crm 3rd Party
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_id') } }
      # The start time of the engagement
      field :start_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('start_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The subject of the engagement
      field :subject, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('subject') } }
      # The UUID of the user tied to the engagement
      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('user_id') } }


      sig { params(type: ::String, company_id: T.nilable(::String), contacts: T.nilable(T::Array[::String]), content: T.nilable(::String), created_at: T.nilable(::DateTime), direction: T.nilable(::String), end_time: T.nilable(::DateTime), field_mappings: T.nilable(T::Hash[Symbol, ::Object]), id: T.nilable(::String), modified_at: T.nilable(::DateTime), remote_data: T.nilable(T::Hash[Symbol, ::Object]), remote_id: T.nilable(::String), start_at: T.nilable(::DateTime), subject: T.nilable(::String), user_id: T.nilable(::String)).void }
      def initialize(type: nil, company_id: nil, contacts: nil, content: nil, created_at: nil, direction: nil, end_time: nil, field_mappings: nil, id: nil, modified_at: nil, remote_data: nil, remote_id: nil, start_at: nil, subject: nil, user_id: nil)
        @type = type
        @company_id = company_id
        @contacts = contacts
        @content = content
        @created_at = created_at
        @direction = direction
        @end_time = end_time
        @field_mappings = field_mappings
        @id = id
        @modified_at = modified_at
        @remote_data = remote_data
        @remote_id = remote_id
        @start_at = start_at
        @subject = subject
        @user_id = user_id
      end
    end
  end
end
