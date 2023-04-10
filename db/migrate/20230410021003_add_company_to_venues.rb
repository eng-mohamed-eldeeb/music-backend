class AddCompanyToVenues < ActiveRecord::Migration[7.0]
  def change
    add_reference :venues, :company, null: false, foreign_key: true
  end
end
