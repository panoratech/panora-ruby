# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class RequestRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :pass_through_request_dto, ::OpenApiSDK::Shared::PassThroughRequestDto, { 'request': { 'media_type': 'application/json' } }

      field :x_connection_token, ::String, { 'header': { 'field_name': 'x-connection-token', 'style': 'simple', 'explode': false } }


      sig { params(pass_through_request_dto: ::OpenApiSDK::Shared::PassThroughRequestDto, x_connection_token: ::String).void }
      def initialize(pass_through_request_dto: nil, x_connection_token: nil)
        @pass_through_request_dto = pass_through_request_dto
        @x_connection_token = x_connection_token
      end
    end
  end
end
