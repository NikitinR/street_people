class AddColumnsToTeams < ActiveRecord::Migration
  def change
    add_column :teams, :name, :string
    add_column :teams, :photo, :string
    add_column :teams, :info, :text
  end
end
