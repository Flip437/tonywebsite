class Gig < ApplicationRecord
    validates :title, :day, :month, :year, :place, :streetnumb, :streettype, :streetname, presence: true

end
