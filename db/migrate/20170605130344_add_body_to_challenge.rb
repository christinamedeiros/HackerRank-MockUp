class AddBodyToChallenge < ActiveRecord::Migration[5.1]
  def change
    add_column :challenges, :body, :string
  end
end
