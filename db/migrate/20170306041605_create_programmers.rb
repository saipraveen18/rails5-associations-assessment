class CreateProgrammers < ActiveRecord::Migration[5.0]
  def change
    create_table :programmers do |t|
      t.string :programmer
      t.integer :experience
      t.integer :is_senior
      t.integer :friend_id
      t.references :programmer, foreign_key: true

      t.timestamps
    end
  end
end
