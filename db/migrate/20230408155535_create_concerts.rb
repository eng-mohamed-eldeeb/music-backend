class CreateConcerts < ActiveRecord::Migration[7.0]
  def change
    create_table :concerts do |t|
      t.date :date
      t.time :start_time
      t.time :end_time
      t.decimal :silver_ticket_price
      t.decimal :gold_ticket_price
      t.decimal :platinum_ticket_price

      t.timestamps
    end
  end
end
