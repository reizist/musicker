require 'spec_helper'

describe "playlists/edit" do
  before(:each) do
    @playlist = assign(:playlist, stub_model(Playlist,
      :list_name => "MyString",
      :user_id => "MyString"
    ))
  end

  it "renders the edit playlist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", playlist_path(@playlist), "post" do
      assert_select "input#playlist_list_name[name=?]", "playlist[list_name]"
      assert_select "input#playlist_user_id[name=?]", "playlist[user_id]"
    end
  end
end
