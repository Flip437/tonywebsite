class Gig < ApplicationRecord
    validates :title, :date, :place, :streetnumb, :streettype, :streetname, presence: true

end
