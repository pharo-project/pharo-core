indexOf: anElement
	"Answer the index of the first occurence of anElement within the  
	receiver. If the receiver does not contain anElement, answer 0."

	^ self indexOf: anElement ifAbsent: [0]