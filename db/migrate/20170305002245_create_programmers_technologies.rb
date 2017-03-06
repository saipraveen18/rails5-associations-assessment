class CreateProgrammersTechnologies < ActiveRecord::Migration[5.0]
  def change
    create_table :programmers_technologies, id: false do |t|
      t.belongs_to :programmer
      t.belongs_to :technology
    end
  end
end
