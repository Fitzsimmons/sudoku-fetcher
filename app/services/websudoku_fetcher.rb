require "rest-client"

class WebsudokuFetcher
  def get(difficulty = nil)
    difficulty ||= "4"

    RestClient.get "http://view.websudoku.com/?level=#{difficulty}"
  end
end