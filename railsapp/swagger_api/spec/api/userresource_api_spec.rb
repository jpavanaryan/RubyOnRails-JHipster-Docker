=begin
#gateway_timesheets API

#gateway_timesheets API documentation

OpenAPI spec version: 0.0.1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.2.3

=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::UserresourceApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'UserresourceApi' do
  before do
    # run before each test
    @instance = SwaggerClient::UserresourceApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of UserresourceApi' do
    it 'should create an instance of UserresourceApi' do
      expect(@instance).to be_instance_of(SwaggerClient::UserresourceApi)
    end
  end

  # unit tests for create_user_using_post
  # createUser
  # 
  # @param user_dto userDTO
  # @param [Hash] opts the optional parameters
  # @return [User]
  describe 'create_user_using_post test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_user_using_delete
  # deleteUser
  # 
  # @param login login
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_user_using_delete test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_all_users_using_get
  # getAllUsers
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [Integer] :page Page number of the requested page
  # @option opts [Integer] :size Size of a page
  # @option opts [Array<String>] :sort Sorting criteria in the format: property(,asc|desc). Default sort order is ascending. Multiple sort criteria are supported.
  # @return [Array<UserDTO>]
  describe 'get_all_users_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_authorities_using_get
  # getAuthorities
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'get_authorities_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_using_get
  # getUser
  # 
  # @param login login
  # @param [Hash] opts the optional parameters
  # @return [UserDTO]
  describe 'get_user_using_get test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_using_put
  # updateUser
  # 
  # @param user_dto userDTO
  # @param [Hash] opts the optional parameters
  # @return [UserDTO]
  describe 'update_user_using_put test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
