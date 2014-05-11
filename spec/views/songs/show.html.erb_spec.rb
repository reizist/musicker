require 'spec_helper'

describe "songs/show" do
  before(:each) do
    @song = assign(:song, stub_model(Song,
      :artist_name => "Artist Name",
      :song_name => "Song Name",
      :m_link => "M Link"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Artist Name/)
    rendered.should match(/Song Name/)
    rendered.should match(/M Link/)
  end
end
