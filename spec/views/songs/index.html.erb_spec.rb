require 'spec_helper'

describe "songs/index" do
  before(:each) do
    assign(:songs, [
      stub_model(Song,
        :artist_name => "Artist Name",
        :song_name => "Song Name",
        :m_link => "M Link"
      ),
      stub_model(Song,
        :artist_name => "Artist Name",
        :song_name => "Song Name",
        :m_link => "M Link"
      )
    ])
  end

  it "renders a list of songs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Artist Name".to_s, :count => 2
    assert_select "tr>td", :text => "Song Name".to_s, :count => 2
    assert_select "tr>td", :text => "M Link".to_s, :count => 2
  end
end
