get '/' do
  # Look in app/views/index.erb
  erb :index
end


get '/login' do 
  erb :login
end

get '/create_user' do
  erb :create_user
end

get '/logout' do
  session.clear
  redirect '/'
end

get '/user/:user_id/events' do
  @user = User.find(params[:user_id])  
  @created_events = @user.created_events('created_at ASC')
  erb :created_events
end

get '/create_event' do
  erb :create_event
end

get '/event/:event_id/edit' do
  @event = Event.find(params[:event_id])
  erb :edit_events
end


#POST 

post '/login' do
  @user = User.find_by_email(params[:user][:email])

  if @user && @user.authenticate(params[:user][:password])
  	session[:user_id] = @user.id
  	redirect '/'
  else
  	@error = "Failure!"
  	erb :login
  end
end


# post '/create_user' do  
#   @user = User.new(:first_name => params[:user][:first_name],:last_name => params[:user][:last_name],:email => params[:user][:email],:birthdate => params[:user][:birthdate],:password => params[:user][:password],:password_confirmation => params[:user][:password_confirmation])

#   if @user.save
#     session[:user_id] = @user.id
#     redirect to '/'
#   else
#     @error = "!"
#     erb :create_user
#   end
# end

post '/create_user' do
  @user = User.new(
  	first_name: params[:user][:first_name], 
  	last_name: params[:user][:last_name],
  	email: params[:user][:email],
  	birthdate: params[:user][:birthdate],
  	password: params[:user][:password],
  	password_confirmation: params[:user][:password_confirmation],
  	)
   if @user.save
    session[:user_id] = @user.id
    redirect to '/'
  else
    @error = "!"
    erb :create_user
  end
end


post '/create_event' do
  if request.xhr?
  	p params
    @event = Event.new(
  	user_id: current_user.id,
    name: params[:name],
    location: params[:location],
    starts_at: params[:starts_at],
    ends_at: params[:ends_at]
  	)

  	if @event.save
      event = "<ol><a href='/event/#{@event.id}/edit'>#{@event.name} | #{@event.location} | #{@event.starts_at}</a></ol>"
  	  event
      redirect to "/user/#{current_user.id}/events"
    else
      redirect to "/"

    end
  else
    @event = Event.new(
      user_id: current_user.id,
      name: params[:event][:name],
      location: params[:event][:location],
      starts_at: params[:event][:starts_at],
      ends_at: params[:event][:ends_at]
      )
      if @event.save
        redirect to "/user/#{current_user.id}/events"
      else
        @error = "No!"
        erb :created_events
      end
  end
end

post '/event/:event_id/edit' do
  @event = Event.find(params[:event_id])

  if @event.update_attributes(
    user_id: current_user.id,
    name: params[:event][:name],
    location: params[:event][:location],
    starts_at: params[:event][:starts_at],
    ends_at: params[:event][:ends_at]
    )

  # if @event.save
    redirect to "/user/#{current_user.id}/events"
  else
    @error = "Failure"
    erb :create_event
  end

end

post '/event/:event_id/delete' do
  @event = Event.find(params[:event_id])
  @event.destroy
  redirect "/user/#{current_user.id}/events"
end
