class Picture < ApplicationRecord
belongs_to :user
def self.created_before(time)
  Picture.where("created_at < ?", time)
# Picture.where(created_at: (Time.now.midnight - 30.day).. Time.now.midnight)
end

# def self.pictures_created_in_year(time)
#   Picture.where("created_at <= ? AND created_at > ?", Time.new(time).end_of_year, Time.new(time).beginning_of_year)
#   # Picture.where(created_at: (range_of_time.beginning_of_year)..range_of_time.end_of_year))
# end

validates :artist, presence: true

validates :title, length: {minimum: 3,
                           maximum: 20
                          }
validates :url, presence: true
validates :url, uniqueness: true

end
