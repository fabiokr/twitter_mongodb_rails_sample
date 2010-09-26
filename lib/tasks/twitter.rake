require 'twitter'

namespace :twitter do
  desc 'Fetches some Twitter trending twits and stores them on the database'
  task :fetch => :environment do |cmd, args|
    Twitter::Search.new(Twitter::Trends.current.sample.query).each do |r| 
      Twit.create(:from_user => r.from_user, :profile_image_url => r.profile_image_url, :text => r.text, :twitted_at => r.created_at)  
    end
  end
end
