get '/' do
  @categories = Category.all
  erb :index
end

get '/categories/:id' do
  @category = Category.find(params[:id])
  @posts = @category.posts.all
  erb :cat_index
end

get '/posts/:id' do
  @post = Post.find(params[:id])
  erb :post
end

get '/posts/edit/:key' do
 @post = Post.find_by_secret_key(params[:key])
 erb :edit_post
end

post '/posts/edit/:key' do
  @post = Post.find_by_secret_key(params[:key])
  @post.update_attributes(params[:post])
  redirect "/posts/#{@post.id}"
end
