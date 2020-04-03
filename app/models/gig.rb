class Gig < ApplicationRecord
    #validates :title, :place, :streetnumb, :streettype, :streetname, presence: true

    # Add a virtual field named `address` and a class method `address_fields` returning `JT::Rails::Address.fields` prefixed by `address_` in this case
    #has_address :address

end
