module FeedTwitterBot
  class RssSource < ActiveRecord::Base
    validates :name, :url, :presence => true
    validates :active, :published, :inclusion => { :in => [true, false]}
	validates :url, format: { with: URI.regexp }
  end
end
