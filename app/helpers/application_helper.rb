module ApplicationHelper
  def download_url_for(song_key)
    AWS::S3::S3Object.url_for(song_key, Macmccain::BUCKET, authenticated: false)
  end
end
