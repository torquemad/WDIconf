require 'sinatra/base'


class SinatraApi < Sinatra::Base

  get '/tickets' do  
    Ticket.all.to_json
  end

  get '/tickets/:id' do  
    Ticket.find(params[:id]).to_json
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
