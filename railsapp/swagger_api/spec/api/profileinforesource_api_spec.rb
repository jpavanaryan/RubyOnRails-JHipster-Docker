=begin
#gateway_timesheets API

#gateway_timesheets API documentation

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::ProfileinforesourceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ProfileinforesourceApi' do
  before do
    # run before each test
    @instance = SwaggerClient::ProfileinforesourceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ProfileinforesourceApi' do
    it 'should create an instance of ProfileinforesourceApi' do
      expect(@instance).to be_instance_of(SwaggerClient::ProfileinforesourceApi)
    end
  end

  # unit tests for get_active_profiles_using_get
  # getActiveProfiles
  # 
  # @param [Hash] opts the optional parameters
  # @return [ProfileInfoVM]
  describe 'get_active_profiles_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
