# == Schema Information
#
# Table name: posts
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :integer
#  image       :text
#

class Post < ActiveRecord::Base
  belongs_to :user
  has_many :votes

  def get_votes
    self.votes.where(:active => true).count
  end
end
