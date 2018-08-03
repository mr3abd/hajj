class CreatePinpinPinWorshops < ActiveRecord::Migration[5.1]
  def change
    create_table :pinpin_pin_worshops do |t|
      t.text :text

      t.timestamps
    end
  end
end
