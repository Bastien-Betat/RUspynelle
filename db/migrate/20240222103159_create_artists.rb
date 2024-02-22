class CreateArtists < ActiveRecord::Migration[7.1]
  def change
    create_table :artists do |t|
      t.string :pseudo
      t.text :profilp
      t.string :support
      t.text :description
      t.text :imagep
      t.string :insta
      t.string :link

      t.timestamps
    end
  end
end
