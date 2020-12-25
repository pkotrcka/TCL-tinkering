if {$argc == 0} {
	puts "Name maybe?"
	set yourname [gets stdin]
} else {
	set yourname $argv
}
foreach a [list 72 97 112 112 121 \
	 32 78 101 119 32 89 101 97 \
	  114 32 32 50 32 48 32 50 \
	   32 49 32 32 116 111 32] { 
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
