module StaticPagesHelper
  def glyph(*names)
   content_tag :span, nil, class: ["glyphicon"].concat(names.map{|name| "glyphicon-#{name.to_s.gsub('_','-')}" })
  end
end
