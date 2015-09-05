require "spec_helper"

describe WebsudokuFetcher do
  let(:page) { "page content" }
  let(:fetcher) { WebsudokuFetcher.new }

  it "fetches a page from websudoku" do
    stub_request(:get, "http://view.websudoku.com/?level=4").to_return(:body => page, :status => 200)
    expect(fetcher.get).to eq(page)
  end

  it "fetches the correct difficulty level" do
    stub_request(:get, "http://view.websudoku.com/?level=4").to_return(:body => "evil", :status => 200)
    expect(fetcher.get("4")).to eq("evil")
  end
end
