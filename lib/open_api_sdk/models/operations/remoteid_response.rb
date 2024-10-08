# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class RemoteIdResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer

      field :linked_user_response, T.nilable(::OpenApiSDK::Shared::LinkedUserResponse)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, linked_user_response: T.nilable(::OpenApiSDK::Shared::LinkedUserResponse)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, linked_user_response: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @linked_user_response = linked_user_response
      end
    end
  end
end
