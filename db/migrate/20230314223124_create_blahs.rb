class CreateBlahs < ActiveRecord::Migration[7.0]
  def change
    create_table :blahs do |t|
      t.text :comment
      t.references :user, null: false, foreign_key: true
      t.references :blog, null: false, foreign_key: true

      t.timestamps
    end
  end
end
