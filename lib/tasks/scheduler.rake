desc "This task that is run daily to update the sitemap"
task :update_sm => :environment do
  puts "Updating sitemap..."
  rake "-s sitemap:refresh"
  puts "done."
end
