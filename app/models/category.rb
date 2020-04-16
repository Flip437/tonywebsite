class Category < ApplicationRecord
    has_many :repertoires, :dependent => :delete_all
end
