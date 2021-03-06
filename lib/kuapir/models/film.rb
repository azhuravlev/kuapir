# frozen_string_literal: true

require "date"
require "time"

module Kuapir
  class Film
    attr_accessor :kinopoisk_id, :imdb_id, :name_ru, :name_en, :name_original, :poster_url, :poster_url_preview,
                  :reviews_count, :rating_good_review, :rating_good_review_vote_count, :rating_kinopoisk, :rating_kinopoisk_vote_count, :rating_imdb, :rating_imdb_vote_count, :rating_film_critics, :rating_film_critics_vote_count, :rating_await, :rating_await_count, :rating_rf_critics, :rating_rf_critics_vote_count, :web_url, :year, :film_length, :slogan, :description, :short_description, :editor_annotation, :is_tickets_available, :production_status, :type, :rating_mpaa, :rating_age_limits, :has_imax, :has3_d, :last_sync, :countries, :genres, :start_year, :end_year, :serial, :short_film, :completed

    class EnumAttributeValidator
      attr_reader :datatype, :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        'kinopoisk_id':                   :kinopoiskId,
        'imdb_id':                        :imdbId,
        'name_ru':                        :nameRu,
        'name_en':                        :nameEn,
        'name_original':                  :nameOriginal,
        'poster_url':                     :posterUrl,
        'poster_url_preview':             :posterUrlPreview,
        'reviews_count':                  :reviewsCount,
        'rating_good_review':             :ratingGoodReview,
        'rating_good_review_vote_count':  :ratingGoodReviewVoteCount,
        'rating_kinopoisk':               :ratingKinopoisk,
        'rating_kinopoisk_vote_count':    :ratingKinopoiskVoteCount,
        'rating_imdb':                    :ratingImdb,
        'rating_imdb_vote_count':         :ratingImdbVoteCount,
        'rating_film_critics':            :ratingFilmCritics,
        'rating_film_critics_vote_count': :ratingFilmCriticsVoteCount,
        'rating_await':                   :ratingAwait,
        'rating_await_count':             :ratingAwaitCount,
        'rating_rf_critics':              :ratingRfCritics,
        'rating_rf_critics_vote_count':   :ratingRfCriticsVoteCount,
        'web_url':                        :webUrl,
        'year':                           :year,
        'film_length':                    :filmLength,
        'slogan':                         :slogan,
        'description':                    :description,
        'short_description':              :shortDescription,
        'editor_annotation':              :editorAnnotation,
        'is_tickets_available':           :isTicketsAvailable,
        'production_status':              :productionStatus,
        'type':                           :type,
        'rating_mpaa':                    :ratingMpaa,
        'rating_age_limits':              :ratingAgeLimits,
        'has_imax':                       :hasImax,
        'has3_d':                         :has3D,
        'last_sync':                      :lastSync,
        'countries':                      :countries,
        'genres':                         :genres,
        'start_year':                     :startYear,
        'end_year':                       :endYear,
        'serial':                         :serial,
        'short_film':                     :shortFilm,
        'completed':                      :completed
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'kinopoisk_id':                   :Integer,
        'imdb_id':                        :String,
        'name_ru':                        :String,
        'name_en':                        :String,
        'name_original':                  :String,
        'poster_url':                     :String,
        'poster_url_preview':             :String,
        'reviews_count':                  :Integer,
        'rating_good_review':             :Float,
        'rating_good_review_vote_count':  :Integer,
        'rating_kinopoisk':               :Float,
        'rating_kinopoisk_vote_count':    :Integer,
        'rating_imdb':                    :Float,
        'rating_imdb_vote_count':         :Integer,
        'rating_film_critics':            :Float,
        'rating_film_critics_vote_count': :Integer,
        'rating_await':                   :Float,
        'rating_await_count':             :Integer,
        'rating_rf_critics':              :Float,
        'rating_rf_critics_vote_count':   :Integer,
        'web_url':                        :String,
        'year':                           :Integer,
        'film_length':                    :Integer,
        'slogan':                         :String,
        'description':                    :String,
        'short_description':              :String,
        'editor_annotation':              :String,
        'is_tickets_available':           :Boolean,
        'production_status':              :String,
        'type':                           :String,
        'rating_mpaa':                    :String,
        'rating_age_limits':              :String,
        'has_imax':                       :Boolean,
        'has3_d':                         :Boolean,
        'last_sync':                      :String,
        'countries':                      :'Array<Country>',
        'genres':                         :'Array<Genre>',
        'start_year':                     :Integer,
        'end_year':                       :Integer,
        'serial':                         :Boolean,
        'short_film':                     :Boolean,
        'completed':                      :Boolean
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new(%i[
                imdb_id
                name_ru
                name_en
                name_original
                rating_good_review
                rating_good_review_vote_count
                rating_kinopoisk
                rating_kinopoisk_vote_count
                rating_imdb
                rating_imdb_vote_count
                rating_film_critics
                rating_film_critics_vote_count
                rating_await
                rating_await_count
                rating_rf_critics
                rating_rf_critics_vote_count
                year
                film_length
                slogan
                description
                short_description
                editor_annotation
                production_status
                rating_mpaa
                rating_age_limits
                has_imax
                has3_d
                start_year
                end_year
                serial
                short_film
                completed
              ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError,
              "The input argument (attributes) must be a hash in `Kuapir::Film` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `Kuapir::Film`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.kinopoisk_id = attributes[:kinopoisk_id] if attributes.key?(:kinopoisk_id)

      self.imdb_id = attributes[:imdb_id] if attributes.key?(:imdb_id)

      self.name_ru = attributes[:name_ru] if attributes.key?(:name_ru)

      self.name_en = attributes[:name_en] if attributes.key?(:name_en)

      self.name_original = attributes[:name_original] if attributes.key?(:name_original)

      self.poster_url = attributes[:poster_url] if attributes.key?(:poster_url)

      self.poster_url_preview = attributes[:poster_url_preview] if attributes.key?(:poster_url_preview)

      self.reviews_count = attributes[:reviews_count] if attributes.key?(:reviews_count)

      self.rating_good_review = attributes[:rating_good_review] if attributes.key?(:rating_good_review)

      if attributes.key?(:rating_good_review_vote_count)
        self.rating_good_review_vote_count = attributes[:rating_good_review_vote_count]
      end

      self.rating_kinopoisk = attributes[:rating_kinopoisk] if attributes.key?(:rating_kinopoisk)

      if attributes.key?(:rating_kinopoisk_vote_count)
        self.rating_kinopoisk_vote_count = attributes[:rating_kinopoisk_vote_count]
      end

      self.rating_imdb = attributes[:rating_imdb] if attributes.key?(:rating_imdb)

      self.rating_imdb_vote_count = attributes[:rating_imdb_vote_count] if attributes.key?(:rating_imdb_vote_count)

      self.rating_film_critics = attributes[:rating_film_critics] if attributes.key?(:rating_film_critics)

      if attributes.key?(:rating_film_critics_vote_count)
        self.rating_film_critics_vote_count = attributes[:rating_film_critics_vote_count]
      end

      self.rating_await = attributes[:rating_await] if attributes.key?(:rating_await)

      self.rating_await_count = attributes[:rating_await_count] if attributes.key?(:rating_await_count)

      self.rating_rf_critics = attributes[:rating_rf_critics] if attributes.key?(:rating_rf_critics)

      if attributes.key?(:rating_rf_critics_vote_count)
        self.rating_rf_critics_vote_count = attributes[:rating_rf_critics_vote_count]
      end

      self.web_url = attributes[:web_url] if attributes.key?(:web_url)

      self.year = attributes[:year] if attributes.key?(:year)

      self.film_length = attributes[:film_length] if attributes.key?(:film_length)

      self.slogan = attributes[:slogan] if attributes.key?(:slogan)

      self.description = attributes[:description] if attributes.key?(:description)

      self.short_description = attributes[:short_description] if attributes.key?(:short_description)

      self.editor_annotation = attributes[:editor_annotation] if attributes.key?(:editor_annotation)

      self.is_tickets_available = attributes[:is_tickets_available] if attributes.key?(:is_tickets_available)

      self.production_status = attributes[:production_status] if attributes.key?(:production_status)

      self.type = attributes[:type] if attributes.key?(:type)

      self.rating_mpaa = attributes[:rating_mpaa] if attributes.key?(:rating_mpaa)

      self.rating_age_limits = attributes[:rating_age_limits] if attributes.key?(:rating_age_limits)

      self.has_imax = attributes[:has_imax] if attributes.key?(:has_imax)

      self.has3_d = attributes[:has3_d] if attributes.key?(:has3_d)

      self.last_sync = attributes[:last_sync] if attributes.key?(:last_sync)

      if attributes.key?(:countries) && (value = attributes[:countries]).is_a?(Array)
        self.countries = value
      end

      if attributes.key?(:genres) && (value = attributes[:genres]).is_a?(Array)
        self.genres = value
      end

      self.start_year = attributes[:start_year] if attributes.key?(:start_year)

      self.end_year = attributes[:end_year] if attributes.key?(:end_year)

      self.serial = attributes[:serial] if attributes.key?(:serial)

      self.short_film = attributes[:short_film] if attributes.key?(:short_film)

      self.completed = attributes[:completed] if attributes.key?(:completed)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      invalid_properties.push('invalid value for "kinopoisk_id", kinopoisk_id cannot be nil.') if @kinopoisk_id.nil?

      invalid_properties.push('invalid value for "poster_url", poster_url cannot be nil.') if @poster_url.nil?

      if @poster_url_preview.nil?
        invalid_properties.push('invalid value for "poster_url_preview", poster_url_preview cannot be nil.')
      end

      invalid_properties.push('invalid value for "reviews_count", reviews_count cannot be nil.') if @reviews_count.nil?

      invalid_properties.push('invalid value for "web_url", web_url cannot be nil.') if @web_url.nil?

      if @is_tickets_available.nil?
        invalid_properties.push('invalid value for "is_tickets_available", is_tickets_available cannot be nil.')
      end

      invalid_properties.push('invalid value for "type", type cannot be nil.') if @type.nil?

      invalid_properties.push('invalid value for "last_sync", last_sync cannot be nil.') if @last_sync.nil?

      invalid_properties.push('invalid value for "countries", countries cannot be nil.') if @countries.nil?

      invalid_properties.push('invalid value for "genres", genres cannot be nil.') if @genres.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @kinopoisk_id.nil?
      return false if @poster_url.nil?
      return false if @poster_url_preview.nil?
      return false if @reviews_count.nil?
      return false if @web_url.nil?
      return false if @is_tickets_available.nil?

      production_status_validator = EnumAttributeValidator.new("String",
                                                               %w[FILMING PRE_PRODUCTION COMPLETED ANNOUNCED UNKNOWN
                                                                  POST_PRODUCTION])
      return false unless production_status_validator.valid?(@production_status)
      return false if @type.nil?

      type_validator = EnumAttributeValidator.new("String", %w[FILM VIDEO TV_SERIES MINI_SERIES TV_SHOW])
      return false unless type_validator.valid?(@type)
      return false if @last_sync.nil?
      return false if @countries.nil?
      return false if @genres.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] production_status Object to be assigned
    def production_status=(production_status)
      validator = EnumAttributeValidator.new("String",
                                             %w[FILMING PRE_PRODUCTION COMPLETED ANNOUNCED UNKNOWN POST_PRODUCTION])
      unless validator.valid?(production_status)
        raise ArgumentError,
              "invalid value for \"production_status\", must be one of #{validator.allowable_values}."
      end

      @production_status = production_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new("String", %w[FILM VIDEO TV_SERIES MINI_SERIES TV_SHOW])
      unless validator.valid?(type)
        raise ArgumentError,
              "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end

      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        kinopoisk_id == other.kinopoisk_id &&
        imdb_id == other.imdb_id &&
        name_ru == other.name_ru &&
        name_en == other.name_en &&
        name_original == other.name_original &&
        poster_url == other.poster_url &&
        poster_url_preview == other.poster_url_preview &&
        reviews_count == other.reviews_count &&
        rating_good_review == other.rating_good_review &&
        rating_good_review_vote_count == other.rating_good_review_vote_count &&
        rating_kinopoisk == other.rating_kinopoisk &&
        rating_kinopoisk_vote_count == other.rating_kinopoisk_vote_count &&
        rating_imdb == other.rating_imdb &&
        rating_imdb_vote_count == other.rating_imdb_vote_count &&
        rating_film_critics == other.rating_film_critics &&
        rating_film_critics_vote_count == other.rating_film_critics_vote_count &&
        rating_await == other.rating_await &&
        rating_await_count == other.rating_await_count &&
        rating_rf_critics == other.rating_rf_critics &&
        rating_rf_critics_vote_count == other.rating_rf_critics_vote_count &&
        web_url == other.web_url &&
        year == other.year &&
        film_length == other.film_length &&
        slogan == other.slogan &&
        description == other.description &&
        short_description == other.short_description &&
        editor_annotation == other.editor_annotation &&
        is_tickets_available == other.is_tickets_available &&
        production_status == other.production_status &&
        type == other.type &&
        rating_mpaa == other.rating_mpaa &&
        rating_age_limits == other.rating_age_limits &&
        has_imax == other.has_imax &&
        has3_d == other.has3_d &&
        last_sync == other.last_sync &&
        countries == other.countries &&
        genres == other.genres &&
        start_year == other.start_year &&
        end_year == other.end_year &&
        serial == other.serial &&
        short_film == other.short_film &&
        completed == other.completed
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [kinopoisk_id, imdb_id, name_ru, name_en, name_original, poster_url, poster_url_preview, reviews_count,
       rating_good_review, rating_good_review_vote_count, rating_kinopoisk, rating_kinopoisk_vote_count, rating_imdb, rating_imdb_vote_count, rating_film_critics, rating_film_critics_vote_count, rating_await, rating_await_count, rating_rf_critics, rating_rf_critics_vote_count, web_url, year, film_length, slogan, description, short_description, editor_annotation, is_tickets_available, production_status, type, rating_mpaa, rating_age_limits, has_imax, has3_d, last_sync, countries, genres, start_year, end_year, serial, short_film, completed].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            send("#{key}=", attributes[self.class.attribute_map[key]].map do |v|
                              _deserialize(Regexp.last_match(1), v)
                            end)
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Kuapir.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
