class LaughTracksApp < Sinatra::Base

  get '/' do
    "SUH DUDE!!"
  end

  get '/comedians' do
    @specials  = Special.all
    if params[:age]
      @matches = Comedian.where(age: params[:age])
    end
    erb :comedians
  end

  get '/test/?:tacos/?:stuff?' do
    # /test/cool/whaever
    "Hello #{params[:tacos]}, #{params[:stuff]}"
  end
end
