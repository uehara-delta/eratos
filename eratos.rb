class Eratos
  def self.primes(num)
    primes = []
    return primes if num <= 0
    search_max = Math.sqrt(num)
    list = Array.new(num + 1, true)
    list[0] = false; list[1] = false; pn = 2
    while pn < search_max
      primes << pn
      pn.step(num, pn) do |i|
        list[i] = false
      end
      pn = list.find_index(true)
    end
    list.each.with_index do |e, i|
      primes << i if e
    end
    primes
  end
end

if __FILE__ == $0
  puts Eratos.primes(ARGV[0].to_i).join(", ")
end
