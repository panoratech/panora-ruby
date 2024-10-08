# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class TaxItem < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The amount of the tax
      field :amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('amount') } }
      # Indicates if this is an employer tax
      field :employer_tax, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('employer_tax') } }
      # The name of the tax
      field :name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }


      sig { params(amount: T.nilable(::Float), employer_tax: T.nilable(T::Boolean), name: T.nilable(::String)).void }
      def initialize(amount: nil, employer_tax: nil, name: nil)
        @amount = amount
        @employer_tax = employer_tax
        @name = name
      end
    end
  end
end
