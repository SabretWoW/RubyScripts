# Gem that wraps around the Gist API
# https://github.com/sinisterchipmunk/active-gist
require 'activegist'

# GitHub Gist API documentation:
#   - http://developer.github.com/v3/gists/

# Set up credentials.
ActiveGist::API.username = "Your GitHub username"
ActiveGist::API.password = "Your GitHub password"

gist_id = 6234923
gist = ActiveGist.find(gist_id)

puts "The dump of gist ##{gist.id}\n\n"
puts gist.inspect

puts "\nAnd some of the pieces in the response:\n\n"

puts "ID: #{gist.id}"
puts "User: #{gist.user}"
puts "Gist description: #{gist.description}"
puts "User's URL: #{gist.user['html_url']}"
puts "Site admin? #{gist.user['site_admin']}"

puts "\nGist ##{gist.id} pulled successfully!\n\n"