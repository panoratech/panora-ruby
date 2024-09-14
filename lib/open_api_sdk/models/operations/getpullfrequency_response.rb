# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class GetPullFrequencyResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer

      field :update_pull_frequency_dto, T.nilable(::OpenApiSDK::Shared::UpdatePullFrequencyDto)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, update_pull_frequency_dto: T.nilable(::OpenApiSDK::Shared::UpdatePullFrequencyDto)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, update_pull_frequency_dto: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @update_pull_frequency_dto = update_pull_frequency_dto
      end
    end
  end
end
