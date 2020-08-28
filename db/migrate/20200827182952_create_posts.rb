class CreatePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :posts do |t|
      t.string :date
      t.string :location
      t.string :image
      t.string :sends

      t.timestamps
    end
  end
end
