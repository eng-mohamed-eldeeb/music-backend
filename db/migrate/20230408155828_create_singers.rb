class CreateSingers < ActiveRecord::Migration[7.0]
  def change
    create_table :singers do |t|
      t.string :name
      t.string :email
      t.string :password
      t.string :image_url
      t.text :bio
      t.string :music_genre

      t.timestamps
    end
  end
end
