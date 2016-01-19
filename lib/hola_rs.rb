require "hola_rs/version"

module HolaRs
  def self.RemoveWords( str, arr)
    raise ArgumentError.new 'arr is requried' if arr.nil? || arr.length == 0
    raise ArgumentError.new 'str is requried' if str.nil? || str.length == 0
    if arr.length >0  then
      str.split(" ").delete_if{|e|  arr.include?(e.downcase)}.join(" ")
    end
  end
end