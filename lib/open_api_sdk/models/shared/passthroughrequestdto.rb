# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class PassThroughRequestDto < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :method, ::OpenApiSDK::Shared::Method, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('method'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::Method, false) } }

      field :path, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('path') } }

      field :data, T.nilable(::OpenApiSDK::Shared::Data), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('data') } }

      field :headers, T.nilable(::OpenApiSDK::Shared::Headers), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('headers') } }


      sig { params(method: ::OpenApiSDK::Shared::Method, path: ::String, data: T.nilable(::OpenApiSDK::Shared::Data), headers: T.nilable(::OpenApiSDK::Shared::Headers)).void }
      def initialize(method: nil, path: nil, data: nil, headers: nil)
        @method = method
        @path = path
        @data = data
        @headers = headers
      end
    end
  end
end
