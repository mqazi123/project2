class CreateIdeas < ActiveRecord::Migration
  def change
    create_table :ideas do |t|
      t.string :title
      t.string :platform
      t.text :description
      t.string :help_needed

      t.timestamps null: false
    end
  end
end
