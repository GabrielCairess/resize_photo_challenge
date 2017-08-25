require 'rails_helper'

describe ImageResizer do
  let!(:image_resizer) { build :image_resizer }

  describe '#update_all' do
    it 'update all saved images with webservice content' do
      VCR.use_cassette(:all_images_json_and_images_files) do
        expect do
          image_resizer.update_all
        end.to change(Image, :count).by(10)
      end
    end
  end
end
