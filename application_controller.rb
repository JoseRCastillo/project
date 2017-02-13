require 'bundler'
Bundler.require
require_relative 'models/model.rb'
class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

post'/month' do
  user_month=params[:months]
  @result=choose_gem(user_month)
  erb :results
  end
  
end