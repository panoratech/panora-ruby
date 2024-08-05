# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class CreateMarketingautomationCampaignResponse < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # HTTP response content type for this operation
      field :content_type, ::String
      # Raw HTTP response; suitable for custom response parsing
      field :raw_response, ::Faraday::Response
      # HTTP response status code for this operation
      field :status_code, ::Integer

      field :unified_marketingautomation_campaign_output, T.nilable(::OpenApiSDK::Shared::UnifiedMarketingautomationCampaignOutput)


      sig { params(content_type: ::String, raw_response: ::Faraday::Response, status_code: ::Integer, unified_marketingautomation_campaign_output: T.nilable(::OpenApiSDK::Shared::UnifiedMarketingautomationCampaignOutput)).void }
      def initialize(content_type: nil, raw_response: nil, status_code: nil, unified_marketingautomation_campaign_output: nil)
        @content_type = content_type
        @raw_response = raw_response
        @status_code = status_code
        @unified_marketingautomation_campaign_output = unified_marketingautomation_campaign_output
      end
    end
  end
end
