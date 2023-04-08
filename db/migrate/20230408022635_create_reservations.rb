class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.references :user, null: false, foreign_key: true
      # t.references :concert, null: false, foreign_key: true
      # t.references :concert, foreign_key: true
      # for now till I create the concert model
      t.references :concert, null: false
      t.string :seat_type

      t.timestamps
    end
  end
end
