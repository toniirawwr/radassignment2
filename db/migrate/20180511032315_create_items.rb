class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :type
      t.string :title
      t.string :websource
      t.text :content
      t.integer :news_id
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
    add_index :items, [:type]
  end
end
