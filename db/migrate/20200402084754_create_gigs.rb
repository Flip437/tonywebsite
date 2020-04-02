class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|

      t.integer :day
      t.integer :month
      t.integer :year
      t.string :title
      t.text :description
      t.string :place
      t.string :streetnumb
      t.string :streettype
      t.string :streetname

      t.string :admin
      t.string :event
      t.string :comment

      t.timestamps
    end
  end
end
