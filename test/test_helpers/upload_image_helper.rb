# frozen_string_literal: true

module UploadImageHelper
  def image_data
    attacher = Shrine::Attacher.new
    attacher.set(uploaded_image)

    # if you're processing derivatives
    # attacher.set_derivatives(
    #   large:  uploaded_image,
    #   medium: uploaded_image,
    #   small:  uploaded_image,
    # )

    attacher.data # or attacher.data in case of postgres jsonb column
  end

  def uploaded_image
    file = File.open(File.join(File.dirname(__FILE__), 'images/image.jpeg'), binmode: true)

    # for performance we skip metadata extraction and assign test metadata
    uploaded_file = Shrine.upload(file, :store, metadata: false)
    uploaded_file.metadata.merge!(
      'size' => File.size(file.path),
      'mime_type' => 'image/jpeg',
      'filename' => 'image.jpg'
    )

    uploaded_file
  end
end
