class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :title
      t.integer :priority
      t.boolean :complete

      t.timestamps null: false
    end
  end
end
