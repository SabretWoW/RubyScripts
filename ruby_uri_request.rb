# http://apidock.com/ruby/OpenURI
require 'open-uri'

# Go fetch the contents of a URL & store them as a String
response = open('http://www.example.com').read

# "Pretty prints" the result to look like a web page instead of one long string of HTML
URI.parse(response).class

# Print the contents of the website to the console
puts "\n\n#{response.inspect}\n\n"