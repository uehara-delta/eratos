require File.expand_path(File.dirname(__FILE__) + '/../eratos')

describe Eratos do
  specify { expect(Eratos.primes(1)).to eq [] }
  specify { expect(Eratos.primes(2)).to eq [2] }
  specify { expect(Eratos.primes(30)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29] }
  specify { expect(Eratos.primes(31)).to eq [2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31] }
  specify { expect(Eratos.primes(-1)).to eq [] }
end
