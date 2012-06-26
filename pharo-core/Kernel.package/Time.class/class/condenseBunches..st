general inquiries
condenseBunches: aCollectionOfSeconds
	| secArray now out pause prev bunchEnd |
	"Identify the major intervals in a bunch of numbers.  
	Each number is a seconds since 1901 that represents a date and time.
	We want the last event in a bunch.  Return array of seconds for:
	
	Every event in the last half hour.
		Every bunch separated by 30 min in the last 24 hours.
	
	Every bunch separated by two hours before that."

	"Time condenseBunches: 
		(#(20 400 401  20000 20200 20300 40000 45000  200000 201000 202000) 
			collect: [ :tt | self totalSeconds - tt])
"

	secArray := aCollectionOfSeconds asSortedCollection.
	pause := 1.
	now := self totalSeconds.
	out := OrderedCollection new.
	prev := 0.
	bunchEnd := nil.
	secArray reverseDo: [:secs | | ago | "descending"
		ago := now - secs.
		ago > (60*30) ifTrue: [pause := "60*30" 1800].
		ago > (60*60*24) ifTrue: [pause := "60*120" 7200].
		ago - prev >= pause ifTrue: [out add: bunchEnd.  bunchEnd := secs].
		prev := ago].
	out add: bunchEnd.
	out removeFirst.
	^ out