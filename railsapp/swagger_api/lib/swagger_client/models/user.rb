=begin
#gateway_timesheets API

#gateway_timesheets API documentation

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'date'

module SwaggerClient

  class User
    attr_accessor :activated

    attr_accessor :email

    attr_accessor :first_name

    attr_accessor :id

    attr_accessor :image_url

    attr_accessor :lang_key

    attr_accessor :last_name

    attr_accessor :login

    attr_accessor :reset_date


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'activated' => :'activated',
        :'email' => :'email',
        :'first_name' => :'firstName',
        :'id' => :'id',
        :'image_url' => :'imageUrl',
        :'lang_key' => :'langKey',
        :'last_name' => :'lastName',
        :'login' => :'login',
        :'reset_date' => :'resetDate'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'activated' => :'BOOLEAN',
        :'email' => :'String',
        :'first_name' => :'String',
        :'id' => :'Integer',
        :'image_url' => :'String',
        :'lang_key' => :'String',
        :'last_name' => :'String',
        :'login' => :'String',
        :'reset_date' => :'DateTime'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'activated')
        self.activated = attributes[:'activated']
      end

      if attributes.has_key?(:'email')
        self.email = attributes[:'email']
      end

      if attributes.has_key?(:'firstName')
        self.first_name = attributes[:'firstName']
      end

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'imageUrl')
        self.image_url = attributes[:'imageUrl']
      end

      if attributes.has_key?(:'langKey')
        self.lang_key = attributes[:'langKey']
      end

      if attributes.has_key?(:'lastName')
        self.last_name = attributes[:'lastName']
      end

      if attributes.has_key?(:'login')
        self.login = attributes[:'login']
      end

      if attributes.has_key?(:'resetDate')
        self.reset_date = attributes[:'resetDate']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properies with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @activated.nil?
        invalid_properties.push("invalid value for 'activated', activated cannot be nil.")
      end

      if !@email.nil? && @email.to_s.length > 100
        invalid_properties.push("invalid value for 'email', the character length must be smaller than or equal to 100.")
      end

      if !@email.nil? && @email.to_s.length < 5
        invalid_properties.push("invalid value for 'email', the character length must be great than or equal to 5.")
      end

      if !@first_name.nil? && @first_name.to_s.length > 50
        invalid_properties.push("invalid value for 'first_name', the character length must be smaller than or equal to 50.")
      end

      if !@first_name.nil? && @first_name.to_s.length < 0
        invalid_properties.push("invalid value for 'first_name', the character length must be great than or equal to 0.")
      end

      if !@image_url.nil? && @image_url.to_s.length > 256
        invalid_properties.push("invalid value for 'image_url', the character length must be smaller than or equal to 256.")
      end

      if !@image_url.nil? && @image_url.to_s.length < 0
        invalid_properties.push("invalid value for 'image_url', the character length must be great than or equal to 0.")
      end

      if !@lang_key.nil? && @lang_key.to_s.length > 6
        invalid_properties.push("invalid value for 'lang_key', the character length must be smaller than or equal to 6.")
      end

      if !@lang_key.nil? && @lang_key.to_s.length < 2
        invalid_properties.push("invalid value for 'lang_key', the character length must be great than or equal to 2.")
      end

      if !@last_name.nil? && @last_name.to_s.length > 50
        invalid_properties.push("invalid value for 'last_name', the character length must be smaller than or equal to 50.")
      end

      if !@last_name.nil? && @last_name.to_s.length < 0
        invalid_properties.push("invalid value for 'last_name', the character length must be great than or equal to 0.")
      end

      if @login.nil?
        invalid_properties.push("invalid value for 'login', login cannot be nil.")
      end

      if @login.to_s.length > 50
        invalid_properties.push("invalid value for 'login', the character length must be smaller than or equal to 50.")
      end

      if @login.to_s.length < 1
        invalid_properties.push("invalid value for 'login', the character length must be great than or equal to 1.")
      end

      if @login !~ Regexp.new(/^[_'.@A-Za-z0-9-]*$/)
        invalid_properties.push("invalid value for 'login', must conform to the pattern /^[_'.@A-Za-z0-9-]*$/.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @activated.nil?
      return false if !@email.nil? && @email.to_s.length > 100
      return false if !@email.nil? && @email.to_s.length < 5
      return false if !@first_name.nil? && @first_name.to_s.length > 50
      return false if !@first_name.nil? && @first_name.to_s.length < 0
      return false if !@image_url.nil? && @image_url.to_s.length > 256
      return false if !@image_url.nil? && @image_url.to_s.length < 0
      return false if !@lang_key.nil? && @lang_key.to_s.length > 6
      return false if !@lang_key.nil? && @lang_key.to_s.length < 2
      return false if !@last_name.nil? && @last_name.to_s.length > 50
      return false if !@last_name.nil? && @last_name.to_s.length < 0
      return false if @login.nil?
      return false if @login.to_s.length > 50
      return false if @login.to_s.length < 1
      return false if @login !~ Regexp.new(/^[_'.@A-Za-z0-9-]*$/)
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] email Value to be assigned
    def email=(email)

      if !email.nil? && email.to_s.length > 100
        fail ArgumentError, "invalid value for 'email', the character length must be smaller than or equal to 100."
      end

      if !email.nil? && email.to_s.length < 5
        fail ArgumentError, "invalid value for 'email', the character length must be great than or equal to 5."
      end

      @email = email
    end

    # Custom attribute writer method with validation
    # @param [Object] first_name Value to be assigned
    def first_name=(first_name)

      if !first_name.nil? && first_name.to_s.length > 50
        fail ArgumentError, "invalid value for 'first_name', the character length must be smaller than or equal to 50."
      end

      if !first_name.nil? && first_name.to_s.length < 0
        fail ArgumentError, "invalid value for 'first_name', the character length must be great than or equal to 0."
      end

      @first_name = first_name
    end

    # Custom attribute writer method with validation
    # @param [Object] image_url Value to be assigned
    def image_url=(image_url)

      if !image_url.nil? && image_url.to_s.length > 256
        fail ArgumentError, "invalid value for 'image_url', the character length must be smaller than or equal to 256."
      end

      if !image_url.nil? && image_url.to_s.length < 0
        fail ArgumentError, "invalid value for 'image_url', the character length must be great than or equal to 0."
      end

      @image_url = image_url
    end

    # Custom attribute writer method with validation
    # @param [Object] lang_key Value to be assigned
    def lang_key=(lang_key)

      if !lang_key.nil? && lang_key.to_s.length > 6
        fail ArgumentError, "invalid value for 'lang_key', the character length must be smaller than or equal to 6."
      end

      if !lang_key.nil? && lang_key.to_s.length < 2
        fail ArgumentError, "invalid value for 'lang_key', the character length must be great than or equal to 2."
      end

      @lang_key = lang_key
    end

    # Custom attribute writer method with validation
    # @param [Object] last_name Value to be assigned
    def last_name=(last_name)

      if !last_name.nil? && last_name.to_s.length > 50
        fail ArgumentError, "invalid value for 'last_name', the character length must be smaller than or equal to 50."
      end

      if !last_name.nil? && last_name.to_s.length < 0
        fail ArgumentError, "invalid value for 'last_name', the character length must be great than or equal to 0."
      end

      @last_name = last_name
    end

    # Custom attribute writer method with validation
    # @param [Object] login Value to be assigned
    def login=(login)
      if login.nil?
        fail ArgumentError, "login cannot be nil"
      end

      if login.to_s.length > 50
        fail ArgumentError, "invalid value for 'login', the character length must be smaller than or equal to 50."
      end

      if login.to_s.length < 1
        fail ArgumentError, "invalid value for 'login', the character length must be great than or equal to 1."
      end

      if login !~ Regexp.new(/^[_'.@A-Za-z0-9-]*$/)
        fail ArgumentError, "invalid value for 'login', must conform to the pattern /^[_'.@A-Za-z0-9-]*$/."
      end

      @login = login
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          activated == o.activated &&
          email == o.email &&
          first_name == o.first_name &&
          id == o.id &&
          image_url == o.image_url &&
          lang_key == o.lang_key &&
          last_name == o.last_name &&
          login == o.login &&
          reset_date == o.reset_date
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [activated, email, first_name, id, image_url, lang_key, last_name, login, reset_date].hash
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
