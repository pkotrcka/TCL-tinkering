puts "Input in 0 a 1:"
set bininput [split [regexp -all -inline {\S+} [read stdin]]]
puts "Output in ascii: :"
foreach binvalue $bininput {
	puts -nonewline "[binary format c [expr "0b$binvalue"]]"
}

