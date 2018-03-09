class PhotoUploader < CarrierWave::Uploader::Base
 include Cloudinary::CarrierWave
 def size_range
  1..5.megabytes
  end

   version :standard do
    process :resize_to_fill => [300, 300, :fill]
  end

end
