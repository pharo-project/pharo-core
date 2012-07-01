general inquiries
humanWordsForSecondsAgo: secs
	| date today |
	"Return natural language for this date and time in the past."

	secs <= 1 ifTrue: [^ 'a second ago'].
	secs < 45 ifTrue: [^ secs printString, ' seconds ago'].
	secs < 90 ifTrue: [^ 'a minute ago'].
	secs < "45*60" 2700 ifTrue: [^ (secs//60) printString, ' minutes ago'].
	secs < "90*60" 5400 ifTrue: [^ 'an hour ago'].
	secs < "18*60*60" 64800 ifTrue: [^ (secs//3600) printString, ' hours ago'].
	date := Date fromSeconds: self totalSeconds - secs.		"now work with dates"
	today := Date today.
	date > (today subtractDays: 2) ifTrue: [^ 'yesterday'].
	date > (today subtractDays: 8) ifTrue: [^ 'last ', date dayOfWeekName].
	date > (today subtractDays: 13) ifTrue: [^ 'a week ago'].
	date > (today subtractDays: 28) ifTrue: [
		^ ((today subtractDate: date)//7) printString, ' weeks ago'].
	date > (today subtractDays: 45) ifTrue: [^ 'a month ago'].
	date > (today subtractDays: 300) ifTrue: [^ 'last ', date monthName].
	^ date monthName, ', ', date year printString

"Example
#(0.5 30 62 130 4000 10000 60000 90000 345600 864000 1728000 3456000 17280000 34560000 345600000) 
		collect: [:ss | Time humanWordsForSecondsAgo: ss].
"