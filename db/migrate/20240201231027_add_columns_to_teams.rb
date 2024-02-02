class AddColumnsToTeams < ActiveRecord::Migration[7.1]
  def change
    add_column :teams, :season_wins, :integer
    add_column :teams, :season_losses, :integer
    add_column :teams, :postseason, :boolean
  end
end
