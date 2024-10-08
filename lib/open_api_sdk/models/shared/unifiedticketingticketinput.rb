# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedTicketingTicketInput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The description of the ticket
      field :description, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('description') } }
      # The name of the ticket
      field :name, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('name') } }
      # The UUID of the account which the ticket belongs to
      field :account_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('account_id') } }
      # The users UUIDs the ticket is assigned to
      field :assigned_to, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('assigned_to') } }
      # The attachements UUIDs tied to the ticket
      field :attachments, T.nilable(T::Array[::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('attachments') } }
      # The collection UUIDs the ticket belongs to
      field :collections, T.nilable(T::Array[::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('collections') } }
      # The comment of the ticket
      field :comment, T.nilable(::OpenApiSDK::Shared::UnifiedTicketingTicketInputComment), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('comment') } }
      # The date the ticket has been completed
      field :completed_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('completed_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The UUID of the contact which the ticket belongs to
      field :contact_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('contact_id') } }
      # The date the ticket is due
      field :due_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('due_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The custom field mappings of the ticket between the remote 3rd party & Panora
      field :field_mappings, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The UUID of the parent ticket
      field :parent_ticket, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('parent_ticket') } }
      # The priority of the ticket. Authorized values are HIGH, MEDIUM or LOW.
      field :priority, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('priority') } }
      # The status of the ticket. Authorized values are OPEN or CLOSED.
      field :status, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('status') } }
      # The tags names of the ticket
      field :tags, T.nilable(T::Array[::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('tags') } }
      # The type of the ticket. Authorized values are PROBLEM, QUESTION, or TASK
      field :type, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('type') } }


      sig { params(description: ::String, name: ::String, account_id: T.nilable(::String), assigned_to: T.nilable(T::Array[::String]), attachments: T.nilable(T::Array[::Object]), collections: T.nilable(T::Array[::Object]), comment: T.nilable(::OpenApiSDK::Shared::UnifiedTicketingTicketInputComment), completed_at: T.nilable(::DateTime), contact_id: T.nilable(::String), due_date: T.nilable(::DateTime), field_mappings: T.nilable(T::Hash[Symbol, ::Object]), parent_ticket: T.nilable(::String), priority: T.nilable(::String), status: T.nilable(::String), tags: T.nilable(T::Array[::Object]), type: T.nilable(::String)).void }
      def initialize(description: nil, name: nil, account_id: nil, assigned_to: nil, attachments: nil, collections: nil, comment: nil, completed_at: nil, contact_id: nil, due_date: nil, field_mappings: nil, parent_ticket: nil, priority: nil, status: nil, tags: nil, type: nil)
        @description = description
        @name = name
        @account_id = account_id
        @assigned_to = assigned_to
        @attachments = attachments
        @collections = collections
        @comment = comment
        @completed_at = completed_at
        @contact_id = contact_id
        @due_date = due_date
        @field_mappings = field_mappings
        @parent_ticket = parent_ticket
        @priority = priority
        @status = status
        @tags = tags
        @type = type
      end
    end
  end
end
