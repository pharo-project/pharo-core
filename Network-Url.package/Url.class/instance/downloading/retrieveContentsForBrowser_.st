retrieveContentsForBrowser: aBrowser
	"return a MIMEObject with the object's contents, or nil if the object could not be retrieved.  Since aBrowser is specified, this could do browser specific things"
	^self retrieveContents