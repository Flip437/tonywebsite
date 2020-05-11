class Repertoire < ApplicationRecord
    validates_presence_of :title
    belongs_to :category
end
