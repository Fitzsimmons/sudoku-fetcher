require "spec_helper"


describe WebsudokuParser do
  let(:page) { File.open([Rails.root, "spec", "fixtures", "example.html"].join("/")).read }
  let(:parser) { WebsudokuParser.new(page) }


  it "returns the cheat string" do
    parser.cheat.should == "897142563425369781163857249781496352652713894349528617938674125574281936216935478"
  end

  it "returns the editmask string" do
    parser.editmask.should == "001011001010001111011101001010011101101111101101110010100101110111100010100110100"
  end
end