class LinksController < ApplicationController
def index
end

def show
     @link = Link.find(params[:id])
     #@comment = Comment.new
end

def new
 @link = Link.new
end

def create
  @link = Link.new(params[:link])
if @link.save
  flash[:notice] = "Link created."
  redirect_to :action => "show", :id => @link.id
else
  render('new')
end
end

end
