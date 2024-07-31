# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class RetrieveHrisTimeoffRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # id of the timeoff you want to retrieve.
      field :id, ::String, { 'path_param': { 'field_name': 'id', 'style': 'simple', 'explode': false } }
      # The connection token
      field :x_connection_token, ::String, { 'header': { 'field_name': 'x-connection-token', 'style': 'simple', 'explode': false } }
      # Set to true to include data from the original Hris software.
      field :remote_data, T.nilable(T::Boolean), { 'query_param': { 'field_name': 'remote_data', 'style': 'form', 'explode': true } }


      sig { params(id: ::String, x_connection_token: ::String, remote_data: T.nilable(T::Boolean)).void }
      def initialize(id: nil, x_connection_token: nil, remote_data: nil)
        @id = id
        @x_connection_token = x_connection_token
        @remote_data = remote_data
      end
    end
  end
end
