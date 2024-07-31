# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreateMarketingautomationActionRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :unified_marketingautomation_action_input, ::OpenApiSDK::Shared::UnifiedMarketingautomationActionInput, { 'request': { 'media_type': 'application/json' } }
      # The connection token
      field :x_connection_token, ::String, { 'header': { 'field_name': 'x-connection-token', 'style': 'simple', 'explode': false } }
      # Set to true to include data from the original Marketingautomation software.
      field :remote_data, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'remote_data', 'style': 'form', 'explode': true } }


      sig { params(unified_marketingautomation_action_input: ::OpenApiSDK::Shared::UnifiedMarketingautomationActionInput, x_connection_token: ::String, remote_data: T.nilable(T::Boolean)).void }
      def initialize(unified_marketingautomation_action_input: nil, x_connection_token: nil, remote_data: nil)
        @unified_marketingautomation_action_input = unified_marketingautomation_action_input
        @x_connection_token = x_connection_token
        @remote_data = remote_data
      end
    end
  end
end
