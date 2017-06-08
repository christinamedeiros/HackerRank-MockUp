class AddSolvedToChallenge < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :solved, :boolean, :default => false
  end
end
