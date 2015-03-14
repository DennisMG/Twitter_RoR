class RemoveTweetRefToUser < ActiveRecord::Migration
  def change
    remove_reference :users, :tweet, index: true
  end
end
