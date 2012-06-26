printing
<< aCollection
	"we want a readable version of nextPutAll however it may be difficult to fully recreate nextPutAll:
	for all the different types of stream. Rather then simply send to nextPutAll:
	we handle the String (or ByteArray) argument
	as fast as possible - the rest we delegate to putOn: This means that we handle single characters and bytes 
	whereas nextPutAll: is only for sequencable collections.
	.
	Note this may not work in every case that nextPutAll: does subject to extensive testing, 
	but it should work in the important cases"

	| newEnd |
	collection class == aCollection class ifFalse:
		[ aCollection putOn: self. ^ self ].

	newEnd := position + aCollection size.
	newEnd > writeLimit ifTrue:
		[self growTo: newEnd + 10].

	collection replaceFrom: position+1 to: newEnd  with: aCollection startingAt: 1.
	position := newEnd.

