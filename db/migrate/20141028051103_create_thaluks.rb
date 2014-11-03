class CreateThaluks < ActiveRecord::Migration
  def change
    create_table :thaluks do |t|
      t.string :name

      t.timestamps
    end
  end
end
