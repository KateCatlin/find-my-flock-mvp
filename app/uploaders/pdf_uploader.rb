class PdfUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
end
