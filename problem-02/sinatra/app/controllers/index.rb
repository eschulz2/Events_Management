get '/' do
  # Look in app/views/index.erb
  erb :index
end

post "/comments" do
  comment = Comment.create!(params[:comment])
  body comment.to_json
end
