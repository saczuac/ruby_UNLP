class CreateKings < ActiveRecord::Migration[5.0]
  def change
    create_table :kings do |t|
      t.string :name, null: false
      t.string :kingdom
      t.date :date_since
      t.date :date_until

      t.timestamps
    end
  end
end
