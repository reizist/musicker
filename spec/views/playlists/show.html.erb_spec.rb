require 'spec_helper'

describe "playlists/show" do
  before(:each) do
    @playlist = assign(:playlist, stub_model(Playlist,
      :list_name => "List Name",
      :user_id => "User"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/List Name/)
    rendered.should match(/User/)
  end
end
