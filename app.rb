require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get "/goodbye" do
    "Goodbye World!"
  end

  get "/goodbye/:name" do
    @name = params[:name]
    "Goodbye, #{@name}."
  end

  get "/multiply/:num1/:num2/:num3" do
    result = params[:num1]*params[:num2]*params[:num3]
    "#{result}"
  end
end
