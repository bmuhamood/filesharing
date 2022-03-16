class AddUserToEkneks < ActiveRecord::Migration[7.0]
  def change
    add_reference :ekneks, :user, null: false, foreign_key: true
  end
end
