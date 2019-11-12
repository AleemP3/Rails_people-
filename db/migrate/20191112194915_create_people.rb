class CreatePeople < ActiveRecord::Migration[6.0]
  def change
    create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.integer :age
      t.string :gender
      t.boolean :alive
      t.boolean :relative

      t.timestamps
    end
  end
end
