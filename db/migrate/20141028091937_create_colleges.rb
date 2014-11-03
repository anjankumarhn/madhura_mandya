class CreateColleges < ActiveRecord::Migration
  def change
    create_table :colleges do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :mobile_number
      t.string :email
      t.string :link

      t.timestamps
    end
  end
end
