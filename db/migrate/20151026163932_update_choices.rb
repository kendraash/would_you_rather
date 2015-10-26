class UpdateChoices < ActiveRecord::Migration
  def change
    change_column_default(:choices, :vote_a, 0)
    change_column_default(:choices, :vote_b, 0)
  end
end
