class PagesController < ApplicationController
  def media
    if user_signed_in?
      @posts = current_user.posts
  
      if @posts.empty?
      @message = "Wow, that's a very clean portfolio!"
      else
        @message = "Here's your portfolio:"
      end

      end
  end
end
