setUp
	originalTranscript := Transcript.
	newTranscript := MockTranscript new.
	Smalltalk globals at: #Transcript put: newTranscript.
	
	