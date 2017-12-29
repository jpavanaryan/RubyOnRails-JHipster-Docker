=begin
#gateway_timesheets API

#gateway_timesheets API documentation

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module SwaggerClient

  class URI
    attr_accessor :absolute

    attr_accessor :authority

    attr_accessor :fragment

    attr_accessor :host

    attr_accessor :opaque

    attr_accessor :path

    attr_accessor :port

    attr_accessor :query

    attr_accessor :raw_authority

    attr_accessor :raw_fragment

    attr_accessor :raw_path

    attr_accessor :raw_query

    attr_accessor :raw_scheme_specific_part

    attr_accessor :raw_user_info

    attr_accessor :scheme

    attr_accessor :scheme_specific_part

    attr_accessor :user_info


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'absolute' => :'absolute',
        :'authority' => :'authority',
        :'fragment' => :'fragment',
        :'host' => :'host',
        :'opaque' => :'opaque',
        :'path' => :'path',
        :'port' => :'port',
        :'query' => :'query',
        :'raw_authority' => :'rawAuthority',
        :'raw_fragment' => :'rawFragment',
        :'raw_path' => :'rawPath',
        :'raw_query' => :'rawQuery',
        :'raw_scheme_specific_part' => :'rawSchemeSpecificPart',
        :'raw_user_info' => :'rawUserInfo',
        :'scheme' => :'scheme',
        :'scheme_specific_part' => :'schemeSpecificPart',
        :'user_info' => :'userInfo'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'absolute' => :'BOOLEAN',
        :'authority' => :'String',
        :'fragment' => :'String',
        :'host' => :'String',
        :'opaque' => :'BOOLEAN',
        :'path' => :'String',
        :'port' => :'Integer',
        :'query' => :'String',
        :'raw_authority' => :'String',
        :'raw_fragment' => :'String',
        :'raw_path' => :'String',
        :'raw_query' => :'String',
        :'raw_scheme_specific_part' => :'String',
        :'raw_user_info' => :'String',
        :'scheme' => :'String',
        :'scheme_specific_part' => :'String',
        :'user_info' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'absolute')
        self.absolute = attributes[:'absolute']
      end

      if attributes.has_key?(:'authority')
        self.authority = attributes[:'authority']
      end

      if attributes.has_key?(:'fragment')
        self.fragment = attributes[:'fragment']
      end

      if attributes.has_key?(:'host')
        self.host = attributes[:'host']
      end

      if attributes.has_key?(:'opaque')
        self.opaque = attributes[:'opaque']
      end

      if attributes.has_key?(:'path')
        self.path = attributes[:'path']
      end

      if attributes.has_key?(:'port')
        self.port = attributes[:'port']
      end

      if attributes.has_key?(:'query')
        self.query = attributes[:'query']
      end

      if attributes.has_key?(:'rawAuthority')
        self.raw_authority = attributes[:'rawAuthority']
      end

      if attributes.has_key?(:'rawFragment')
        self.raw_fragment = attributes[:'rawFragment']
      end

      if attributes.has_key?(:'rawPath')
        self.raw_path = attributes[:'rawPath']
      end

      if attributes.has_key?(:'rawQuery')
        self.raw_query = attributes[:'rawQuery']
      end

      if attributes.has_key?(:'rawSchemeSpecificPart')
        self.raw_scheme_specific_part = attributes[:'rawSchemeSpecificPart']
      end

      if attributes.has_key?(:'rawUserInfo')
        self.raw_user_info = attributes[:'rawUserInfo']
      end

      if attributes.has_key?(:'scheme')
        self.scheme = attributes[:'scheme']
      end

      if attributes.has_key?(:'schemeSpecificPart')
        self.scheme_specific_part = attributes[:'schemeSpecificPart']
      end

      if attributes.has_key?(:'userInfo')
        self.user_info = attributes[:'userInfo']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          absolute == o.absolute &&
          authority == o.authority &&
          fragment == o.fragment &&
          host == o.host &&
          opaque == o.opaque &&
          path == o.path &&
          port == o.port &&
          query == o.query &&
          raw_authority == o.raw_authority &&
          raw_fragment == o.raw_fragment &&
          raw_path == o.raw_path &&
          raw_query == o.raw_query &&
          raw_scheme_specific_part == o.raw_scheme_specific_part &&
          raw_user_info == o.raw_user_info &&
          scheme == o.scheme &&
          scheme_specific_part == o.scheme_specific_part &&
          user_info == o.user_info
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [absolute, authority, fragment, host, opaque, path, port, query, raw_authority, raw_fragment, raw_path, raw_query, raw_scheme_specific_part, raw_user_info, scheme, scheme_specific_part, user_info].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
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
        temp_model = SwaggerClient.const_get(type).new
        temp_model.build_from_hash(value)
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
        value = self.send(attr)
        next if value.nil?
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
        value.compact.map{ |v| _to_hash(v) }
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
