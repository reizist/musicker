require 'spec_helper'

describe "songs/new" do
  before(:each) do
    assign(:song, stub_model(Song,
      :artist_name => "MyString",
      :song_name => "MyString",
      :m_link => "MyString"
    ).as_new_record)
  end

  it "renders new song form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", songs_path, "post" do
      assert_select "input#song_artist_name[name=?]", "song[artist_name]"
      assert_select "input#song_song_name[name=?]", "song[song_name]"
      assert_select "input#song_m_link[name=?]", "song[m_link]"
    end
  end
end
