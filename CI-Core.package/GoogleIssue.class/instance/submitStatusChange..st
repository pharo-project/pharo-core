integration-private
submitStatusChange: aMessageString
	^ self postXML: (self statusUpdateXML: aMessageString) to: self commentsUrl