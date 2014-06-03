module JsonParser
  def parse(url)
    result = JSON.parse(open(url).read)
  end

  module_function :parse
end
