class Twit
  include Mongoid::Document

  field :from_user
  field :profile_image_url
  field :text
  field :twitted_at, :type => DateTime

  scope :latest, :order_by => :twitted_at.desc, :limit => 10
end
