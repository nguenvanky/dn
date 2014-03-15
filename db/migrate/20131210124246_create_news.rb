class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :content
      t.integer :user_id
      t.string :slug

      t.timestamps
    end
  end
end
