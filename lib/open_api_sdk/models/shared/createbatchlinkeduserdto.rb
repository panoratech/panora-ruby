# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class CreateBatchLinkedUserDto < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Your company alias
      field :alias_, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('alias') } }
      # The ids of the users in the context of your own software
      field :linked_user_origin_ids, T::Array[::String], { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('linked_user_origin_ids') } }


      sig { params(alias_: ::String, linked_user_origin_ids: T::Array[::String]).void }
      def initialize(alias_: nil, linked_user_origin_ids: nil)
        @alias_ = alias_
        @linked_user_origin_ids = linked_user_origin_ids
      end
    end
  end
end
