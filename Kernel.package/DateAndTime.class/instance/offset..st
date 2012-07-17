accessing
offset: anOffset
	"Answer a <DateAndTime> equivalent to the receiver but with its local time 
	being offset from UTC by offset."

	^ self class basicNew 
		ticks: self ticks offset: anOffset asDuration;
		yourself
		