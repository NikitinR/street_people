class StaticPagesController < ApplicationController
  def home
    @posts = Post.all
  end

  def help
  end

  def contacts
  end
end
