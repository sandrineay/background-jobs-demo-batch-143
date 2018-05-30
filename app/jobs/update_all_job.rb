class UpdateAllJob < ApplicationJob
  queue_as :default

  def perform
    users = User.all
    users.each do |user|
      puts "Calling Clearbit API for #{user.email}..."
      # TODO: perform a time consuming task like Clearbit's Enrinchment API.
      sleep 2
      puts "Done! Enriched #{user.email} with Clearbit"
    end
  end
end
