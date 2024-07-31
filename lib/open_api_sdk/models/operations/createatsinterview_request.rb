# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreateAtsInterviewRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :unified_ats_interview_input, ::OpenApiSDK::Shared::UnifiedAtsInterviewInput, { 'request': { 'media_type': 'application/json' } }
      # The connection token
      field :x_connection_token, ::String, { 'header': { 'field_name': 'x-connection-token', 'style': 'simple', 'explode': false } }
      # Set to true to include data from the original Ats software.
      field :remote_data, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'remote_data', 'style': 'form', 'explode': true } }


      sig { params(unified_ats_interview_input: ::OpenApiSDK::Shared::UnifiedAtsInterviewInput, x_connection_token: ::String, remote_data: T.nilable(T::Boolean)).void }
      def initialize(unified_ats_interview_input: nil, x_connection_token: nil, remote_data: nil)
        @unified_ats_interview_input = unified_ats_interview_input
        @x_connection_token = x_connection_token
        @remote_data = remote_data
      end
    end
  end
end
