require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/reversename/:name' do 
    @name = params[:name]
    @name.reverse
  end
  
  get '/square/:number' do 
    @num = params[:number].to_i
    "#{(@num * @num).to_s}"
  end
  
  get '/say/:number/:phrase' do 
    @num = params[:number].to_i
    @phrase = params[:phrase]
    
    repeated_phrase = ""
    @num.times do 
      repeated_phrase += "#{@phrase}\n"
    end
    repeated_phrase
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do 
    str = "#{params[:word1]} #{params[:word2]} #{params[:word3]} #
  end
  

end