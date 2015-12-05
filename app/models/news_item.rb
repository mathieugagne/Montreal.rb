class NewsItem < ActiveRecord::Base
  extend Enumerize
  enumerize :state, in: [:draft, :archived, :published]
  scope :published, -> { where(state: :published).order(published_at: :desc) }
  validates :published_at, presence: true, if: -> { state.published? }
  validates_presence_of :title, :state
end
