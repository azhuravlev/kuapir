# frozen_string_literal: true

# #Kinopoisk Unofficial API

# The version of the OpenAPI document: 2.0.1
# Contact: support@kinopoiskapiunofficial.tech
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.3.1
#

require "date"
require "time"

module Kuapir
  class ReviewDetailsResponse
    attr_accessor :review_id, :review_type, :review_data, :user_positive_rating, :user_negative_rating, :review_autor,
                  :review_title, :review_description

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
        'review_id':            :reviewId,
        'review_type':          :reviewType,
        'review_data':          :reviewData,
        'user_positive_rating': :userPositiveRating,
        'user_negative_rating': :userNegativeRating,
        'review_autor':         :reviewAutor,
        'review_title':         :reviewTitle,
        'review_description':   :reviewDescription
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'review_id':            :Integer,
        'review_type':          :String,
        'review_data':          :String,
        'user_positive_rating': :Integer,
        'user_negative_rating': :Integer,
        'review_autor':         :String,
        'review_title':         :String,
        'review_description':   :Float
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError,
              "The input argument (attributes) must be a hash in `Kuapir::ReviewDetailsResponse` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `Kuapir::ReviewDetailsResponse`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.review_id = attributes[:review_id] if attributes.key?(:review_id)

      self.review_type = attributes[:review_type] if attributes.key?(:review_type)

      self.review_data = attributes[:review_data] if attributes.key?(:review_data)

      self.user_positive_rating = attributes[:user_positive_rating] if attributes.key?(:user_positive_rating)

      self.user_negative_rating = attributes[:user_negative_rating] if attributes.key?(:user_negative_rating)

      self.review_autor = attributes[:review_autor] if attributes.key?(:review_autor)

      self.review_title = attributes[:review_title] if attributes.key?(:review_title)

      self.review_description = attributes[:review_description] if attributes.key?(:review_description)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      invalid_properties.push('invalid value for "review_id", review_id cannot be nil.') if @review_id.nil?

      invalid_properties.push('invalid value for "review_type", review_type cannot be nil.') if @review_type.nil?

      invalid_properties.push('invalid value for "review_data", review_data cannot be nil.') if @review_data.nil?

      invalid_properties.push('invalid value for "user_positive_rating", user_positive_rating cannot be nil.') if @user_positive_rating.nil?

      invalid_properties.push('invalid value for "user_negative_rating", user_negative_rating cannot be nil.') if @user_negative_rating.nil?

      invalid_properties.push('invalid value for "review_autor", review_autor cannot be nil.') if @review_autor.nil?

      invalid_properties.push('invalid value for "review_title", review_title cannot be nil.') if @review_title.nil?

      invalid_properties.push('invalid value for "review_description", review_description cannot be nil.') if @review_description.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @review_id.nil?
      return false if @review_type.nil?

      review_type_validator = EnumAttributeValidator.new("String", %w[POSITIVE NEGATIVE NEUTRAL UNKNOWN])
      return false unless review_type_validator.valid?(@review_type)
      return false if @review_data.nil?
      return false if @user_positive_rating.nil?
      return false if @user_negative_rating.nil?
      return false if @review_autor.nil?
      return false if @review_title.nil?
      return false if @review_description.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] review_type Object to be assigned
    def review_type=(review_type)
      validator = EnumAttributeValidator.new("String", %w[POSITIVE NEGATIVE NEUTRAL UNKNOWN])
      raise ArgumentError, "invalid value for \"review_type\", must be one of #{validator.allowable_values}." unless validator.valid?(review_type)

      @review_type = review_type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        review_id == other.review_id &&
        review_type == other.review_type &&
        review_data == other.review_data &&
        user_positive_rating == other.user_positive_rating &&
        user_negative_rating == other.user_negative_rating &&
        review_autor == other.review_autor &&
        review_title == other.review_title &&
        review_description == other.review_description
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [review_id, review_type, review_data, user_positive_rating, user_negative_rating, review_autor, review_title,
       review_description].hash
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
          send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize(Regexp.last_match(1), v) }) if attributes[self.class.attribute_map[key]].is_a?(Array)
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