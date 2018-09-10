require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  
  get '/reversename/:name' do 
    @user_name = params[:name].reverse 
    "#{@user_name}"
  end 
  
  get '/square/:number' do 
    @square = params[:number].to_i * params[:number].to_i
    "#{@square.to_s}"
  end 
  
  get '/say/:number/:phrase' do 
    answer = ''
    
    params[:number].to_i.times do 
      answer += params[:phrase]
    end 
    
    answer
  end 
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    "#{params[:word1]} "
  end 
  
end