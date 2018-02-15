class Comment < ApplicationRecord

  # Belongs to relation wih an article
  belongs_to :article
end
