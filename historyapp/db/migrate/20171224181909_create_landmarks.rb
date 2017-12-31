class CreateLandmarks < ActiveRecord::Migration[5.1]
  def change
    create_table :landmarks do |t|
      t.string :name
      t.string :event_date
      t.belongs_to :city, foreign_key: true
      t.belongs_to :figure, foreign_key: true

      t.timestamps
    end
  end
end
