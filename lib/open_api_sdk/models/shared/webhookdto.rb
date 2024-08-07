# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class WebhookDto < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The events that the webhook listen to.
      field :scope, T::Array[::String], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('scope') } }
      # The endpoint url of the webhook.
      field :url, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('url') } }
      # The description of the webhook.
      field :description, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }


      sig { params(scope: T::Array[::String], url: ::String, description: T.nilable(::String)).void }
      def initialize(scope: nil, url: nil, description: nil)
        @scope = scope
        @url = url
        @description = description
      end
    end
  end
end
