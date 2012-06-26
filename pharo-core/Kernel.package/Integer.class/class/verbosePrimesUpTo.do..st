prime numbers
verbosePrimesUpTo: max do: aBlock 
	"Compute primes up to max, but be verbose about it"

	| lastTime |
	lastTime := Time millisecondClockValue.
	UIManager default informUserDuring: [ :bar | 
		bar label: 'Computing primes...'.
		self 
			primesUpTo: max
			do: 
				[ :prime | | nowTime | 
				aBlock value: prime.
				nowTime := Time millisecondClockValue.
				nowTime - lastTime > 1000 ifTrue: [ 
					lastTime := nowTime.
					bar label: 'Last prime found: ', prime printString ] ] ]