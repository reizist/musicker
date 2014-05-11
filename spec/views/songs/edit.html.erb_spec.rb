require 'spec_helper'

describe "songs/edit" do
  before(:each) do
    @song = assign(:song, stub_model(Song,
      :artist_name => "MyString",
      :song_name => "MyString",
      :m_link => "MyString"
    ))
  end

  it "renders the edit song form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", song_path(@song), "post" do
      assert_select "input#song_artist_name[name=?]", "song[artist_name]"
      assert_select "input#song_song_name[name=?]", "song[song_name]"
      assert_select "input#song_m_link[name=?]", "song[m_link]"
    end
  end
end
