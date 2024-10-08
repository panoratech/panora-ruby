# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedTicketingTeamOutput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The name of the team
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # The created date of the object
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The description of the team
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }
      # The custom field mappings of the team between the remote 3rd party & Panora
      field :field_mappings, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The UUID of the team
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The modified date of the object
      field :modified_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('modified_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The remote data of the team in the context of the 3rd Party
      field :remote_data, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_data') } }
      # The id of the team in the context of the 3rd Party
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_id') } }


      sig { params(name: ::String, created_at: T.nilable(::DateTime), description: T.nilable(::String), field_mappings: T.nilable(T::Hash[Symbol, ::Object]), id: T.nilable(::String), modified_at: T.nilable(::DateTime), remote_data: T.nilable(T::Hash[Symbol, ::Object]), remote_id: T.nilable(::String)).void }
      def initialize(name: nil, created_at: nil, description: nil, field_mappings: nil, id: nil, modified_at: nil, remote_data: nil, remote_id: nil)
        @name = name
        @created_at = created_at
        @description = description
        @field_mappings = field_mappings
        @id = id
        @modified_at = modified_at
        @remote_data = remote_data
        @remote_id = remote_id
      end
    end
  end
end
