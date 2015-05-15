require 'sinatra/base'


class SinatraApi < Sinatra::Base

  get '/api/tickets' do  
    Ticket.all.to_json
  end

  get '/api/tickets/:id' do  
    Ticket.find(params[:id]).to_json
  end

  # ---------------

  get '/api/talks' do  
    Talk.all.to_json
  end

  get '/api/talks/:id' do  
    Talk.find(params[:id]).to_json
  end

  # ---------------

  get '/api/speakers' do  
    Speaker.all.to_json
  end

  get '/api/speakers/:id' do  
    Speaker.find(params[:id]).to_json
  end

end