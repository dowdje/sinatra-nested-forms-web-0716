require './environment'

module FormsLab
  class App < Sinatra::Base

      configure do
    set :public_folder, 'public'
    set :views, 'views/pirates'
  end

    get '/' do
      erb :index
    end

    get '/new' do
      erb :new
    end

    post '/pirates' do
      @pirate = Pirate.new(params[:pirate])

      params[:pirate][:ships].each do |ship|
        Ship.new(ship)
      end

      @ships = Ship.all

      erb :show
    end

  end
end
