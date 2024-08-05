# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class LoginDto < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :email, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('email') } }

      field :id_user, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id_user') } }

      field :password_hash, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('password_hash') } }


      sig { params(email: ::String, id_user: ::String, password_hash: ::String).void }
      def initialize(email: nil, id_user: nil, password_hash: nil)
        @email = email
        @id_user = id_user
        @password_hash = password_hash
      end
    end
  end
end
