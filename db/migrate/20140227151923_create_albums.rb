class CreateAlbums < ActiveRecord::Migration
  def change
  	create_table :albums do |t|
      t.integer :user_id
      t.string :photo
      t.string :title

      t.timestamps
  	end
  end
end
