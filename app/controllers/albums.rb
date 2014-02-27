get '/album/new' do
	
	erb :"album_views/new"
end

get '/album/:album_id' do
  @album = Album.find(params[:album_id])
  @photos = Photo.where(album_id: params[:album_id])
  erb :"album_views/show"
end

post '/album/new' do
  
  album = Album.create({
  	user_id: current_user.id,
  	title: params[:title],
  	photo: params[:photo]
  	})

  redirect to "/album/#{album.id}"
end