class CreateAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :accounts do |t|
      t.string :firstName
      t.string :lastName
      t.string :birthDate
      t.integer :birthYear
      t.string :gender
      t.string :languages
      t.string :background
      t.string :location
      t.string :phone
      t.string :type
      t.string :coName
      t.string :coRepFirstName
      t.string :coRepLastName
      t.string :coRepLocation
      t.string :coRepEmail
      t.string :coRepPhone

      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
