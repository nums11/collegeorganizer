class AddSchoolToFacts < ActiveRecord::Migration
  def change
    add_reference :facts, :school, index: true, foreign_key: true
  end
end
