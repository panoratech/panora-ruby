# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true


module OpenApiSDK
  module Shared
  

    class UnifiedHrisEmployeeInput < ::OpenApiSDK::Utils::FieldAugmented
      extend T::Sig

      # The URL of the employee's avatar
      field :avatar_url, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('avatar_url') } }
      # The UUID of the associated company
      field :company_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('company_id') } }
      # The date of birth of the employee
      field :date_of_birth, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('date_of_birth'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The full display name of the employee
      field :display_full_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('display_full_name') } }
      # The employee number
      field :employee_number, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('employee_number') } }
      # The employment status of the employee
      field :employment_status, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('employment_status') } }
      # The employments of the employee
      field :employments, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('employments') } }
      # The ethnicity of the employee
      field :ethnicity, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ethnicity') } }
      # The custom field mappings of the object between the remote 3rd party & Panora
      field :field_mappings, T.nilable(::OpenApiSDK::Shared::UnifiedHrisEmployeeInputFieldMappings), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('field_mappings') } }
      # The first name of the employee
      field :first_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('first_name') } }
      # The gender of the employee
      field :gender, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('gender') } }
      # The groups the employee belongs to
      field :groups, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('groups') } }
      # The last name of the employee
      field :last_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('last_name') } }
      # UUIDs of the of the Location associated with the company
      field :locations, T.nilable(T::Array[::String]), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('locations') } }
      # UUID of the manager (employee) of the employee
      field :manager_id, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('manager_id') } }
      # The marital status of the employee
      field :marital_status, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('marital_status') } }
      # The mobile phone number of the employee
      field :mobile_phone_number, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('mobile_phone_number') } }
      # The personal email of the employee
      field :personal_email, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('personal_email') } }
      # The preferred name of the employee
      field :preferred_name, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('preferred_name') } }
      # The Social Security Number of the employee
      field :ssn, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('ssn') } }
      # The start date of the employee
      field :start_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('start_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The termination date of the employee
      field :termination_date, T.nilable(::DateTime), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('termination_date'), 'decoder': Utils.datetime_from_iso_format(true) } }
      # The username of the employee
      field :username, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('username') } }
      # The work email of the employee
      field :work_email, T.nilable(::String), { 'format_json': { 'letter_case': ::OpenApiSDK::Utils.field_name('work_email') } }


      sig { params(avatar_url: T.nilable(::String), company_id: T.nilable(::String), date_of_birth: T.nilable(::DateTime), display_full_name: T.nilable(::String), employee_number: T.nilable(::String), employment_status: T.nilable(::String), employments: T.nilable(T::Array[::String]), ethnicity: T.nilable(::String), field_mappings: T.nilable(::OpenApiSDK::Shared::UnifiedHrisEmployeeInputFieldMappings), first_name: T.nilable(::String), gender: T.nilable(::String), groups: T.nilable(T::Array[::String]), last_name: T.nilable(::String), locations: T.nilable(T::Array[::String]), manager_id: T.nilable(::String), marital_status: T.nilable(::String), mobile_phone_number: T.nilable(::String), personal_email: T.nilable(::String), preferred_name: T.nilable(::String), ssn: T.nilable(::String), start_date: T.nilable(::DateTime), termination_date: T.nilable(::DateTime), username: T.nilable(::String), work_email: T.nilable(::String)).void }
      def initialize(avatar_url: nil, company_id: nil, date_of_birth: nil, display_full_name: nil, employee_number: nil, employment_status: nil, employments: nil, ethnicity: nil, field_mappings: nil, first_name: nil, gender: nil, groups: nil, last_name: nil, locations: nil, manager_id: nil, marital_status: nil, mobile_phone_number: nil, personal_email: nil, preferred_name: nil, ssn: nil, start_date: nil, termination_date: nil, username: nil, work_email: nil)
        @avatar_url = avatar_url
        @company_id = company_id
        @date_of_birth = date_of_birth
        @display_full_name = display_full_name
        @employee_number = employee_number
        @employment_status = employment_status
        @employments = employments
        @ethnicity = ethnicity
        @field_mappings = field_mappings
        @first_name = first_name
        @gender = gender
        @groups = groups
        @last_name = last_name
        @locations = locations
        @manager_id = manager_id
        @marital_status = marital_status
        @mobile_phone_number = mobile_phone_number
        @personal_email = personal_email
        @preferred_name = preferred_name
        @ssn = ssn
        @start_date = start_date
        @termination_date = termination_date
        @username = username
        @work_email = work_email
      end
    end
  end
end
