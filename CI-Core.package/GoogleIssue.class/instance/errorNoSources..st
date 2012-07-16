integration
errorNoSources: aMessageString
	"set the status of the issue to NoSourcesAvailable"
	
	self status: PharoTrackerLabels noSourcesAvailable.
	^ self submitStatusChange: (String streamContents: [ :stream| 
				stream << 'This Issue has been checked by Ulysse the Monkey, but no sources are available:'; lf; lf.
				stream << aMessageString]).