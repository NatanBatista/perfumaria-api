# app/models/article.rb
class Article < ApplicationRecord
    has_one_attached :image
  
    def image_url
      Rails.application.routes.url_helpers.rails_blob_path(image, only_path: true) if image.attached?
    end
  
    def as_json(options = {})
      super(options).merge(
        image: {
            url: image_url
        }
      )
    end
  end
  