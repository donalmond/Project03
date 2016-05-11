class VotesController < ApplicationController

#  before_action :user_vote_exists?, only: [:create]

  def create




    raise "Hell"
    @post = Post.find(params[:post_id])
    @vote = Vote.new
    @vote.post_id = params[:post_id]
    @vote.user_id = current_user.id
    if @vote.save
      redirect_to @post
    else
      redirect_to root_path
    end
  end


  def update

    v = Vote.where( :user_id => current_user.id ).where( :post_id => params[:id] )

    if v.count > 0
      # user has a vote for this post in the votes table; delete it (or them if multiple!)
      Vote.where( :user_id => current_user.id ).where( :post_id => params[:id] ).destroy_all
      vote = 0
    else
      # no votes by this user for this post, add a vote
      Vote.create(:user_id => current_user.id, :post_id => params[:id] )
      vote = 1
    end

    #raise "HellOnEarth"
    respond_to do |format|  
      # format.html { }
      format.json { render :json => {:vote => vote} }
    end

    #
    # @post = Post.find(params[:post_id])
    # @vote = Vote.find(params[:id])
    # if @vote.is_active?
    #   @vote[:active] = false
    # else
    #   @vote[:active] = true
    # end
    # @vote.save
    # redirect_to @post
  end

  def destroy
  end

  private

  def user_vote_exists?
    #v = Vote.where(:user_id=>1).where(:post_id=>2)
    puts params.inspect
    raise
    # Check to see if vote by this user already exists for this post. If so, don't reset timer.
  end

end
