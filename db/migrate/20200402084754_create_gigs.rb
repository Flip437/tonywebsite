class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|

      t.date :date
      t.time :time
      t.string :title
      t.text :description
      t.string :place
      t.string :adress
      t.string :mapurl
      t.string :ticketurl

      # Each field will be prefixed by 'address_'
			#t.address :address

      t.string :admin
      t.string :event
      t.string :comment

      t.timestamps
    end
  end
end
