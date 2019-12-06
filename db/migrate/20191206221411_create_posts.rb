class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :name
      t.string :title
      t.string :media
      t.string :tag
      t.string :text

      t.timestamps
    end
  end
end
