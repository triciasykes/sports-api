class AddUserToTeams < ActiveRecord::Migration[7.1]
  def change
    add_reference :teams, :user, null: false, foreign_key: true
  end
end
