class CreateHandbooks < ActiveRecord::Migration[5.1]
  def change
    create_table :handbooks do |t|
      t.string :title
      t.text :description
      t.string :icon_url

      t.timestamps
    end
  end
end
