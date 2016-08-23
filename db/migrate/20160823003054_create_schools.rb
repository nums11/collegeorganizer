class CreateSchools < ActiveRecord::Migration
  def change
    create_table :schools do |t|
    	t.string :name
    	t.string :image
    	t.integer :division
    	t.string :proximity
    	t.integer :population
    	t.integer :computer_science_rank
    	t.integer :tuition
    	t.integer :act_score

      t.timestamps null: false
    end
  end
end
