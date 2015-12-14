testLongLong
	| unsignedIntegerIntervalue k signedIntegerIntervalue longlong |

	longlong := Alien newC: 8.
	#( 0 4294967295 18446744073709551615) do: 
		[:i  | longlong unsignedLongLongAt: 1 put: i.
		self should: [(longlong unsignedLongLongAt: 1) = i]].
	#(-9223372036854775808  -2147483648 2147483647 9223372036854775807) do: 
		[:j |  longlong signedLongLongAt: 1 put: j.
		self should: [(longlong signedLongLongAt: 1) = j]].
	unsignedIntegerIntervalue := (0 to: 18446744073709551615).
	10000 timesRepeat: [
			k := unsignedIntegerIntervalue atRandom.
			longlong unsignedLongLongAt: 1 put: k.
			self should: [(longlong unsignedLongLongAt: 1) = k]].
	signedIntegerIntervalue := (-9223372036854775808 to: 9223372036854775807).
	10000 timesRepeat: [
			k := signedIntegerIntervalue atRandom.
			longlong signedLongLongAt: 1 put: k.
			self should: [(longlong signedLongLongAt: 1) = k]].
	
	signedIntegerIntervalue := (-18446744073709551615 to: -9223372036854775809).
	10000 timesRepeat: [
		k := signedIntegerIntervalue atRandom.
		self should: [longlong signedLongLongAt: 1 put: k] raise: Error].
	
	signedIntegerIntervalue := (9223372036854775808 to: 18446744073709551615).
	10000 timesRepeat: [
		k := signedIntegerIntervalue atRandom.
		self should: [longlong signedLongLongAt: 1 put: k] raise: Error].
	