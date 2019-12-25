puts "Merry Christmas everyone!!!\n"

for {set a 1} {$a < 20} {incr a 2} {
	puts "[string repeat { } [expr 19 - $a]][string repeat {xo} $a]"
	puts "[string repeat { } [expr 19 - $a]][string repeat {ox} $a]"
}
puts "[string repeat { } [expr $a - 2]]||"
puts "[string repeat { } [expr $a - 2]]||"
