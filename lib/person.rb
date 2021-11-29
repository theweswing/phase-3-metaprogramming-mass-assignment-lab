class Person
  def initialize(hash)
    hash.each_key do |key, value|
      self.class.attr_accessor(key)
      self.send("#{key}=", hash[key])
    end
  end
end
