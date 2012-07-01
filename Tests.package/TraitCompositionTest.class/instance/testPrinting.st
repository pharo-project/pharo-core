testing-basic
testPrinting
	| composition1 composition2 |
	composition1 := ((self t1 - { #a } + self t2) @ { (#z -> #c) } - { #b. #c } 
				+ self t3 - { #d. #e } 
				+ self t4) @ { (#x -> #a). (#y -> #b) }.
	composition2 := self t4 @ { (#x -> #a). (#y -> #b) } + self t1 - { #a } 
				+ self t3 - { #d. #e } 
				+ self t2 - { #b. #c }.
	self assertPrints: composition1 printString
		like: 'T1 - {#a} + T2 @ {#z->#c} - {#b. #c} + T3 - {#d. #e} + T4 @ {#x->#a. #y->#b}'.
	self assertPrints: composition2 printString
		like: 'T4 @ {#x->#a. #y->#b} + T1 - {#a} + T3 - {#d. #e} + T2 - {#b. #c}'