# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedAtsInterviewInput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The UUID of the application
      field :application_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('application_id') } }
      # The end date and time of the interview
      field :end_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('end_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The custom field mappings of the object between the remote 3rd party & Panora
      field :field_mappings, T.nilable(T::Hash[Symbol, ::Object]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The UUIDs of the interviewers
      field :interviewers, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('interviewers') } }
      # The UUID of the job interview stage
      field :job_interview_stage_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('job_interview_stage_id') } }
      # The location of the interview
      field :location, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('location') } }
      # The UUID of the organizer
      field :organized_by, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('organized_by') } }
      # The remote creation date of the interview
      field :remote_created_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_created_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The remote modification date of the interview
      field :remote_updated_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('remote_updated_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The start date and time of the interview
      field :start_at, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('start_at'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The status of the interview
      field :status, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('status') } }


      sig { params(application_id: T.nilable(::String), end_at: T.nilable(::DateTime), field_mappings: T.nilable(T::Hash[Symbol, ::Object]), interviewers: T.nilable(T::Array[::String]), job_interview_stage_id: T.nilable(::String), location: T.nilable(::String), organized_by: T.nilable(::String), remote_created_at: T.nilable(::DateTime), remote_updated_at: T.nilable(::DateTime), start_at: T.nilable(::DateTime), status: T.nilable(::String)).void }
      def initialize(application_id: nil, end_at: nil, field_mappings: nil, interviewers: nil, job_interview_stage_id: nil, location: nil, organized_by: nil, remote_created_at: nil, remote_updated_at: nil, start_at: nil, status: nil)
        @application_id = application_id
        @end_at = end_at
        @field_mappings = field_mappings
        @interviewers = interviewers
        @job_interview_stage_id = job_interview_stage_id
        @location = location
        @organized_by = organized_by
        @remote_created_at = remote_created_at
        @remote_updated_at = remote_updated_at
        @start_at = start_at
        @status = status
      end
    end
  end
end
