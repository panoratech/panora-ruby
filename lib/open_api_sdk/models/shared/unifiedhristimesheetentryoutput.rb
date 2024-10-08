# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedHrisTimesheetEntryOutput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The created date of the timesheet entry
      field :created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The UUID of the associated employee
      field :employee_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('employee_id') } }
      # The end time of the timesheet entry
      field :end_time, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('end_time'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The custom field mappings of the object between the remote 3rd party & Panora
      field :field_mappings, T.nilable(::OpenApiSDK::Shared::UnifiedHrisTimesheetEntryOutputFieldMappings), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The number of hours worked
      field :hours_worked, T.nilable(::Float), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('hours_worked') } }
      # The UUID of the timesheet entry record
      field :id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('id') } }
      # The last modified date of the timesheet entry
      field :modified_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('modified_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The date when the timesheet entry was created in the remote system
      field :remote_created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The remote data of the timesheet entry in the context of the 3rd Party
      field :remote_data, T.nilable(::OpenApiSDK::Shared::UnifiedHrisTimesheetEntryOutputRemoteData), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_data') } }
      # The remote ID of the timesheet entry
      field :remote_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_id') } }
      # Indicates if the timesheet entry was deleted in the remote system
      field :remote_was_deleted, T.nilable(T::Boolean), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_was_deleted') } }
      # The start time of the timesheet entry
      field :start_time, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('start_time'), 'decoder': Utils.datetime_from_iso_format(true) } }


      sig { params(created_at: T.nilable(::DateTime), employee_id: T.nilable(::String), end_time: T.nilable(::DateTime), field_mappings: T.nilable(::OpenApiSDK::Shared::UnifiedHrisTimesheetEntryOutputFieldMappings), hours_worked: T.nilable(::Float), id: T.nilable(::String), modified_at: T.nilable(::DateTime), remote_created_at: T.nilable(::DateTime), remote_data: T.nilable(::OpenApiSDK::Shared::UnifiedHrisTimesheetEntryOutputRemoteData), remote_id: T.nilable(::String), remote_was_deleted: T.nilable(T::Boolean), start_time: T.nilable(::DateTime)).void }
      def initialize(created_at: nil, employee_id: nil, end_time: nil, field_mappings: nil, hours_worked: nil, id: nil, modified_at: nil, remote_created_at: nil, remote_data: nil, remote_id: nil, remote_was_deleted: nil, start_time: nil)
        @created_at = created_at
        @employee_id = employee_id
        @end_time = end_time
        @field_mappings = field_mappings
        @hours_worked = hours_worked
        @id = id
        @modified_at = modified_at
        @remote_created_at = remote_created_at
        @remote_data = remote_data
        @remote_id = remote_id
        @remote_was_deleted = remote_was_deleted
        @start_time = start_time
      end
    end
  end
end
