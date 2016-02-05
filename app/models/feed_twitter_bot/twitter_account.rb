module FeedTwitterBot
  class TwitterAccount < ActiveRecord::Base
    validates :name, :app_id, :presence => true
    validates :publication, :adquisition, :inclusion => { :in => [true, false]}
  end
end
