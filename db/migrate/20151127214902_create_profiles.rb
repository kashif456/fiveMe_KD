class CreateProfiles < ActiveRecord::Migration
  def change
  	# drop_table :profiles
    create_table :profiles do |t|
      t.string :fullname
      t.text :description

      t.timestamps null: false
    end
  end
end
