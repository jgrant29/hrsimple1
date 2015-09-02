class CreateWikis < ActiveRecord::Migration
  def change
    create_table :wikis do |t|
      t.text :body
      t.string :title
      t.string :image
      t.boolean :public, default: true
      t.references :user, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
