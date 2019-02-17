
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

#create
  get '/articles/new' do
    erb :new
  end

  post '/articles' do
    @article = Article.create(:title => params[:title], :content => params[:content])
    @article.save

    redirect  "/articles/#{:id}"
  end

end



#  get '/articles/:id/edit' do
#    @article = Article.find(params["id"])
#  erb :edit
#  end

#  patch '/articles/:id' do
#    @article = Article.find(params["id"])
#    @article.update(params["article"])
#    redirect "articles/#{@article.id}"
#  end

#  delete '/articles/:id/delete' do
#    @article = Article.find(params["id"])
##    @article.delete
#    erb :index
#  end
#end
