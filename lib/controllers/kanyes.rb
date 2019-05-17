class KanyesController < Sinatra::Base
  configure do
    set :views, "lib/views"
  end

#READ/INDEX/GET #CREATE/NEW/POST #UPDATE/

#index
get '/' do
  @kanyes = Kanye.all
  erb :index
end

  #new
  get "/kanyes/new" do
    erb :new
  end

#create
  post "/kanyes" do
    @kanye = Kanye.create({name: params[:name], album_sales: params[:album_sales], hit_song: params[:hit_song]})
    redirect "/kanyes"
  end

#update and # delete #show?
# show
  get "/kanyes/:id" do
    @kanye = Kanye.find(params[:id])
    erb :show
  end

  # edit
 get "/kanyes/:id/edit" do
   @kanye = Kanye.find(params[:id])
   erb :edit
 end

 # update
   patch "/kanyes/:id" do
     @kanye = Kanye.find(params[:id])
     @kanye.update(params[:kanye])
     redirect to "/kanyes/#{ @kanye.id }"
   end



  #destroy
   delete "/kanyes/:id" do
     Kanye.destroy(params[:id])
     redirect to "/kanyes"
   end


end
