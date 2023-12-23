# frozen_string_literal: true

require "cgi"

module Kuapir
  class ReviewsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # получить полную рецензию по kinopoisk review id
    # Возвращает полную информацию о рецензии.
    # @param review_id [Integer] kinopoisk review id
    # @param [Hash] opts the optional parameters
    # @return [ReviewDetailsResponse]
    def api_v1_reviews_details_get(review_id, opts = {})
      data, _status_code, _headers = api_v1_reviews_details_get_with_http_info(review_id, opts)
      data
    end

    # получить полную рецензию по kinopoisk review id
    # Возвращает полную информацию о рецензии.
    # @param review_id [Integer] kinopoisk review id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ReviewDetailsResponse, Integer, Hash)>] ReviewDetailsResponse data, response status code and response headers
    def api_v1_reviews_details_get_with_http_info(review_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: ReviewsApi.api_v1_reviews_details_get ..."
      end
      # verify the required parameter 'review_id' is set
      if @api_client.config.client_side_validation && review_id.nil?
        raise ArgumentError,
              "Missing the required parameter 'review_id' when calling ReviewsApi.api_v1_reviews_details_get"
      end

      # resource path
      local_var_path = "/api/v1/reviews/details"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:reviewId] = review_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "ReviewDetailsResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"ReviewsApi.api_v1_reviews_details_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReviewsApi#api_v1_reviews_details_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить рецензии зрителей
    # Возвращает список рецензий с пагинацией. Каждая страница содержит не более чем 20 рецензий. Поле <b>description</b> содержит не полный текст рецензии. Полный текст может быть получен из /api/v1/reviews/details
    # @param film_id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page номер страницы (default to 1)
    # @return [ReviewsResponse]
    def api_v1_reviews_get(film_id, opts = {})
      data, _status_code, _headers = api_v1_reviews_get_with_http_info(film_id, opts)
      data
    end

    # получить рецензии зрителей
    # Возвращает список рецензий с пагинацией. Каждая страница содержит не более чем 20 рецензий. Поле &lt;b&gt;description&lt;/b&gt; содержит не полный текст рецензии. Полный текст может быть получен из /api/v1/reviews/details
    # @param film_id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page номер страницы
    # @return [Array<(ReviewsResponse, Integer, Hash)>] ReviewsResponse data, response status code and response headers
    def api_v1_reviews_get_with_http_info(film_id, opts = {})
      @api_client.config.logger.debug "Calling API: ReviewsApi.api_v1_reviews_get ..." if @api_client.config.debugging
      # verify the required parameter 'film_id' is set
      if @api_client.config.client_side_validation && film_id.nil?
        raise ArgumentError,
              "Missing the required parameter 'film_id' when calling ReviewsApi.api_v1_reviews_get"
      end

      if @api_client.config.client_side_validation && film_id < 1
        raise ArgumentError,
              'invalid value for "film_id" when calling ReviewsApi.api_v1_reviews_get, must be greater than or equal to 1.'
      end

      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] > 50
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling ReviewsApi.api_v1_reviews_get, must be smaller than or equal to 50.'
      end

      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] < 1
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling ReviewsApi.api_v1_reviews_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v1/reviews"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:filmId] = film_id
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
      return_type = opts[:debug_return_type] || "ReviewsResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"ReviewsApi.api_v1_reviews_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReviewsApi#api_v1_reviews_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
