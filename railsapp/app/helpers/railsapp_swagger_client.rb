require 'singleton'
require 'swagger_client'
require '/workspace/swagger_api/lib/swagger_client/api/userjwtcontroller_api'
require '/workspace/swagger_api/lib/swagger_client/api/profileinforesource_api'
require '/workspace/swagger_api/lib/swagger_client/api/projectsresource_api'
require '/workspace/swagger_api/lib/swagger_client/api/accountresource_api'
require '/workspace/swagger_api/lib/swagger_client/api/gatewayresource_api'
require '/workspace/swagger_api/lib/swagger_client/api/userresource_api'

# Models
require '/workspace/swagger_api/lib/swagger_client/models/login_vm'
require '/workspace/swagger_api/lib/swagger_client/models/jwt_token'
require '/workspace/swagger_api/lib/swagger_client/models/user'
require '/workspace/swagger_api/lib/swagger_client/models/projects'
require '/workspace/swagger_api/lib/swagger_client/models/key_and_password_vm'
require '/workspace/swagger_api/lib/swagger_client/models/managed_user_vm'
require '/workspace/swagger_api/lib/swagger_client/models/profile_info_vm'
require '/workspace/swagger_api/lib/swagger_client/models/route_vm'
require '/workspace/swagger_api/lib/swagger_client/models/service_instance'
require '/workspace/swagger_api/lib/swagger_client/models/uri'
require '/workspace/swagger_api/lib/swagger_client/models/user_dto'


# Common files
require '/workspace/swagger_api/lib/swagger_client/api_client'
require '/workspace/swagger_api/lib/swagger_client/api_error'
require '/workspace/swagger_api/lib/swagger_client/version'
require '/workspace/swagger_api/lib/swagger_client/configuration'

class RailsappSwaggerClient
  include Singleton

#:8080/api/authenticate

  def initialize
  		@authorized  = false
  		@authorization = ''
		SwaggerClient.configure do |c|
			c.scheme  = 'http'
    		c.host = 'dockercompose_gateway_timesheets-app_1:8080'
      		c.base_path = ''
    	end

  end 

  def authenticate 

  	if !@authorized then
  		authorize
  		@authorized = true
  	end 

  	return @authorization
  end

 def reauthorize 
    authorize
 end

 #sample to get clients
 def getClients
 		  authenticate
          apiclient = SwaggerClient::ApiClient.new 
          apiclient.config.base_path = '/contracts/'
          apiclient.default_headers = apiclient.default_headers.merge({"Authorization" => @authorization})
          api_instance = SwaggerClient::ClientresourceApi.new(apiclient)

		begin
		  #getAllClients
		  result = api_instance.get_all_clients_using_get
		  p result
		rescue SwaggerClient::ApiError => e
		  puts "Exception when calling ClientresourceApi->get_all_clients_using_get: #{e}"
		end
 end

 #sample to get clients
 def getProjects
      authenticate
          apiclient = SwaggerClient::ApiClient.new 
          apiclient.config.base_path = '/projects/'
          apiclient.default_headers = apiclient.default_headers.merge({"Authorization" => @authorization})
          api_instance = SwaggerClient::ClientresourceApi.new(apiclient)

    begin
      #getAllClients
      result = api_instance.get_all_clients_using_get
      p result
    rescue SwaggerClient::ApiError => e
      puts "Exception when calling ClientresourceApi->get_all_clients_using_get: #{e}"
    end
 end

private

  def authorize
    #binding.pry
		api_instance = SwaggerClient::UserjwtcontrollerApi.new
		login_vm = SwaggerClient::LoginVM.new password: 'admin' , rememberMe: true, username: 'admin' # LoginVM | loginVM
		
		begin
		  #authorize
		  result, header = api_instance.authorize_using_post(login_vm)
		  @authorization = header["Authorization"]
      #@authorization= "Bearer eyJhbGciOiJIUzUxMiJ9.eyJzdWIiOiJhZG1pbiIsImF1dGgiOiJST0xFX0FETUlOLFJPTEVfVVNFUiIsImV4cCI6MTUxNzIwNzgxMn0.FdGRX8MsXV3q8QJXY2Garc7m5ebIZsWweRjTHeyveHyV4UoqXIMxDRw9UBOpG0CFrVA27U9Wn81l1mMfSjuPMg";
      @authorized  = true

		rescue SwaggerClient::ApiError => e
		  puts "Exception when calling UserjwtcontrollerApi->authorize_using_post: #{e}"
		end
  end

end