# coding: utf-8
class Eratos

  # エラトステネスのふるいを用いて素数のリストを返す。
  # @param [Integer] num 求める素数の上限
  def self.primes(num)
    [].tap do |primes|
      return primes if num <= 0
      search_max = Math.sqrt(num)
      list = Array.new(num + 1, true)
      list[0] = false; list[1] = false; pn = 2
      while pn < search_max
        primes << pn
        pn.step(num, pn){|i| list[i] = false }
        pn = list.find_index(true)
      end
      list.each.with_index do |e, i|
        primes << i if e
      end
    end
  end
end

if __FILE__ == $0
  puts Eratos.primes(ARGV[0].to_i).join(", ")
end
