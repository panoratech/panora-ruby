# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class ListCrmEngagementsRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The connection token
      field :x_connection_token, ::String, { 'header': { 'field_name': 'x-connection-token', 'style': 'simple', 'explode': false } }
      # Set to get the number of records after this cursor.
      field :cursor, T.nilable(::String), { 'query_param': { 'field_name': 'cursor', 'style': 'form', 'explode': true } }
      # Set to get the number of records.
      field :limit, T.nilable(::Float), { 'query_param': { 'field_name': 'limit', 'style': 'form', 'explode': true } }
      # Set to true to include data from the original software.
      field :remote_data, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'remote_data', 'style': 'form', 'explode': true } }


      sig { params(x_connection_token: ::String, cursor: T.nilable(::String), limit: T.nilable(::Float), remote_data: T.nilable(T::Boolean)).void }
      def initialize(x_connection_token: nil, cursor: nil, limit: nil, remote_data: nil)
        @x_connection_token = x_connection_token
        @cursor = cursor
        @limit = limit
        @remote_data = remote_data
      end
    end
  end
end
