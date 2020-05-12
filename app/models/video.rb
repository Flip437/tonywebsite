class Video < ApplicationRecord
    belongs_to :gallery, optional: true

    def thumbnail(url)
        equalindex = url.index("=")
        id = url[equalindex+1, url.length - equalindex]
        thumbnailurl = "https://img.youtube.com/vi/" + id + "/default.jpg"
    end
end
