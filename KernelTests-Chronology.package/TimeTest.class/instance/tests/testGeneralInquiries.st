testGeneralInquiries
	| now d t dt |

	now  := self timeClass dateAndTimeNow.
	self 
		assert: now size = 2;
		assert: now last <= self timeClass now.

	self should: [ self timeClass timeWords ] raise: MessageNotUnderstood.

	d := '2 June 1973' asDate.
	t := '4:02:47 am' asTime.
	dt := self timeClass dateAndTimeFromSeconds: (2285280000 + 14567).
	self
		assert: dt = {d. t.}.
