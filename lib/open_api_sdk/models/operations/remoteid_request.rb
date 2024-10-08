# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Operations
  

    class RemoteIdRequest < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig


      field :remote_id, ::String, { 'query_param': { 'field_name': 'remoteId', 'style': 'form', 'explode': true } }


      sig { params(remote_id: ::String).void }
      def initialize(remote_id: nil)
        @remote_id = remote_id
      end
    end
  end
end
