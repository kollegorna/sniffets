class Snippet < ActiveRecord::Base
  after_save :clear_cache
  validates :name, presence: true
  scope :published, -> { where(status: 'published') }

  def name=(name)
    write_attribute :name, name.to_s.squish.downcase.tr(" ","_")
  end

  def to_s
    snippet
  end

  def cache_key
    "snippet::#{name}"
  end

  def clear_cache
    Rails.cache.delete(self)
  end
end
