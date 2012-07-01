query
allUnSentMessagesWithout: classesAndMessagesPair 
	"Answer the set of selectors that are implemented but not sent, computed  
	in the absence of the supplied classes and messages."
	^ (self  allImplementedMessagesWithout: classesAndMessagesPair)
		copyWithoutAll: (self  allSentMessagesWithout: classesAndMessagesPair)