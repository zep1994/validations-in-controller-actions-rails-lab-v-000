class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def show
  end

  def new
  end

  def create
    @author = Author.create!(author_params)

    @author = Author.new(author_params)
    if @author.valid?
      @author.save
      redirect_to author_params(@author)
    else 
      render :new
    end
  end

  def edit
  end

#  def update
  #   @post.update(post_params)
  #
  #   redirect_to post_path(@post)
  # end


  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
