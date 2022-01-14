# frozen_string_literal: true

require "date"
require "time"

module Kuapir
  class PremiereResponseItem
    attr_accessor :kinopoisk_id, :name_ru, :name_en, :year, :poster_url, :poster_url_preview, :countries, :genres,
                  :duration, :premiere_ru

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        'kinopoisk_id':       :kinopoiskId,
        'name_ru':            :nameRu,
        'name_en':            :nameEn,
        'year':               :year,
        'poster_url':         :posterUrl,
        'poster_url_preview': :posterUrlPreview,
        'countries':          :countries,
        'genres':             :genres,
        'duration':           :duration,
        'premiere_ru':        :premiereRu
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'kinopoisk_id':       :Integer,
        'name_ru':            :String,
        'name_en':            :String,
        'year':               :Integer,
        'poster_url':         :String,
        'poster_url_preview': :String,
        'countries':          :'Array<Country>',
        'genres':             :'Array<Genre>',
        'duration':           :Integer,
        'premiere_ru':        :String
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new(%i[
                name_ru
                name_en
                duration
              ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError,
              "The input argument (attributes) must be a hash in `Kuapir::PremiereResponseItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `Kuapir::PremiereResponseItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.kinopoisk_id = attributes[:kinopoisk_id] if attributes.key?(:kinopoisk_id)

      self.name_ru = attributes[:name_ru] if attributes.key?(:name_ru)

      self.name_en = attributes[:name_en] if attributes.key?(:name_en)

      self.year = attributes[:year] if attributes.key?(:year)

      self.poster_url = attributes[:poster_url] if attributes.key?(:poster_url)

      self.poster_url_preview = attributes[:poster_url_preview] if attributes.key?(:poster_url_preview)

      if attributes.key?(:countries) && (value = attributes[:countries]).is_a?(Array)
        self.countries = value
      end

      if attributes.key?(:genres) && (value = attributes[:genres]).is_a?(Array)
        self.genres = value
      end

      self.duration = attributes[:duration] if attributes.key?(:duration)

      self.premiere_ru = attributes[:premiere_ru] if attributes.key?(:premiere_ru)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      invalid_properties.push('invalid value for "kinopoisk_id", kinopoisk_id cannot be nil.') if @kinopoisk_id.nil?

      invalid_properties.push('invalid value for "year", year cannot be nil.') if @year.nil?

      invalid_properties.push('invalid value for "poster_url", poster_url cannot be nil.') if @poster_url.nil?

      if @poster_url_preview.nil?
        invalid_properties.push('invalid value for "poster_url_preview", poster_url_preview cannot be nil.')
      end

      invalid_properties.push('invalid value for "countries", countries cannot be nil.') if @countries.nil?

      invalid_properties.push('invalid value for "genres", genres cannot be nil.') if @genres.nil?

      invalid_properties.push('invalid value for "premiere_ru", premiere_ru cannot be nil.') if @premiere_ru.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @kinopoisk_id.nil?
      return false if @year.nil?
      return false if @poster_url.nil?
      return false if @poster_url_preview.nil?
      return false if @countries.nil?
      return false if @genres.nil?
      return false if @premiere_ru.nil?

      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        kinopoisk_id == other.kinopoisk_id &&
        name_ru == other.name_ru &&
        name_en == other.name_en &&
        year == other.year &&
        poster_url == other.poster_url &&
        poster_url_preview == other.poster_url_preview &&
        countries == other.countries &&
        genres == other.genres &&
        duration == other.duration &&
        premiere_ru == other.premiere_ru
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [kinopoisk_id, name_ru, name_en, year, poster_url, poster_url_preview, countries, genres, duration,
       premiere_ru].hash
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
