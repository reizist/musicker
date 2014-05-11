require 'spec_helper'

describe "playlists/index" do
  before(:each) do
    assign(:playlists, [
      stub_model(Playlist,
        :list_name => "List Name",
        :user_id => "User"
      ),
      stub_model(Playlist,
        :list_name => "List Name",
        :user_id => "User"
      )
    ])
  end

  it "renders a list of playlists" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "List Name".to_s, :count => 2
    assert_select "tr>td", :text => "User".to_s, :count => 2
  end
end
