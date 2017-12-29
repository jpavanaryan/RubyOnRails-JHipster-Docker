=begin
#gateway_timesheets API

#gateway_timesheets API documentation

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::AccountresourceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'AccountresourceApi' do
  before do
    # run before each test
    @instance = SwaggerClient::AccountresourceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountresourceApi' do
    it 'should create an instance of AccountresourceApi' do
      expect(@instance).to be_instance_of(SwaggerClient::AccountresourceApi)
    end
  end

  # unit tests for activate_account_using_get
  # activateAccount
  # 
  # @param key key
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'activate_account_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for change_password_using_post
  # changePassword
  # 
  # @param password password
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'change_password_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for finish_password_reset_using_post
  # finishPasswordReset
  # 
  # @param key_and_password keyAndPassword
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'finish_password_reset_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_account_using_get
  # getAccount
  # 
  # @param [Hash] opts the optional parameters
  # @return [UserDTO]
  describe 'get_account_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for is_authenticated_using_get
  # isAuthenticated
  # 
  # @param [Hash] opts the optional parameters
  # @return [String]
  describe 'is_authenticated_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for register_account_using_post
  # registerAccount
  # 
  # @param managed_user_vm managedUserVM
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'register_account_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for request_password_reset_using_post
  # requestPasswordReset
  # 
  # @param mail mail
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'request_password_reset_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for save_account_using_post
  # saveAccount
  # 
  # @param user_dto userDTO
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'save_account_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
