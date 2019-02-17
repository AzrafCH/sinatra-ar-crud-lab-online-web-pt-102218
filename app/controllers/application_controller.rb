
require_relative '../../config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

#create
  get '/' do
    erb :new
  end

  post '/articles' do
    @article = Article.new
    @article.title = params[:title]
    @article.content = params[:content]
    @article.save

    redirect to "/articles/#{@article.id}"
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
