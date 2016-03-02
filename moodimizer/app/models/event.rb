class Event < ActiveRecord::Base
  belongs_to :user
  belongs_to :mood

  # attr_accessor :name, :url
  #
  # validates :name, presence: true, uniqueness: true
  # validates :url, presence: true
  #
  def self.search(search)
    if search.present?
      where('name iLIKE ?', "%#{search}%")
    else
      where(true)
    end
  end
end
