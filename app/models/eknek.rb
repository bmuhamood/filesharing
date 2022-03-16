class Eknek < ApplicationRecord
    has_one_attached :file
    # validates_with AttachmentSizeValidator, attributes: :file, less_than: 1.gigabytes 
    belongs_to :user
end