# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class ListMarketingAutomationEventsResponseBody < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :data, T::Array[::OpenApiSDK::Shared::UnifiedMarketingautomationEventOutput], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('data') } }

      field :next_cursor, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('next_cursor') } }

      field :prev_cursor, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('prev_cursor') } }


      sig { params(data: T::Array[::OpenApiSDK::Shared::UnifiedMarketingautomationEventOutput], next_cursor: ::String, prev_cursor: ::String).void }
      def initialize(data: nil, next_cursor: nil, prev_cursor: nil)
        @data = data
        @next_cursor = next_cursor
        @prev_cursor = prev_cursor
      end
    end
  end
end
