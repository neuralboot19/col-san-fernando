class AboutUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  # Include RMagick or MiniMagick support:
  # include CarrierWave::RMagick
  # include CarrierWave::MiniMagick

  # Choose what kind of storage to use for this uploader:
  # storage :file
  # storage :fog

  process :convert => 'png'
  process :tags => ['image_about']
  
  
  version :thumbnail do
    process resize_to_fit: [800, 800]
  end

  version :standard do
    resize_to_fit(50, 50)
  end

  def store_dir
    return model.name.sub!(" ", "_")
  end
end
