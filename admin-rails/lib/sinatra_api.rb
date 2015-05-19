require 'sinatra/base'


class SinatraApi < Sinatra::Base


  get '/tickets' do  
    Ticket.all.to_json
  end

  get '/tickets/:id' do  
    Ticket.find(params[:id]).to_json
  end

  post '/tickets' do
    new_ticket = Ticket.new(:registra => params[:firstname] + params[:surname], :talk_id => "1")
    new_user = User.new(:access_level_id => 1, :email => params[:email], :login_type => 1)
  end

  # ---------------

  get '/talks' do  
    Talk.all.to_json
  end

  get '/talks/:id' do  
    Talk.find(params[:id]).to_json
  end


  # ---------------

  get '/speakers' do  
    Speaker.all.to_json
  end

  get '/speakers/:id' do  
    Speaker.find(params[:id]).to_json
  end

end
