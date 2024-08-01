# Code generated by Speakeasy (https://speakeasy.com). DO NOT EDIT.

# typed: true
# frozen_string_literal: true

require 'faraday'
require 'faraday/multipart'
require 'sorbet-runtime'

module OpenApiSDK
  extend T::Sig
  class TicketingTeams
    extend T::Sig


    sig { params(sdk_config: SDKConfiguration).void }
    def initialize(sdk_config)
      @sdk_configuration = sdk_config
    end


    sig { params(x_connection_token: ::String, remote_data: T.nilable(T::Boolean), limit: T.nilable(::Float), cursor: T.nilable(::String)).returns(::OpenApiSDK::Operations::ListTicketingTeamsResponse) }
    def list(x_connection_token, remote_data = nil, limit = nil, cursor = nil)
      # list - List  Teams
      request = ::OpenApiSDK::Operations::ListTicketingTeamsRequest.new(
        
        x_connection_token: x_connection_token,
        remote_data: remote_data,
        limit: limit,
        cursor: cursor
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = "#{base_url}/ticketing/teams"
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::ListTicketingTeamsRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::ListTicketingTeamsResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Operations::ListTicketingTeamsResponseBody)
          res.object = out
        end
      end
      res
    end


    sig { params(x_connection_token: ::String, id: ::String, remote_data: T.nilable(T::Boolean)).returns(::OpenApiSDK::Operations::RetrieveTicketingTeamResponse) }
    def retrieve(x_connection_token, id, remote_data = nil)
      # retrieve - Retrieve Teams
      # Retrieve Teams from any connected Ticketing software
      request = ::OpenApiSDK::Operations::RetrieveTicketingTeamRequest.new(
        
        x_connection_token: x_connection_token,
        id: id,
        remote_data: remote_data
      )
      url, params = @sdk_configuration.get_server_details
      base_url = Utils.template_url(url, params)
      url = Utils.generate_url(
        ::OpenApiSDK::Operations::RetrieveTicketingTeamRequest,
        base_url,
        '/ticketing/teams/{id}',
        request
      )
      headers = Utils.get_headers(request)
      query_params = Utils.get_query_params(::OpenApiSDK::Operations::RetrieveTicketingTeamRequest, request)
      headers['Accept'] = 'application/json'
      headers['user-agent'] = @sdk_configuration.user_agent

      r = @sdk_configuration.client.get(url) do |req|
        req.headers = headers
        req.params = query_params
      end

      content_type = r.headers.fetch('Content-Type', 'application/octet-stream')

      res = ::OpenApiSDK::Operations::RetrieveTicketingTeamResponse.new(
        status_code: r.status, content_type: content_type, raw_response: r
      )
      if r.status == 200
        if Utils.match_content_type(content_type, 'application/json')
          out = Utils.unmarshal_complex(r.env.response_body, ::OpenApiSDK::Shared::UnifiedTicketingTeamOutput)
          res.unified_ticketing_team_output = out
        end
      end
      res
    end
  end
end
