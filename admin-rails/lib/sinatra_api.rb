require 'sinatra/base'
require 'pry'


class SinatraApi < Sinatra::Base


  get '/tickets' do  
    Ticket.all.to_json
  end


  get '/tickets/:id' do  
    Ticket.find(params[:id]).to_json
  end

  post '/tickets' do
    new_ticket = Ticket.create_ticket(:registra => params[:email], :talk_id => "1")
  end

  # ---------------

  get '/talks' do  
  # Talk.all.select(to_json
    Talk.all.select(:speaker_id, :title).to_json(:include => :speaker)
  # talk time 
  #badges


  end

  get '/talks/remaining/:id' do
    talk_id = params[:id]
    ticket_taken   = Ticket.where(talk_id: params[:id]).count
    talk_max_count = Talk.where(id: params[:id]).select(:limit)

    (talk_max_count[0].limit - ticket_taken).to_json
    
  end

  get '/talks/:id' do  
    Talk.find(params[:id]).to_json
  end


  # ---------------

  get '/speakers' do  
    Speaker.all.select(:id, :name, :blurb).to_json(:include => :talks)
    # image url
    # badges
  end

  get '/speakers/:id' do  
    Speaker.find(params[:id]).to_json
  end

end
