# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedAtsOfferOutput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the application
      field :application_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('application_id') } }
      # The closing date of the offer
      field :closed_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('closed_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The created date of the object
      field :created_at, T.nilable(::OpenApiSDK::Shared::UnifiedAtsOfferOutputCreatedAt), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at') } }
      # The UUID of the creator
      field :created_by, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_by') } }
      # The custom field mappings of the object between the remote 3rd party & Panora
      field :field_mappings, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The UUID of the offer
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The modified date of the object
      field :modified_at, T.nilable(::OpenApiSDK::Shared::UnifiedAtsOfferOutputModifiedAt), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('modified_at') } }
      # The remote creation date of the offer
      field :remote_created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The remote data of the offer in the context of the 3rd Party
      field :remote_data, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_data') } }
      # The remote ID of the offer in the context of the 3rd Party
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_id') } }
      # The sending date of the offer
      field :sent_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('sent_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The start date of the offer
      field :start_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('start_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The status of the offer
      field :status, T.nilable(::OpenApiSDK::Shared::UnifiedAtsOfferOutputStatus), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('status'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::UnifiedAtsOfferOutputStatus, true) } }


      sig { params(application_id: T.nilable(::String), closed_at: T.nilable(::DateTime), created_at: T.nilable(::OpenApiSDK::Shared::UnifiedAtsOfferOutputCreatedAt), created_by: T.nilable(::String), field_mappings: T.nilable(T::Hash[Symbol, ::Object]), id: T.nilable(::String), modified_at: T.nilable(::OpenApiSDK::Shared::UnifiedAtsOfferOutputModifiedAt), remote_created_at: T.nilable(::DateTime), remote_data: T.nilable(T::Hash[Symbol, ::Object]), remote_id: T.nilable(::String), sent_at: T.nilable(::DateTime), start_date: T.nilable(::DateTime), status: T.nilable(::OpenApiSDK::Shared::UnifiedAtsOfferOutputStatus)).void }
      def initialize(application_id: nil, closed_at: nil, created_at: nil, created_by: nil, field_mappings: nil, id: nil, modified_at: nil, remote_created_at: nil, remote_data: nil, remote_id: nil, sent_at: nil, start_date: nil, status: nil)
        @application_id = application_id
        @closed_at = closed_at
        @created_at = created_at
        @created_by = created_by
        @field_mappings = field_mappings
        @id = id
        @modified_at = modified_at
        @remote_created_at = remote_created_at
        @remote_data = remote_data
        @remote_id = remote_id
        @sent_at = sent_at
        @start_date = start_date
        @status = status
      end
    end
  end
end
