require "spec_helper"

describe WebsudokuFetcher do
  let(:page) { "page content" }
  let(:fetcher) { WebsudokuFetcher.new }

  it "fetches a page from websudoku" do
    stub_request(:get, "http://view.websudoku.com/?level=4").to_return(:body => page, :status => 200)
    fetcher.get.should == page
  end

  it "fetches the correct difficulty level" do
    stub_request(:get, "http://view.websudoku.com/?level=4").to_return(:body => "evil", :status => 200)
    fetcher.get("4").should == "evil"
  end
end