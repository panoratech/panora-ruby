# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  
    # The comment of the ticket
    class UnifiedTicketingTicketInputComment < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The body of the comment
      field :body, ::String, { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('body') } }
      # The attachements UUIDs tied to the comment
      field :attachments, T.nilable(T::Array[::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('attachments') } }
      # The UUID of the contact which the comment belongs to (if no user_id specified)
      field :contact_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('contact_id') } }
      # The creator type of the comment. Authorized values are either USER or CONTACT
      field :creator_type, T.nilable(::OpenApiSDK::Shared::UnifiedTicketingTicketInputCreatorType), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('creator_type'), 'decoder': Utils.enum_from_string(::OpenApiSDK::Shared::UnifiedTicketingTicketInputCreatorType, true) } }
      # The html body of the comment
      field :html_body, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('html_body') } }
      # The public status of the comment
      field :is_private, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('is_private') } }
      # The UUID of the ticket the comment is tied to
      field :ticket_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ticket_id') } }
      # The UUID of the user which the comment belongs to (if no contact_id specified)
      field :user_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('user_id') } }


      sig { params(body: ::String, attachments: T.nilable(T::Array[::Object]), contact_id: T.nilable(::String), creator_type: T.nilable(::OpenApiSDK::Shared::UnifiedTicketingTicketInputCreatorType), html_body: T.nilable(::String), is_private: T.nilable(T::Boolean), ticket_id: T.nilable(::String), user_id: T.nilable(::String)).void }
      def initialize(body: nil, attachments: nil, contact_id: nil, creator_type: nil, html_body: nil, is_private: nil, ticket_id: nil, user_id: nil)
        @body = body
        @attachments = attachments
        @contact_id = contact_id
        @creator_type = creator_type
        @html_body = html_body
        @is_private = is_private
        @ticket_id = ticket_id
        @user_id = user_id
      end
    end
  end
end
