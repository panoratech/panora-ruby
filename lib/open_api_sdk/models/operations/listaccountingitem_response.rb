# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class ListAccountingItemResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer

      field :object, T.nilable(::OpenApiSDK::Operations::ListAccountingItemResponseBody)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, object: T.nilable(::OpenApiSDK::Operations::ListAccountingItemResponseBody)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, object: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @object = object
      end
    end
  end
end
