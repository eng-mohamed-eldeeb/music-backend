class AddSingerAndVenueToConcerts < ActiveRecord::Migration[7.0]
  def change
    add_reference :concerts, :singer, null: false, foreign_key: true
    add_reference :concerts, :venue, null: false, foreign_key: true
  end
end
