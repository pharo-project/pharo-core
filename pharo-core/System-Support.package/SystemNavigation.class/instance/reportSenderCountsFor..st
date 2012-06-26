query
reportSenderCountsFor: selectorList 
	"Produce a report on the number of senders of each of the selectors in 
	the list. 1/27/96 sw"
	"SystemNavigation default reportSenderCountsFor: #(foo: printString)"
	| total report |
	total := 0.
	report := '
'.
	selectorList
		do: [:selector | | thisSize | 
			thisSize := (self allCallsOn: selector) size.
			report := report , thisSize printString , String tab , selector printString , String cr.
			total := total + thisSize].
	report := report , '--- ------------------
'.
	report := report , total printString , String tab , 'TOTAL
'.
	^ report