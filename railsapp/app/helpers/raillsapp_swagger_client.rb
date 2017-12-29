require 'singleton'
require 'swagger_client'

class RailsappSwaggerClient
  include Singleton

#:8080/api/authenticate

  def initialize
  		@authorized  = false
  		@authorization = ''
		SwaggerClient.configure do |c|
			c.scheme  = 'http'
    		c.host = 'dockercompose_hrappgateway-app_1:8080'
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
		api_instance = SwaggerClient::UserjwtcontrollerApi.new
		login_vm = SwaggerClient::LoginVM.new password: 'admin' , rememberMe: true, username: 'admin' # LoginVM | loginVM
		
		begin
		  #authorize
		  result, header = api_instance.authorize_using_post(login_vm)
		  @authorization = header["Authorization"]
		  @authorized  = true

		rescue SwaggerClient::ApiError => e
		  puts "Exception when calling UserjwtcontrollerApi->authorize_using_post: #{e}"
		end
  end

end