class AddColumnToChallenges < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :challenge, :string
  end
end
