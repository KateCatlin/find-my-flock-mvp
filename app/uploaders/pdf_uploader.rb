class PdfUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave

  def size_range
    1..5.megabytes
  end

  def extension_whitelist
    %w(pdf doc docx png)
  end

end
