require 'mechanize'
require 'csv'

# Load up the trending Ruby repos on GitHub from the last month.
url_to_scrape = "https://github.com/trending?l=ruby&since=monthly"
# Snag the website with Mechanize & parse it into an XML document we can query.
page = Mechanize.new.get(url_to_scrape)

# Set the name of the CSV we'll create & load from.
file = "repo_data.csv"
# Array for the repo data we'll generate.
repos = []

# Create a CSV file & et it know to write a header row.
CSV.open(file,'w', 
  write_headers: true,
  headers: ["rank", "author", "repo_name", "description"])  do |csv|

  puts "Opened #{file} for writing...\n\n"

  # Parse out each of the 25 small <div> elements that contain the repo's data.
  page.search("ol li.repo-leaderboard-list-item").each do |repo, i|
    # Create a temporary variable for each piece of repo data we want.
    rank = repo.search("a.leaderboard-list-rank").inner_text.to_s.to_i
    author = repo.search("span.owner-name").inner_text
    repo_name = repo.search("a.repository-name strong").inner_text
    description = repo.search("p.repo-leaderboard-description").inner_text

    # Build an array of the repo data for the current row.
    repo_data = [rank, author, repo_name, description]

    # Push the row onto the CSV
    csv << repo_data
  end
end

puts "Done writing to #{file} file...\n\n"

# Load a CSV file & loop through each row. Let it know there is a header row & each key is split by commas. That gives you convenience methods that make the CSV data almost behave like a Hash.
CSV.foreach(file, headers: true, col_sep: ',') do |row|
  # I'm just creating a hash with each repo's information then pushing it to the repos array. You could do whatever you wanted to here: write data to a database, fire off API calls from the data bits, just output to the log, whatever!
  repo = Hash.new()
  repo[:rank] = row['rank']
  repo[:author] = row['author']
  repo[:repo_name] = row['repo_name']
  repo[:description] = row['description']

  # Print the hash just for shits & giggles.
  puts "#{repo}\n\n"

  # Push the newly-created hash into the array of repos.
  repos << repo
end

# Success messages rock!
puts "Done!\n\n"


