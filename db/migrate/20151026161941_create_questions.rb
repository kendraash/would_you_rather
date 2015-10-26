class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :option_a
      t.string :option_b
      t.integer :vote_a
      t.integer :vote_b

      t.timestamps
    end
  end
end
