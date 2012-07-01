enumerating
dayMonthYearDo: aBlock
	"Evaluation the block with three arguments: day month, year."

	| l n i j dd mm yyyy |
	l := jdn + 68569.
	n := 4 * l // 146097.
	l := l - (146097 * n + 3 // 4).
	i := 4000 * (l + 1) // 1461001.
	l := l - (1461 * i // 4) + 31.
	j := 80 * l // 2447.
	dd := l - (2447 * j // 80).
	l := j // 11.
	mm := j + 2 - (12 * l).
	yyyy := 100 * (n - 49) + i + l.

	^ aBlock
		value: dd
		value: mm
		value: yyyy.