#!/usr/bin/env tclsh

if {$argc == 0} {
	puts "Name maybe?"
	set yourname [gets stdin]
} else {
	set yourname $argv
}
set message [list 77 101 114 114 121 32 67 104 \
		114 105 115 116 109 97 115 32 \
		116 111 32]
foreach a $message { 
after 300
puts -nonewline [ format "%c" $a ]
flush stdout
}
set characters [split $yourname ""]
foreach x $characters {
	after 300
	puts -nonewline $x
	flush stdout
}
puts "\n"
set total [expr [llength $message] + [llength $characters]]
set interval [expr 0.3 * $total]	
puts "It took me [format "%.2f" $interval] seconds to finish this because you have a long name."
