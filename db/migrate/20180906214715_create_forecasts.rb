class CreateForecasts < ActiveRecord::Migration[5.2]
  def change
    create_table :forecasts do |t|
      t.string :street
      t.string :city
      t.string :zip
      t.string :state
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end
