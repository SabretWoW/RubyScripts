# RubyScripts

A collection of Ruby scripts &amp; snippets that demonstrate web scraping, JSON parsing, tweeting from your app, RSpec tips, and more.

## What's included ##

I uploaded these as [GitHub Gists](https://gist.github.com/kyletcarlson) too in case you want to fork & experiment with any specific script. If you're using Sublime Text, I recommend you install the [Gist plugin](https://github.com/condemil/Gist) to easily pull & push Gists from your editor. Sweet stuff!

- [Ruy Benchmark class](https://gist.github.com/kyletcarlson/7955214) - Three examples showing three of the main methods of Ruby's Benchmark class that's used to profile your code. Benchmark.measure at the most basic, Benchmark.benchmark allows you to run trials of different code blocks, and Benchmark.bmbm that helps you establish a baseline for your tests.
- [Web scraper](https://gist.github.com/kyletcarlson/7882406) - A Ruby web scraping script that visits a GitHub trending repos page, scrapes the data for the 25 repos, loads them into a CSV, and then reads from the CSV & creates a hash with each repo's data.
- [Zappos web scraper](https://gist.github.com/kyletcarlson/6322535) - Small Ruby script that demonstrates how to use Mechanize to scrape some product details from an array of product URLs from Zappos.com.
- [Twitter API example Rails controller](https://gist.github.com/kyletcarlson/6323026) - A Ruby on Rails controller action showing how to fetch a group of Tweets/followers/friends & send them to a view. You can also create Tweets with this controller & the Twitter API, but you'll need to ensure your callback URL is correct. Follow the documentation for that.
- [Open-uri example](https://gist.github.com/kyletcarlson/7876153) - 4-line Ruby script that uses open-uri to fetch the contents of a URL & displays it in the console. This is the foundation for all web requests, whether to scrape a page, request a JSON response, and more.
- [JSON API response handling](https://gist.github.com/kyletcarlson/7911188) - Ruby script that uses open-uri to fetch the contents of a JSON endpoint, uses the JSON gem to parse the string into a Ruby array & prints some of the records. This is the foundation for all web API requests, so feel free to use it in the future.
- [Gist API Ruby](https://gist.github.com/kyletcarlson/7920355) - A Ruby script demonstrating how to pull Gists from the GitHub Gist API.

## Requests? ##

If there are any specific concepts you'd like me to make a demonstration of, please let me know: [@kyletcarlson](https://www.twitter.com/kyletcarlson).
