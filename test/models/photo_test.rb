# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  title      :string
#  image_url  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
require "test_helper"

class PhotoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "Titulo de la foto" do
    photo = Photo.new(image_url:'algo.jpg')
    assert_not photo.save
  end

  test "Imagen invalida" do
    photo = Photo.new(title: 'Algo', image_url:'algo')
    assert_not photo.save
  end
end
