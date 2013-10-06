startTranscriptProcess
	"Transcripter startTranscriptProcess. Pay attention exit will quit the image."
	
	| activeProcess |
	Transcript := self newInFrame: Display boundingBox.
	activeProcess := [ Transcript readEvalPrint.
					Smalltalk processShutDownList: true;
				 		quitPrimitive ] newProcess priority: Processor userSchedulingPriority.
	activeProcess resume.
	Processor terminateActive 