class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :img_url
      t.string :location
      t.text :bio
      t.string :email
      t.string :password

      t.timestamps
    end
  end
end
