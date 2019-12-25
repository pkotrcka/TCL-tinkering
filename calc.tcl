proc sucet {vypocet} {
	set cisla [split $vypocet {+}]
	set prve [lindex $cisla 0]
	set druhe [lindex $cisla 1]
	if {[string is double $prve] == 1 && [string is double $druhe] == 1} {
		puts "$prve + $druhe = [expr $prve + $druhe]"
		main
	} else {
		puts "$prve alebo $druhe nie sú čísla"
		main
	}
}

proc rozdiel {vypocet} {
	set cisla [split $vypocet {-}]
	set prve [lindex $cisla 0]
	set druhe [lindex $cisla 1]
	if {[string is double $prve] == 1 && [string is double $druhe] == 1} {	
		puts "$prve - $druhe = [expr $prve - $druhe]"
		main
	} else {
		puts "$prve alebo $druhe nie sú čísla"
		main
	}
}

proc nasobok {vypocet} {
	set cisla [split $vypocet {\*}]
	set prve [lindex $cisla 0]
	set druhe [lindex $cisla 1]
	if {[string is double $prve] == 1 && [string is double $druhe] == 1} {
		puts "$prve * $druhe = [expr $prve * $druhe]"
		main
	} else {
		puts "$prve alebo $druhe nie sú čísla"
		main
	}	
}

proc podiel {vypocet} {
	set tcl_precision 5
	set cisla [split $vypocet {\/}]
	set prve [lindex $cisla 0]
	set druhe [lindex $cisla 1]
	if {[string is double $prve] == 1 && [string is double $druhe] == 1} {
		if {$druhe == 0} {
			puts "Delenie nulou"
			main
		} else {
			puts "$prve / $druhe = [expr double($prve) / double($druhe)]"
			main
		}
	} else {
		puts "$prve alebo $druhe nie sú čísla"
		main
	}	
}

proc main {} {
	puts "Zadaj výpočet: "
	set vypocet [gets stdin]

	if {[string match {*\+*} $vypocet] > 0} {
		[sucet $vypocet]
	} elseif {[string match {*\-*} $vypocet] > 0} {
		[rozdiel $vypocet]
	} elseif {[string match {*\/*} $vypocet] > 0} {
		[podiel $vypocet]
	} elseif {[string match {*\**} $vypocet] > 0} {
		[nasobok $vypocet]
	} else {
		puts "Zadané nie je výpočet, končím"
		exit
	}
}

main

