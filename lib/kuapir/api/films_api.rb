# frozen_string_literal: true

require "cgi"

module Kuapir
  class FilmsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # получить сиквелы и приквелы для фильма по kinopoisk film id
    # tbd
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [Array<FilmSequelsAndPrequelsResponse>]
    def api_v21_films_id_sequels_and_prequels_get(id, opts = {})
      data, _status_code, _headers = api_v21_films_id_sequels_and_prequels_get_with_http_info(id, opts)
      data
    end

    # получить сиквелы и приквелы для фильма по kinopoisk film id
    # tbd
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<FilmSequelsAndPrequelsResponse>, Integer, Hash)>] Array<FilmSequelsAndPrequelsResponse> data, response status code and response headers
    def api_v21_films_id_sequels_and_prequels_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilmsApi.api_v21_films_id_sequels_and_prequels_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError,
              "Missing the required parameter 'id' when calling FilmsApi.api_v21_films_id_sequels_and_prequels_get"
      end
      if @api_client.config.client_side_validation && id > 5000000
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v21_films_id_sequels_and_prequels_get, must be smaller than or equal to 5000000.'
      end

      if @api_client.config.client_side_validation && id < 1
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v21_films_id_sequels_and_prequels_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.1/films/{id}/sequels_and_prequels".sub("{id}", CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || "Array<FilmSequelsAndPrequelsResponse>"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v21_films_id_sequels_and_prequels_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v21_films_id_sequels_and_prequels_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить список цифровых релизов
    # Данный эндпоинт возвращает список цифровых релизов. Например https://www.kinopoisk.ru/comingsoon/digital/
    # @param year [Integer] год релиза
    # @param month [String] месяц релиза
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page номер страницы (default to 1)
    # @return [DigitalReleaseResponse]
    def api_v21_films_releases_get(year, month, opts = {})
      data, _status_code, _headers = api_v21_films_releases_get_with_http_info(year, month, opts)
      data
    end

    # получить список цифровых релизов
    # Данный эндпоинт возвращает список цифровых релизов. Например https://www.kinopoisk.ru/comingsoon/digital/
    # @param year [Integer] год релиза
    # @param month [String] месяц релиза
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page номер страницы
    # @return [Array<(DigitalReleaseResponse, Integer, Hash)>] DigitalReleaseResponse data, response status code and response headers
    def api_v21_films_releases_get_with_http_info(year, month, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilmsApi.api_v21_films_releases_get ..."
      end
      # verify the required parameter 'year' is set
      if @api_client.config.client_side_validation && year.nil?
        raise ArgumentError,
              "Missing the required parameter 'year' when calling FilmsApi.api_v21_films_releases_get"
      end
      # verify the required parameter 'month' is set
      if @api_client.config.client_side_validation && month.nil?
        raise ArgumentError,
              "Missing the required parameter 'month' when calling FilmsApi.api_v21_films_releases_get"
      end

      # verify enum value
      allowable_values = %w[JANUARY FEBRUARY MARCH APRIL MAY JUNE JULY AUGUST SEPTEMBER OCTOBER NOVEMBER DECEMBER]
      if @api_client.config.client_side_validation && !allowable_values.include?(month)
        raise ArgumentError,
              "invalid value for \"month\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] > 20
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling FilmsApi.api_v21_films_releases_get, must be smaller than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] < 1
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling FilmsApi.api_v21_films_releases_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.1/films/releases"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:year] = year
      query_params[:month] = month
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
      return_type = opts[:debug_return_type] || "DigitalReleaseResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v21_films_releases_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v21_films_releases_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить список фильмов по ключевым словам
    # Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов.
    # @param keyword [String] ключивые слова для поиска
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page номер страницы (default to 1)
    # @return [FilmSearchResponse]
    def api_v21_films_search_by_keyword_get(keyword, opts = {})
      data, _status_code, _headers = api_v21_films_search_by_keyword_get_with_http_info(keyword, opts)
      data
    end

    # получить список фильмов по ключевым словам
    # Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов.
    # @param keyword [String] ключивые слова для поиска
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :page номер страницы
    # @return [Array<(FilmSearchResponse, Integer, Hash)>] FilmSearchResponse data, response status code and response headers
    def api_v21_films_search_by_keyword_get_with_http_info(keyword, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilmsApi.api_v21_films_search_by_keyword_get ..."
      end
      # verify the required parameter 'keyword' is set
      if @api_client.config.client_side_validation && keyword.nil?
        raise ArgumentError,
              "Missing the required parameter 'keyword' when calling FilmsApi.api_v21_films_search_by_keyword_get"
      end
      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] > 20
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling FilmsApi.api_v21_films_search_by_keyword_get, must be smaller than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] < 1
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling FilmsApi.api_v21_films_search_by_keyword_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.1/films/search-by-keyword"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:keyword] = keyword
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
      return_type = opts[:debug_return_type] || "FilmSearchResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v21_films_search_by_keyword_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v21_films_search_by_keyword_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить id стран и жанров для использования в /api/v2.2/films
    # Возвращает список id стран и жанров, которые могут быть использованы в /api/v2.2/films
    # @param [Hash] opts the optional parameters
    # @return [FiltersResponse]
    def api_v22_films_filters_get(opts = {})
      data, _status_code, _headers = api_v22_films_filters_get_with_http_info(opts)
      data
    end

    # получить id стран и жанров для использования в /api/v2.2/films
    # Возвращает список id стран и жанров, которые могут быть использованы в /api/v2.2/films
    # @param [Hash] opts the optional parameters
    # @return [Array<(FiltersResponse, Integer, Hash)>] FiltersResponse data, response status code and response headers
    def api_v22_films_filters_get_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilmsApi.api_v22_films_filters_get ..."
      end
      # resource path
      local_var_path = "/api/v2.2/films/filters"

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
      return_type = opts[:debug_return_type] || "FiltersResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v22_films_filters_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v22_films_filters_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить список фильмов по различным фильтрам
    # Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов. Данный эндпоинт не возращает более 400 фильмов. <i>Используй /api/v2.2/films/filters чтобы получить id стран и жанров.</i>
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :countries список id стран разделенные запятой. Например &lt;i&gt;countries&#x3D;1,2,3&lt;/i&gt;. На данный момент можно указать не более одной страны.
    # @option opts [Array<Integer>] :genres список id жанров разделенные запятой. Например &lt;i&gt;genres&#x3D;1,2,3&lt;/i&gt;. На данный момент можно указать не более одного жанра.
    # @option opts [String] :order сортировка (default to 'RATING')
    # @option opts [String] :type тип фильма (default to 'ALL')
    # @option opts [Integer] :rating_from минимальный рейтинг (default to 0)
    # @option opts [Integer] :rating_to максимальный рейтинг (default to 10)
    # @option opts [Integer] :year_from минимальный год (default to 1000)
    # @option opts [Integer] :year_to максимальный год (default to 3000)
    # @option opts [String] :imdb_id imdb id
    # @option opts [String] :keyword ключевое слово, которое встречается в названии фильма
    # @option opts [Integer] :page номер страницы (default to 1)
    # @return [FilmSearchByFiltersResponse]
    def api_v22_films_get(opts = {})
      data, _status_code, _headers = api_v22_films_get_with_http_info(opts)
      data
    end

    # получить список фильмов по различным фильтрам
    # Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов. Данный эндпоинт не возращает более 400 фильмов. &lt;i&gt;Используй /api/v2.2/films/filters чтобы получить id стран и жанров.&lt;/i&gt;
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Integer>] :countries список id стран разделенные запятой. Например &lt;i&gt;countries&#x3D;1,2,3&lt;/i&gt;. На данный момент можно указать не более одной страны.
    # @option opts [Array<Integer>] :genres список id жанров разделенные запятой. Например &lt;i&gt;genres&#x3D;1,2,3&lt;/i&gt;. На данный момент можно указать не более одного жанра.
    # @option opts [String] :order сортировка
    # @option opts [String] :type тип фильма
    # @option opts [Integer] :rating_from минимальный рейтинг
    # @option opts [Integer] :rating_to максимальный рейтинг
    # @option opts [Integer] :year_from минимальный год
    # @option opts [Integer] :year_to максимальный год
    # @option opts [String] :imdb_id imdb id
    # @option opts [String] :keyword ключевое слово, которое встречается в названии фильма
    # @option opts [Integer] :page номер страницы
    # @return [Array<(FilmSearchByFiltersResponse, Integer, Hash)>] FilmSearchByFiltersResponse data, response status code and response headers
    def api_v22_films_get_with_http_info(opts = {})
      @api_client.config.logger.debug "Calling API: FilmsApi.api_v22_films_get ..." if @api_client.config.debugging
      allowable_values = %w[RATING NUM_VOTE YEAR]
      if @api_client.config.client_side_validation && opts[:order] && !allowable_values.include?(opts[:order])
        raise ArgumentError,
              "invalid value for \"order\", must be one of #{allowable_values}"
      end

      allowable_values = %w[FILM VIDEO TV_SERIES MINI_SERIES TV_SHOW ALL]
      if @api_client.config.client_side_validation && opts[:type] && !allowable_values.include?(opts[:type])
        raise ArgumentError,
              "invalid value for \"type\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] > 20
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling FilmsApi.api_v22_films_get, must be smaller than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] < 1
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling FilmsApi.api_v22_films_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.2/films"

      # query parameters
      query_params = opts[:query_params] || {}
      unless opts[:countries].nil?
        query_params[:countries] =
          @api_client.build_collection_param(opts[:countries], :multi)
      end
      query_params[:genres] = @api_client.build_collection_param(opts[:genres], :multi) unless opts[:genres].nil?
      query_params[:order] = opts[:order] unless opts[:order].nil?
      query_params[:type] = opts[:type] unless opts[:type].nil?
      query_params[:ratingFrom] = opts[:rating_from] unless opts[:rating_from].nil?
      query_params[:ratingTo] = opts[:rating_to] unless opts[:rating_to].nil?
      query_params[:yearFrom] = opts[:year_from] unless opts[:year_from].nil?
      query_params[:yearTo] = opts[:year_to] unless opts[:year_to].nil?
      query_params[:imdbId] = opts[:imdb_id] unless opts[:imdb_id].nil?
      query_params[:keyword] = opts[:keyword] unless opts[:keyword].nil?
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
      return_type = opts[:debug_return_type] || "FilmSearchByFiltersResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v22_films_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v22_films_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить данные о бюджете и сборах фильма по kinopoisk film id
    # Данный эндпоинт возвращает данные о бюджете и сборах.
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [BoxOfficeResponse]
    def api_v22_films_id_box_office_get(id, opts = {})
      data, _status_code, _headers = api_v22_films_id_box_office_get_with_http_info(id, opts)
      data
    end

    # получить данные о бюджете и сборах фильма по kinopoisk film id
    # Данный эндпоинт возвращает данные о бюджете и сборах.
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [Array<(BoxOfficeResponse, Integer, Hash)>] BoxOfficeResponse data, response status code and response headers
    def api_v22_films_id_box_office_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilmsApi.api_v22_films_id_box_office_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError,
              "Missing the required parameter 'id' when calling FilmsApi.api_v22_films_id_box_office_get"
      end
      if @api_client.config.client_side_validation && id > 5000000
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_box_office_get, must be smaller than or equal to 5000000.'
      end

      if @api_client.config.client_side_validation && id < 1
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_box_office_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.2/films/{id}/box_office".sub("{id}", CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || "BoxOfficeResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v22_films_id_box_office_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v22_films_id_box_office_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить данные о прокате фильма по kinopoisk film id
    # Данный эндпоинт возвращает данные о прокате в разных странах.
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [DistributionResponse]
    def api_v22_films_id_distributions_get(id, opts = {})
      data, _status_code, _headers = api_v22_films_id_distributions_get_with_http_info(id, opts)
      data
    end

    # получить данные о прокате фильма по kinopoisk film id
    # Данный эндпоинт возвращает данные о прокате в разных странах.
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [Array<(DistributionResponse, Integer, Hash)>] DistributionResponse data, response status code and response headers
    def api_v22_films_id_distributions_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilmsApi.api_v22_films_id_distributions_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError,
              "Missing the required parameter 'id' when calling FilmsApi.api_v22_films_id_distributions_get"
      end
      if @api_client.config.client_side_validation && id > 5000000
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_distributions_get, must be smaller than or equal to 5000000.'
      end

      if @api_client.config.client_side_validation && id < 1
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_distributions_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.2/films/{id}/distributions".sub("{id}", CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || "DistributionResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v22_films_id_distributions_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v22_films_id_distributions_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить данные о фактах и ошибках в фильме по kinopoisk film id
    # Данный эндпоинт возвращает список фактов и ошибок в фильме. <br> type - <b>FACT</b>, обозначает интересный факт о фильме. <br> type - <b>BLOOPER</b>, обозначает ошибку в фильме.
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [FactResponse]
    def api_v22_films_id_facts_get(id, opts = {})
      data, _status_code, _headers = api_v22_films_id_facts_get_with_http_info(id, opts)
      data
    end

    # получить данные о фактах и ошибках в фильме по kinopoisk film id
    # Данный эндпоинт возвращает список фактов и ошибок в фильме. &lt;br&gt; type - &lt;b&gt;FACT&lt;/b&gt;, обозначает интересный факт о фильме. &lt;br&gt; type - &lt;b&gt;BLOOPER&lt;/b&gt;, обозначает ошибку в фильме.
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [Array<(FactResponse, Integer, Hash)>] FactResponse data, response status code and response headers
    def api_v22_films_id_facts_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilmsApi.api_v22_films_id_facts_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError,
              "Missing the required parameter 'id' when calling FilmsApi.api_v22_films_id_facts_get"
      end
      if @api_client.config.client_side_validation && id > 5000000
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_facts_get, must be smaller than or equal to 5000000.'
      end

      if @api_client.config.client_side_validation && id < 1
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_facts_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.2/films/{id}/facts".sub("{id}", CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || "FactResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v22_films_id_facts_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v22_films_id_facts_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить данные о фильме по kinopoisk id
    # Данный эндпоинт возвращает базовые данные о фильме. Поле <b>lastSync</b> показывает дату последнего обновления данных.
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [Film]
    def api_v22_films_id_get(id, opts = {})
      data, _status_code, _headers = api_v22_films_id_get_with_http_info(id, opts)
      data
    end

    # получить данные о фильме по kinopoisk id
    # Данный эндпоинт возвращает базовые данные о фильме. Поле &lt;b&gt;lastSync&lt;/b&gt; показывает дату последнего обновления данных.
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [Array<(Film, Integer, Hash)>] Film data, response status code and response headers
    def api_v22_films_id_get_with_http_info(id, opts = {})
      @api_client.config.logger.debug "Calling API: FilmsApi.api_v22_films_id_get ..." if @api_client.config.debugging
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError,
              "Missing the required parameter 'id' when calling FilmsApi.api_v22_films_id_get"
      end
      if @api_client.config.client_side_validation && id > 5000000
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_get, must be smaller than or equal to 5000000.'
      end

      if @api_client.config.client_side_validation && id < 1
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.2/films/{id}".sub("{id}", CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || "Film"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v22_films_id_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v22_films_id_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить изображения(кадры, постеры, фан-арты, обои и т.д.) связанные с фильмом по kinopoisk film id
    # Данный эндпоинт возвращает изображения связанные с фильмом с пагинацией. Каждая страница содержит <b>не более чем 20 фильмов</b>.</br> Доступные изображения:</br> <ul> <li>STILL - кадры</li> <li>SHOOTING - изображения со съемок</li> <li>POSTER - постеры</li> <li>FAN_ART - фан-арты</li> <li>PROMO - промо</li> <li>CONCEPT - концепт-арты</li> <li>WALLPAPER - обои</li> <li>COVER - обложки</li> <li>SCREENSHOT - скриншоты</li> </ul>
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type тип изображения (default to 'STILL')
    # @option opts [Integer] :page номер страницы (default to 1)
    # @return [ImageResponse]
    def api_v22_films_id_images_get(id, opts = {})
      data, _status_code, _headers = api_v22_films_id_images_get_with_http_info(id, opts)
      data
    end

    # получить изображения(кадры, постеры, фан-арты, обои и т.д.) связанные с фильмом по kinopoisk film id
    # Данный эндпоинт возвращает изображения связанные с фильмом с пагинацией. Каждая страница содержит &lt;b&gt;не более чем 20 фильмов&lt;/b&gt;.&lt;/br&gt; Доступные изображения:&lt;/br&gt; &lt;ul&gt; &lt;li&gt;STILL - кадры&lt;/li&gt; &lt;li&gt;SHOOTING - изображения со съемок&lt;/li&gt; &lt;li&gt;POSTER - постеры&lt;/li&gt; &lt;li&gt;FAN_ART - фан-арты&lt;/li&gt; &lt;li&gt;PROMO - промо&lt;/li&gt; &lt;li&gt;CONCEPT - концепт-арты&lt;/li&gt; &lt;li&gt;WALLPAPER - обои&lt;/li&gt; &lt;li&gt;COVER - обложки&lt;/li&gt; &lt;li&gt;SCREENSHOT - скриншоты&lt;/li&gt; &lt;/ul&gt;
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type тип изображения
    # @option opts [Integer] :page номер страницы
    # @return [Array<(ImageResponse, Integer, Hash)>] ImageResponse data, response status code and response headers
    def api_v22_films_id_images_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilmsApi.api_v22_films_id_images_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError,
              "Missing the required parameter 'id' when calling FilmsApi.api_v22_films_id_images_get"
      end
      if @api_client.config.client_side_validation && id > 5000000
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_images_get, must be smaller than or equal to 5000000.'
      end

      if @api_client.config.client_side_validation && id < 1
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_images_get, must be greater than or equal to 1.'
      end

      allowable_values = %w[STILL SHOOTING POSTER FAN_ART PROMO CONCEPT WALLPAPER COVER SCREENSHOT]
      if @api_client.config.client_side_validation && opts[:type] && !allowable_values.include?(opts[:type])
        raise ArgumentError,
              "invalid value for \"type\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] > 20
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling FilmsApi.api_v22_films_id_images_get, must be smaller than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] < 1
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling FilmsApi.api_v22_films_id_images_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.2/films/{id}/images".sub("{id}", CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:type] = opts[:type] unless opts[:type].nil?
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
      return_type = opts[:debug_return_type] || "ImageResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v22_films_id_images_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v22_films_id_images_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить данные о сезонах для сериала по kinopoisk film id
    # Данный эндпоинт возвращает данные о сезонах для сериала.
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [SeasonResponse]
    def api_v22_films_id_seasons_get(id, opts = {})
      data, _status_code, _headers = api_v22_films_id_seasons_get_with_http_info(id, opts)
      data
    end

    # получить данные о сезонах для сериала по kinopoisk film id
    # Данный эндпоинт возвращает данные о сезонах для сериала.
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [Array<(SeasonResponse, Integer, Hash)>] SeasonResponse data, response status code and response headers
    def api_v22_films_id_seasons_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilmsApi.api_v22_films_id_seasons_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError,
              "Missing the required parameter 'id' when calling FilmsApi.api_v22_films_id_seasons_get"
      end
      if @api_client.config.client_side_validation && id > 5000000
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_seasons_get, must be smaller than or equal to 5000000.'
      end

      if @api_client.config.client_side_validation && id < 1
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_seasons_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.2/films/{id}/seasons".sub("{id}", CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || "SeasonResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v22_films_id_seasons_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v22_films_id_seasons_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить список похожих фильмов по kinopoisk film id
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [RelatedFilmResponse]
    def api_v22_films_id_similars_get(id, opts = {})
      data, _status_code, _headers = api_v22_films_id_similars_get_with_http_info(id, opts)
      data
    end

    # получить список похожих фильмов по kinopoisk film id
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [Array<(RelatedFilmResponse, Integer, Hash)>] RelatedFilmResponse data, response status code and response headers
    def api_v22_films_id_similars_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilmsApi.api_v22_films_id_similars_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError,
              "Missing the required parameter 'id' when calling FilmsApi.api_v22_films_id_similars_get"
      end
      if @api_client.config.client_side_validation && id > 5000000
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_similars_get, must be smaller than or equal to 5000000.'
      end

      if @api_client.config.client_side_validation && id < 1
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_similars_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.2/films/{id}/similars".sub("{id}", CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || "RelatedFilmResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v22_films_id_similars_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v22_films_id_similars_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить трейлеры,тизеры,видео для фильма по kinopoisk film id
    # Данный эндпоинт возвращает трейлеры,тизеры,видео для фильма по kinopoisk film id. В данный момент доступно два site:  <br/> <ul><li>YOUTUBE - в этом случае <b>url</b> это просто ссылка на youtube видео.</li><li>KINOPOISK_WIDGET - в этом случае <b>url</b> это ссылка на кинопоиск виджет. Например https://widgets.kinopoisk.ru/discovery/trailer/123573?onlyPlayer=1&autoplay=1&cover=1. Если вы хотите вставить этот виджет на вашу страницу, вы можете сделать следующее:  <br/><br/>&lt;script src=&quot;https://unpkg.com/@ungap/custom-elements-builtin&quot;&gt;&lt;/script&gt;<br/>&lt;script type=&quot;module&quot; src=&quot;https://unpkg.com/x-frame-bypass&quot;&gt;&lt;/script&gt;<br/>&lt;iframe is=&quot;x-frame-bypass&quot; src=&quot;https://widgets.kinopoisk.ru/discovery/trailer/167560?onlyPlayer=1&amp;autoplay=1&amp;cover=1&quot; width=&quot;500&quot; height=&quot;500&quot;&gt;&lt;/iframe&gt;</li></ul>
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [VideoResponse]
    def api_v22_films_id_videos_get(id, opts = {})
      data, _status_code, _headers = api_v22_films_id_videos_get_with_http_info(id, opts)
      data
    end

    # получить трейлеры,тизеры,видео для фильма по kinopoisk film id
    # Данный эндпоинт возвращает трейлеры,тизеры,видео для фильма по kinopoisk film id. В данный момент доступно два site:  &lt;br/&gt; &lt;ul&gt;&lt;li&gt;YOUTUBE - в этом случае &lt;b&gt;url&lt;/b&gt; это просто ссылка на youtube видео.&lt;/li&gt;&lt;li&gt;KINOPOISK_WIDGET - в этом случае &lt;b&gt;url&lt;/b&gt; это ссылка на кинопоиск виджет. Например https://widgets.kinopoisk.ru/discovery/trailer/123573?onlyPlayer&#x3D;1&amp;autoplay&#x3D;1&amp;cover&#x3D;1. Если вы хотите вставить этот виджет на вашу страницу, вы можете сделать следующее:  &lt;br/&gt;&lt;br/&gt;&amp;lt;script src&#x3D;&amp;quot;https://unpkg.com/@ungap/custom-elements-builtin&amp;quot;&amp;gt;&amp;lt;/script&amp;gt;&lt;br/&gt;&amp;lt;script type&#x3D;&amp;quot;module&amp;quot; src&#x3D;&amp;quot;https://unpkg.com/x-frame-bypass&amp;quot;&amp;gt;&amp;lt;/script&amp;gt;&lt;br/&gt;&amp;lt;iframe is&#x3D;&amp;quot;x-frame-bypass&amp;quot; src&#x3D;&amp;quot;https://widgets.kinopoisk.ru/discovery/trailer/167560?onlyPlayer&#x3D;1&amp;amp;autoplay&#x3D;1&amp;amp;cover&#x3D;1&amp;quot; width&#x3D;&amp;quot;500&amp;quot; height&#x3D;&amp;quot;500&amp;quot;&amp;gt;&amp;lt;/iframe&amp;gt;&lt;/li&gt;&lt;/ul&gt;
    # @param id [Integer] kinopoisk film id
    # @param [Hash] opts the optional parameters
    # @return [Array<(VideoResponse, Integer, Hash)>] VideoResponse data, response status code and response headers
    def api_v22_films_id_videos_get_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilmsApi.api_v22_films_id_videos_get ..."
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        raise ArgumentError,
              "Missing the required parameter 'id' when calling FilmsApi.api_v22_films_id_videos_get"
      end
      if @api_client.config.client_side_validation && id > 5000000
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_videos_get, must be smaller than or equal to 5000000.'
      end

      if @api_client.config.client_side_validation && id < 1
        raise ArgumentError,
              'invalid value for "id" when calling FilmsApi.api_v22_films_id_videos_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.2/films/{id}/videos".sub("{id}", CGI.escape(id.to_s))

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
      return_type = opts[:debug_return_type] || "VideoResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v22_films_id_videos_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v22_films_id_videos_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить список кинопремьер
    # Данный эндпоинт возвращает список кинопремьер. Например https://www.kinopoisk.ru/premiere/
    # @param year [Integer] год релиза
    # @param month [String] месяц релиза
    # @param [Hash] opts the optional parameters
    # @return [PremiereResponse]
    def api_v22_films_premieres_get(year, month, opts = {})
      data, _status_code, _headers = api_v22_films_premieres_get_with_http_info(year, month, opts)
      data
    end

    # получить список кинопремьер
    # Данный эндпоинт возвращает список кинопремьер. Например https://www.kinopoisk.ru/premiere/
    # @param year [Integer] год релиза
    # @param month [String] месяц релиза
    # @param [Hash] opts the optional parameters
    # @return [Array<(PremiereResponse, Integer, Hash)>] PremiereResponse data, response status code and response headers
    def api_v22_films_premieres_get_with_http_info(year, month, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: FilmsApi.api_v22_films_premieres_get ..."
      end
      # verify the required parameter 'year' is set
      if @api_client.config.client_side_validation && year.nil?
        raise ArgumentError,
              "Missing the required parameter 'year' when calling FilmsApi.api_v22_films_premieres_get"
      end
      # verify the required parameter 'month' is set
      if @api_client.config.client_side_validation && month.nil?
        raise ArgumentError,
              "Missing the required parameter 'month' when calling FilmsApi.api_v22_films_premieres_get"
      end

      # verify enum value
      allowable_values = %w[JANUARY FEBRUARY MARCH APRIL MAY JUNE JULY AUGUST SEPTEMBER OCTOBER NOVEMBER DECEMBER]
      if @api_client.config.client_side_validation && !allowable_values.include?(month)
        raise ArgumentError,
              "invalid value for \"month\", must be one of #{allowable_values}"
      end

      # resource path
      local_var_path = "/api/v2.2/films/premieres"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:year] = year
      query_params[:month] = month

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || "PremiereResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v22_films_premieres_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v22_films_premieres_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end

    # получить список фильмов из различных топов или коллекций. Например https://www.kinopoisk.ru/top/lists/58/
    # Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type тип топа или коллекции (default to 'TOP_250_BEST_FILMS')
    # @option opts [Integer] :page номер страницы (default to 1)
    # @return [FilmTopResponse]
    def api_v22_films_top_get(opts = {})
      data, _status_code, _headers = api_v22_films_top_get_with_http_info(opts)
      data
    end

    # получить список фильмов из различных топов или коллекций. Например https://www.kinopoisk.ru/top/lists/58/
    # Возвращает список фильмов с пагинацией. Каждая страница содержит не более чем 20 фильмов.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :type тип топа или коллекции
    # @option opts [Integer] :page номер страницы
    # @return [Array<(FilmTopResponse, Integer, Hash)>] FilmTopResponse data, response status code and response headers
    def api_v22_films_top_get_with_http_info(opts = {})
      @api_client.config.logger.debug "Calling API: FilmsApi.api_v22_films_top_get ..." if @api_client.config.debugging
      allowable_values = %w[TOP_250_BEST_FILMS TOP_100_POPULAR_FILMS TOP_AWAIT_FILMS]
      if @api_client.config.client_side_validation && opts[:type] && !allowable_values.include?(opts[:type])
        raise ArgumentError,
              "invalid value for \"type\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] > 20
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling FilmsApi.api_v22_films_top_get, must be smaller than or equal to 20.'
      end

      if @api_client.config.client_side_validation && !opts[:page].nil? && opts[:page] < 1
        raise ArgumentError,
              'invalid value for "opts[:"page"]" when calling FilmsApi.api_v22_films_top_get, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = "/api/v2.2/films/top"

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:type] = opts[:type] unless opts[:type].nil?
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
      return_type = opts[:debug_return_type] || "FilmTopResponse"

      # auth_names
      auth_names = opts[:debug_auth_names] || ["ApiKeyAuth"]

      new_options = opts.merge(
        operation:     :"FilmsApi.api_v22_films_top_get",
        header_params: header_params,
        query_params:  query_params,
        form_params:   form_params,
        body:          post_body,
        auth_names:    auth_names,
        return_type:   return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: FilmsApi#api_v22_films_top_get\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      [data, status_code, headers]
    end
  end
end
