class Photo < ApplicationRecord
  include ImagesUploader[:image]

end
