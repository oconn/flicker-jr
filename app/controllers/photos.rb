get '/photo/new/:album_id' do
	
	erb :"photo_views/new"
end

post '/photo/new/:album_id' do
  
  Photo.create({
  	photo: params[:photo],
  	album_id: params[:album_id]
  	})

  redirect to "/album/#{params[:album_id]}"
end