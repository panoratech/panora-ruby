# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class MarketingautomationActions
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(x_connection_token: ::String, remote_data: T.nilable(T::Boolean), limit: T.nilable(::Float), cursor: T.nilable(::String)).returns(::OpenApiSDK::Operations::ListMarketingautomationActionResponse) }
    def list(x_connection_token, remote_data = nil, limit = nil, cursor = nil)
      # list - List  Actions
      request = ::OpenApiSDK::Operations::ListMarketingautomationActionRequest.new(
        
        x_connection_token: x_connection_token,
        remote_data: remote_data,
        limit: limit,
        cursor: cursor
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/marketingautomation/actions"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::ListMarketingautomationActionRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::ListMarketingautomationActionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::ListMarketingautomationActionResponseBody)
          res.object = out
        end
      end
      res
    end


    sig { params(x_connection_token: ::String, unified_marketingautomation_action_input: ::OpenApiSDK::Shared::UnifiedMarketingautomationActionInput, remote_data: T.nilable(T::Boolean)).returns(::OpenApiSDK::Operations::CreateMarketingautomationActionResponse) }
    def create(x_connection_token, unified_marketingautomation_action_input, remote_data = nil)
      # create - Create Action
      # Create a action in any supported Marketingautomation software
      request = ::OpenApiSDK::Operations::CreateMarketingautomationActionRequest.new(
        
        x_connection_token: x_connection_token,
        unified_marketingautomation_action_input: unified_marketingautomation_action_input,
        remote_data: remote_data
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/marketingautomation/actions"
      headers = Utils.get_headers(request)
      req_content_type, data, form = Utils.serialize_request_body(request, :unified_marketingautomation_action_input, :json)
      headers['content-type'] = req_content_type
      raise StandardError, 'request body is required' if data.nil? && form.nil?
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::CreateMarketingautomationActionRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.post(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
        if form
          req.body = Utils.encode_form(form)
        elsif Utils.match_content_type(req_content_type, 'application/x-www-form-urlencoded')
          req.body = URI.encode_www_form(data)
        else
          req.body = data
        end
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::CreateMarketingautomationActionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 201
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnifiedMarketingautomationActionOutput)
          res.unified_marketingautomation_action_output = out
        end
      end
      res
    end


    sig { params(x_connection_token: ::String, id: ::String, remote_data: T.nilable(T::Boolean)).returns(::OpenApiSDK::Operations::RetrieveMarketingautomationActionResponse) }
    def retrieve(x_connection_token, id, remote_data = nil)
      # retrieve - Retrieve Actions
      # Retrieve Actions from any connected Marketingautomation software
      request = ::OpenApiSDK::Operations::RetrieveMarketingautomationActionRequest.new(
        
        x_connection_token: x_connection_token,
        id: id,
        remote_data: remote_data
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::RetrieveMarketingautomationActionRequest,
        base_url,
        '/marketingautomation/actions/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::RetrieveMarketingautomationActionRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
        Utils.configure_request_security(req, @sdk_configuration.security) if !@sdk_configuration.nil? && !@sdk_configuration.security.nil?
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::RetrieveMarketingautomationActionResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnifiedMarketingautomationActionOutput)
          res.unified_marketingautomation_action_output = out
        end
      end
      res
    end
  end
end
