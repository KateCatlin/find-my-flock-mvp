class PdfUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def size_range
    1..5.megabytes
  end

   def extension_whitelist
    %w(pdf doc html docx jpg jpeg gif png txt mp3 xls xlsx)
  end

end
