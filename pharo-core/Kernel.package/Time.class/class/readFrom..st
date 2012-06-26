smalltalk-80
readFrom: aStream
	"Read a Time from the stream in the form:
		<hour>:<minute>:<second>.<nseconds> <am/pm>

	<minute>, <second> or <am/pm> may be omitted.  e.g. 1:59:30 pm; 8AM; 15:30"

	| hour minute second ampm nanos nanosBuffer |
	hour := Integer readFrom: aStream.
	minute := 0.
	second := 0.
	nanosBuffer := '000000000' copy.
	nanos := nanosBuffer writeStream.
	(aStream peekFor: $:) 
		ifTrue: [
			minute := Integer readFrom: aStream.
			(aStream peekFor: $:) 
				ifTrue: [
					second := Integer readFrom: aStream].
					(aStream peekFor: $.)
						ifTrue: [
							[aStream atEnd not and: [aStream peek isDigit]]
								whileTrue: [nanos nextPut: aStream next]]].
	aStream skipSeparators.
	(aStream atEnd not and: [aStream peek isLetter]) ifTrue: 
		[ampm := aStream next asLowercase.
	
	(ampm = $p and: [hour < 12]) ifTrue: [hour := hour + 12].
		(ampm = $a and: [hour = 12]) ifTrue: [hour := 0].
	
	(aStream peekFor: $m) ifFalse: [aStream peekFor: $M ]].
	^ self 
		hour: hour 
		minute: minute 
		second: second 
		nanoSecond: nanosBuffer asInteger