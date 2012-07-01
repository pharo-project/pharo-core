I am NonInteractiveTranscript, a replacement for Transcript, writing everything to a file or stdout.

This is useful when running headless.

	NonInteractiveTranscript file install.
	
To connect to the output stream of the virtual machine process choose stdout.

	NonInteractiveTranscript stdout install.
	
An example, using various methods.

| transcript |
transcript := NonInteractiveTranscript new.
transcript cr; << 'This is a test'; space; print: #(1 2 3).
transcript cr; nextPut: $|; tab; nextPut: $#; nextPutAll: '-1-'; space; print: Float pi.
Collection subclassesDo: [ :each | transcript cr; print: each ].
transcript crShow: 'Done!'.
transcript close.