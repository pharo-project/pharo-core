pharo - updates
update20588
	"self new update20588"
	self withUpdateLog: 'Release 2.0'.
	self loadTogether: self script562 merge: false.
		ImageCleaner new cleanUpForRelease.
 	(self confirm: 'Do you wish to advance to Pharo 3.0 Unstable?
[Yes] Your system will be marked as Pharo3.0 (Unstable), and you will subsequently receive development updates for 3.0 (unstable stream).
[No] Your system will remain at Pharo 2.0.')
        ifTrue: [SystemVersion newVersion: 'Pharo3.0a'.
                        SystemVersion current date: '7 March 2013'.
                        self inform: 'You may now save this image and retrieve updates again for Pharo2.0a and beyond.']
        ifFalse: [SystemVersion newVersion: 'Pharo2.0'.].
.
	self flushCaches.
