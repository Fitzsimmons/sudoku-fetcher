class SudokuController < ApplicationController
  def index
    fetcher = WebsudokuFetcher.new
    parser = WebsudokuParser.new(fetcher.get)
    @cheat = parser.cheat
    @editmask = parser.editmask
  end
end
