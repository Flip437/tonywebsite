class CreateGigs < ActiveRecord::Migration[5.2]
  def change
    create_table :gigs do |t|

      t.date :date
      t.time :time
      t.string :title, default: "Titre de l'évènement"
      t.text :description
      t.string :place, default: "Lieu"
      t.string :adress, default: "Adresse"
      t.string :mapurl, default: "Url de la map"
      t.string :ticketurl,  default: "Url de vente des billets"

      # Each field will be prefixed by 'address_'
			#t.address :address

      t.string :admin
      t.string :event
      t.string :comment

      t.timestamps
    end
  end
end
