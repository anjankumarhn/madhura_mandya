class AddThalukIdToColleges < ActiveRecord::Migration
  def change
    add_column :colleges, :thaluk_id, :string
  end
end
