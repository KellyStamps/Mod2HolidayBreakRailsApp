class CreateFigures < ActiveRecord::Migration[5.1]
  def change
    create_table :figures do |t|
      t.string :name
      t.string :birth_date
      t.string :death_date
      t.string :hometown
      t.string :profession
      t.string :gender

      t.timestamps
    end
  end
end
