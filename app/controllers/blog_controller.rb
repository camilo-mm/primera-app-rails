class BlogController < ApplicationController
  before_action :set_blog, only: [:show, :edit, :update, :destroy]
  #como el id se repite en todos esto se hace un callback... se define en los privados

  def index
    @blogs = Blog.all
  end

  def new
    @blog = Blog.new
    ##tittle y content se renderizan vacios
  end

  def create
    @blog = Blog.new(blog_params)

    if @blog.save
      redirect_to blog_index_path, notice: "el blog ha sido guardado exitosamente"
      #flash[:alert] para error
      #flash[:notice] = "el blog ha sido guardado exitosamente"
      #flash[:message] = "el blog ha sido guardado exitosamente"
    else
      flash[:alert] = "el post no ha sido guardado, intente nuevamente"
      render :new
    end
  end

  def show
    #@blog = Blog.find(params[:id]) <-- lo estamos definiendo en el callback
  end

  def edit
    #@blog = Blog.find(params[:id]) <-- lo estamos definiendo en el callback
  end

  def update
    #@blog = Blog.find(params[:id]) <-- lo estamos definiendo en el callback

    if @blog.update(blog_params)
      redirect_to blog_index_path
    else
      render :edit
    end
  end

  def destroy
    #blog = Blog.find(params[:id])
    @blog.destroy

    redirect_to blog_index_path
    flash[:alert] = "la entrada se ha eliminado"
  end

private
  def blog_params
    params.require(:blog).permit(:tittle, :content)
  end

  def set_blog
    @blog = Blog.find(params[:id])
  end



end
