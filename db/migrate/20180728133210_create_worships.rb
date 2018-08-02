class CreateWorships < ActiveRecord::Migration[5.1]
  def change
    create_table :worships do |t|
      t.string :days

      t.timestamps
    end
  end
end
