require 'spec_helper'

describe "playlists/new" do
  before(:each) do
    assign(:playlist, stub_model(Playlist,
      :list_name => "MyString",
      :user_id => "MyString"
    ).as_new_record)
  end

  it "renders new playlist form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", playlists_path, "post" do
      assert_select "input#playlist_list_name[name=?]", "playlist[list_name]"
      assert_select "input#playlist_user_id[name=?]", "playlist[user_id]"
    end
  end
end
