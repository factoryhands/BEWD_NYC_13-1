class PostsController < ApplicationController
    POSTS = [
        {id: 1, title: 'SEATTLE', body: 'HOSTEL'},
        {id: 2, title: 'PORTLAND', body: 'BRIANS HOUSE'},
        {id: 3, title: 'OAKLAND', body: 'LILIAS HOUSE'}
      ]

  def index
    @posts = POSTS
  end

  def show
    # @posts=posts.first
  end


end