module SongsHelper
  def link_embed_youtube(id)
    "//www.youtube.com.embed/#{id}"
  end

  def iframe_link(id)
    "<iframe width='560' height='315' src=#{link_embed_youtube(id)} frameborder='0' allowfullscreen></iframe>"
  end
end
