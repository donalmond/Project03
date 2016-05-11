class AddExpiryDateToPost < ActiveRecord::Migration
  def change
    add_column :posts, :expiry_time, :datetime
  end
end
