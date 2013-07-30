get '/' do
  erb :index
end

get "/all_notes" do 
	@notes = Note.all 
	erb :all_notes
end

get '/note/:id' do 
  @note = Note.find_by_id(params[:id])
	erb :note_page
end

get "/create" do 
	erb :create
end 

# the :ID is not working 
get "/edit/:id" do 
  @note = Note.find_by_id(params[:id])
  erb :edit
end 

get "/delete/:id" do 
	@note = Note.find_by_id(params[:id])
	@note.destroy
	redirect to("/")
end 


post "/create" do 
	@note = Note.create(params[:user])
	redirect to("/all_notes")
end 

post "/edit/:id" do 
	@note = Note.find_by_id(params[:id])
	@note.update_attributes(params[:user])
	redirect to("/")
end 

