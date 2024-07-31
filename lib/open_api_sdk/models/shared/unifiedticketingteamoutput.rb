# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedTicketingTeamOutput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :created_at, ::OpenApiSDK::Shared::UnifiedTicketingTeamOutputCreatedAt, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at') } }

      field :field_mappings, ::OpenApiSDK::Shared::UnifiedTicketingTeamOutputFieldMappings, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }

      field :modified_at, ::OpenApiSDK::Shared::UnifiedTicketingTeamOutputModifiedAt, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('modified_at') } }
      # The name of the team
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }

      field :remote_data, ::OpenApiSDK::Shared::UnifiedTicketingTeamOutputRemoteData, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_data') } }
      # The description of the team
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }
      # The UUID of the team
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The id of the team in the context of the 3rd Party
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_id') } }


      sig { params(created_at: ::OpenApiSDK::Shared::UnifiedTicketingTeamOutputCreatedAt, field_mappings: ::OpenApiSDK::Shared::UnifiedTicketingTeamOutputFieldMappings, modified_at: ::OpenApiSDK::Shared::UnifiedTicketingTeamOutputModifiedAt, name: ::String, remote_data: ::OpenApiSDK::Shared::UnifiedTicketingTeamOutputRemoteData, description: T.nilable(::String), id: T.nilable(::String), remote_id: T.nilable(::String)).void }
      def initialize(created_at: nil, field_mappings: nil, modified_at: nil, name: nil, remote_data: nil, description: nil, id: nil, remote_id: nil)
        @created_at = created_at
        @field_mappings = field_mappings
        @modified_at = modified_at
        @name = name
        @remote_data = remote_data
        @description = description
        @id = id
        @remote_id = remote_id
      end
    end
  end
end
