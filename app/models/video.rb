class Video < ApplicationRecord
    belongs_to :gallery, optional: true
end
