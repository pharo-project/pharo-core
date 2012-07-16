integration
errorNoSources
	"set the status of the issue to NoSourcesAvailable"
	
	self status: PharoTrackerLabels noSourcesAvailable.
	^ self submitStatusChange: (String streamContents: [ :stream| 
				stream << 'This Issue has been checked by Ulysse the Monkey, but no sources are available'; lf; lf.
				stream << 'Someone should have a look either to check the validity of the source or to report a strange behavior of a crazy monkey.']).