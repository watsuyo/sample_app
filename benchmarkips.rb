require 'benchmark/ips'

STRING_HASH = { "foo" => "bar" }
NUMBER_HASH = { 100 => 100 }
SYMBOL_HASH = { :"100" => "100"  }

Benchmark.ips do |x|
  x.report("string") { STRING_HASH["100"] }
  x.report("number") { NUMBER_HASH[100] }
  x.report("symbol") { SYMBOL_HASH[:"100"]  }
end