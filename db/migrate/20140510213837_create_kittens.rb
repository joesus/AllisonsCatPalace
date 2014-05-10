class CreateKittens < ActiveRecord::Migration
  def change
    create_table :kittens do |t|
      t.boolean :adoptable
      t.integer :cutenesslevel
      t.string  :picture
      t.integer :age
      t.string  :name
      t.string  :gender
      t.string  :birthcity
      t.string  :birthstate
      t.text    :about
      t.string  :favoritefood
      t.string  :favoritetoy
      t.string  :favoritebathroom
      t.string  :favoritenapspot
      t.string  :favoritehat
      t.string  :favoriteoutfit
      t.float   :weight
      t.text    :greeting

      t.timestamps
    end
  end
end
