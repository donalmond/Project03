class Vote < ActiveRecord::Base
  belongs_to :post
  belongs_to :user


  def is_active?
    self.active == true
  end

end
