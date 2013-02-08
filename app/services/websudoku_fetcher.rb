require "rest-client"

class WebsudokuFetcher
  def get
    RestClient.get "http://view.websudoku.com/"
  end
end