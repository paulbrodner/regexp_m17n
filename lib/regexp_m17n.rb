module RegexpM17N
  def self.non_empty?(str)
    # this will work for bytes encoded in UTF8 - "." in our case
    str.force_encoding(str.encoding).encode('utf-8') =~/^.+$/
  end
end