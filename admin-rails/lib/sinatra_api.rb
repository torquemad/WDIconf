require 'sinatra/base'
require 'pry'


class SinatraApi < Sinatra::Base


  get '/tickets' do  
    Ticket.all.to_json
  end


  get '/tickets/:id' do  
    Ticket.where(params[:registra]).to_json
  end

  post '/tickets' do
    new_ticket = Ticket.create_ticket(:registra => params[:email], :talk_id => params[:talk_id])
  end

  # ---------------

  get '/talks' do  
  # Talk.all.select(to_json
    Talk.all.select(:speaker_id, :title, :badge, :limit, :blurb, :description).to_json(:include => :speaker)


  end

  get '/talks/remaining/:id' do
    talk_id        = params[:id]
    ticket_taken   = Ticket.where(talk_id: params[:id]).count
    talk_max_count = Talk.where(id: params[:id]).select(:limit)

    (talk_max_count[0].limit - ticket_taken).to_json
  end

  get '/talks/:id' do  
    Talk.find(params[:id]).to_json
  end

  patch '/talks/time/:id' do
    talk      = Talk.find(params[:id])
    talk_time = Time.new(2015,5,23, params[:hour], params[:minutes], 0, "+10:00") 
    talk.update(:date => talk_time)
  end

  # ---------------

  get '/speakers' do  
    Speaker.all.select(:id, :name, :image, :blurb).to_json(:include => :talks)
    # badges
  end

  get '/speakers/:id' do  
    Speaker.find(params[:id]).to_json
  end

end
