class Gallery < ApplicationRecord
    validates_presence_of :name
    has_many_attached :pictures
    has_many :videos, dependent: :destroy
    accepts_nested_attributes_for :videos,
                                    allow_destroy: true,
                                    reject_if: proc{ |att| att['url'].blank? }
end
