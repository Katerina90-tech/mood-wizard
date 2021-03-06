class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.references :user, null: false, foreign_key: true
      t.references :action, null: false, foreign_key: true
      t.integer :rating
      t.text :comment

      t.timestamps
    end
  end
end
