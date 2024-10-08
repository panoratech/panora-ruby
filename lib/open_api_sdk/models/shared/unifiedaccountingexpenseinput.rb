# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedAccountingExpenseInput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the associated account
      field :account_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('account_id') } }
      # The UUID of the associated company info
      field :company_info_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('company_info_id') } }
      # The UUID of the associated contact
      field :contact_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('contact_id') } }
      # The currency of the expense
      field :currency, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('currency') } }
      # The exchange rate applied to the expense
      field :exchange_rate, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('exchange_rate') } }
      # The custom field mappings of the object between the remote 3rd party & Panora
      field :field_mappings, T.nilable(::OpenApiSDK::Shared::UnifiedAccountingExpenseInputFieldMappings), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The line items associated with this expense
      field :line_items, T.nilable(T::Array[::OpenApiSDK::Shared::LineItem]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('line_items') } }
      # A memo or description for the expense
      field :memo, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('memo') } }
      # The sub-total amount of the expense (before tax)
      field :sub_total, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('sub_total') } }
      # The total amount of the expense
      field :total_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('total_amount') } }
      # The total tax amount of the expense
      field :total_tax_amount, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('total_tax_amount') } }
      # The UUIDs of the tracking categories associated with the expense
      field :tracking_categories, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tracking_categories') } }
      # The date of the expense transaction
      field :transaction_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('transaction_date'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(account_id: T.nilable(::String), company_info_id: T.nilable(::String), contact_id: T.nilable(::String), currency: T.nilable(::String), exchange_rate: T.nilable(::String), field_mappings: T.nilable(::OpenApiSDK::Shared::UnifiedAccountingExpenseInputFieldMappings), line_items: T.nilable(T::Array[::OpenApiSDK::Shared::LineItem]), memo: T.nilable(::String), sub_total: T.nilable(::Float), total_amount: T.nilable(::Float), total_tax_amount: T.nilable(::Float), tracking_categories: T.nilable(T::Array[::String]), transaction_date: T.nilable(::DateTime)).void }
      def initialize(account_id: nil, company_info_id: nil, contact_id: nil, currency: nil, exchange_rate: nil, field_mappings: nil, line_items: nil, memo: nil, sub_total: nil, total_amount: nil, total_tax_amount: nil, tracking_categories: nil, transaction_date: nil)
        @account_id = account_id
        @company_info_id = company_info_id
        @contact_id = contact_id
        @currency = currency
        @exchange_rate = exchange_rate
        @field_mappings = field_mappings
        @line_items = line_items
        @memo = memo
        @sub_total = sub_total
        @total_amount = total_amount
        @total_tax_amount = total_tax_amount
        @tracking_categories = tracking_categories
        @transaction_date = transaction_date
      end
    end
  end
end
