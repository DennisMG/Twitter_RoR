class AddTweetsRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :tweet, index: true
  end
end
