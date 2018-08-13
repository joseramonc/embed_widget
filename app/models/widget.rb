class Widget < ApplicationRecord

  validates_presence_of :url
  validates_uniqueness_of :url

  before_validation :generate_url, on: :create

  private

  def generate_url
    self.url = loop do
      path = SecureRandom.urlsafe_base64
      break path unless Widget.exists?(url: path)
    end
  end
end
