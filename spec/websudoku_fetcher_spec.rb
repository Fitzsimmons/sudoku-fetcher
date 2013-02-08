require "spec_helper"

describe WebsudokuFetcher do
  let(:page) { "page content" }
  let(:fetcher) { WebsudokuFetcher.new }

  it "fetches a page from websudoku" do
    stub_request(:get, "http://view.websudoku.com/").to_return(:body => page, :status => 200)
    fetcher.get.should == page
  end
end