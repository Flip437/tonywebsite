class Gallery < ApplicationRecord
    has_many_attached :pictures
    has_many :videos
end
