# frozen_string_literal: true

require "cgi"

module Kuapir
  class StaffApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # получить данные об актерах, режисерах и т.д. по kinopoisk film id
    # @param film_id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [Array<StaffResponse>]
    def api_v1_staff_get(film_id, opts = {})
      data, _status_code, _headers = api_v1_staff_get_with_http_info(film_id, opts)
      data
    end

    # получить данные об актерах, режисерах и т.д. по kinopoisk film id
    # @param film_id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<StaffResponse>, Integer, Hash)>] Array<StaffResponse> data, response status code and response headers
    def api_v1_staff_get_with_http_info(film_id, opts = {})
      @api_client.config.logger.debug "Calling API: StaffApi.api_v1_staff_get ..." if @api_client.config.debugging
      # verify the required parameter 'film_id' is set
      if @api_client.config.client_side_validation && film_id.nil?
        raise ArgumentError,
              "Missing the required parameter 'film_id' when calling StaffApi.api_v1_staff_get"
      end
      if @api_client.config.client_side_validation && film_id > 500_000_000
        raise ArgumentError,
              'invalid value for "film_id" when calling StaffApi.api_v1_staff_get, must be smaller than or equal to 500_000_000.'
      end

      if @api_client.config.client_side_validation && film_id < 1
        raise ArgumentError,
              'invalid value for "film_id" when calling StaffApi.api_v1_staff_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v1/staff"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:filmId] = film_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "Array<StaffResponse>"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"StaffApi.api_v1_staff_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StaffApi#api_v1_staff_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить данные о конкретном человеке по kinopoisk person id
    # @param id [Integer] kinopoisk person id
    # @param [Hash] opts the optional parameters
    # @return [PersonResponse]
    def api_v1_staff_id_get(id, opts = {})
      data, _status_code, _headers = api_v1_staff_id_get_with_http_info(id, opts)
      data
    end

    # получить данные о конкретном человеке по kinopoisk person id
    # @param id [Integer] kinopoisk person id
    # @param [Hash] opts the optional parameters
    # @return [Array<(PersonResponse, Integer, Hash)>] PersonResponse data, response status code and response headers
    def api_v1_staff_id_get_with_http_info(id, opts = {})
      @api_client.config.logger.debug "Calling API: StaffApi.api_v1_staff_id_get ..." if @api_client.config.debugging
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError,
              "Missing the required parameter 'id' when calling StaffApi.api_v1_staff_id_get"
      end

      # resource path
      local_var_path = "/api/v1/staff/{id}".sub("{id}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "PersonResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"StaffApi.api_v1_staff_id_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StaffApi#api_v1_staff_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
