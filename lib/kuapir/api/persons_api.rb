# frozen_string_literal: true

require "cgi"

module Kuapir
  class PersonsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # поиск актеров, режиссеров и т.д. по имени
    # Одна страница может содержать до 50 элементов в items.
    # @param name [String] имя человека
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page номер страницы (default to 1)
    # @return [PersonByNameResponse]
    def api_v1_persons_get(name, opts = {})
      data, _status_code, _headers = api_v1_persons_get_with_http_info(name, opts)
      data
    end

    # поиск актеров, режиссеров и т.д. по имени
    # Одна страница может содержать до 50 элементов в items.
    # @param name [String] имя человека
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page номер страницы
    # @return [Array<(PersonByNameResponse, Integer, Hash)>] PersonByNameResponse data, response status code and response headers
    def api_v1_persons_get_with_http_info(name, opts = {})
      @api_client.config.logger.debug "Calling API: PersonsApi.api_v1_persons_get ..." if @api_client.config.debugging
      # verify the required parameter 'name' is set
      if @api_client.config.client_side_validation && name.nil?
        raise ArgumentError,
              "Missing the required parameter 'name' when calling PersonsApi.api_v1_persons_get"
      end
      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] > 2
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling PersonsApi.api_v1_persons_get, must be smaller than or equal to 2.'
      end

      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] < 1
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling PersonsApi.api_v1_persons_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v1/persons"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:name] = name
      query_params[:page] = opts[:page] unless opts[:page].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "PersonByNameResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"PersonsApi.api_v1_persons_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PersonsApi#api_v1_persons_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
