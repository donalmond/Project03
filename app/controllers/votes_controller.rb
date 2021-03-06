class VotesController < ApplicationController


  def create
  end


  def update



    @post = Post.find(params[:id])

    if @post.nil?

      # no post found
      vote = -1

    else

      v = Vote.where( :user_id => current_user.id ).where( :post_id => params[:id] )

      if v.count > 0
        # user has a vote for this post in the votes table; delete it (or them if multiple!)
        Vote.where( :user_id => current_user.id ).where( :post_id => params[:id] ).destroy_all
        vote = 0
        @post.expiry_time -= 1.hours # @post.update(:expiry_time => @post.expiry_time - 1.hours)
        @post.save
      else
        # no votes by this user for this post, add a vote
        Vote.create(:user_id => current_user.id, :post_id => params[:id] )
        vote = 1
        @post.expiry_time += 1.hours
        @post.save
      end

    end

    respond_to do |format|
      format.json { render :json => {:vote => vote} }
    end

    #

  end

  def destroy
  end

  private

  # def user_vote_exists?
  #   #v = Vote.where(:user_id=>1).where(:post_id=>2)
  #
  #   # Check to see if vote by this user already exists for this post. If so, don't reset timer.
  # end

end
