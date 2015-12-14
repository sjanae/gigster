class AddAudioUrlToBands < ActiveRecord::Migration
  def change
    add_column :bands, :audio_url, :string
    add_column :bands, :video_url, :string
  end
end
