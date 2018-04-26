class PdfUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def size_range
    1..5.megabytes
  end


end
