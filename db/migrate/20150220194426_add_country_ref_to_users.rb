class AddCountryRefToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :country, index: true
  end
end
