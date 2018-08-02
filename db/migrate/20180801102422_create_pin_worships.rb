class CreatePinWorships < ActiveRecord::Migration[5.1]
  def change
    create_table :pin_worships do |t|
      t.string :title
      t.decimal :lat
      t.decimal :lng
      t.string :img_url
      t.string :info_text
      t.integer :worship_id
      t.string :reference
      t.string :vicinity
      t.string :name
      t.string :icon
      t.string :types
      t.integer :formatted_phone_number
      t.string :formatted_address
      t.string :address_components
      t.string :rating
      t.string :url

      t.timestamps
    end
  end
end
