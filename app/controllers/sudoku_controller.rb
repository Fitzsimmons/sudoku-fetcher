class SudokuController < ApplicationController
  def index
    fetcher = WebsudokuFetcher.new
    parser = WebsudokuParser.new(fetcher.get(params[:level]))
    @cheat = parser.cheat
    @editmask = parser.editmask
  end
end
