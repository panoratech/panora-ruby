# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class CreateLinkedUserDto < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # Your company alias
      field :alias_, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('alias') } }
      # The id of the user in the context of your own software
      field :linked_user_origin_id, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('linked_user_origin_id') } }


      sig { params(alias_: ::String, linked_user_origin_id: ::String).void }
      def initialize(alias_: nil, linked_user_origin_id: nil)
        @alias_ = alias_
        @linked_user_origin_id = linked_user_origin_id
      end
    end
  end
end
