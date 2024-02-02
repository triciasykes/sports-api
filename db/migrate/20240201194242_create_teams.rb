class CreateTeams < ActiveRecord::Migration[7.1]
  def change
    create_table :teams do |t|
      t.string :city
      t.string :mascot

      t.timestamps
    end
  end
end
