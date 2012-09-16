sources, change log
checkAndOpenSourcesAndChanges
	"Open the changes and sources files and install them in SourceFiles. 
	Inform the user of problems regarding write permissions or CR/CRLF mixups."
	"Note: SourcesName and imageName are full paths; 
	changesName is a  local name."
	| sources changes msg wmsg |
	msg := 'Pharo cannot locate &fileRef.

Please check that the file is named properly and is in the
same directory as this image.'.
	wmsg := 'Pharo cannot write to &fileRef.

Please check that you have write permission for this file.

You won''t be able to save this image correctly until you fix this.'.

	sources := self openSources: self sourcesName forImage: LastImagePath.
	changes := self openChanges: self changesName forImage: LastImagePath.

	((sources == nil or: [sources atEnd])
			and: [self checkSourcesFileAvailability])
		ifTrue: [OSPlatform isMacOS
				ifTrue: [msg := msg , '
Make sure the sources file is not an Alias.'].
self inform: (msg copyReplaceAll: '&fileRef' with: 'the sources file named ' , self sourcesName)].

	(changes == nil
			and: [self checkChangesFileAvailability])
		ifTrue: [self inform: (msg copyReplaceAll: '&fileRef' with: 'the changes file named ' , self changesName)].

	(self checkChangesFileAvailability and: [changes notNil])
		ifTrue: [changes isReadOnly
				ifTrue: [self inform: (wmsg copyReplaceAll: '&fileRef' with: 'the changes file named ' , self changesName)].

			((changes next: 200)
					includesSubstring: String crlf)
				ifTrue: [self inform: 'The changes file named ' , self changesName , '
has been injured by an unpacking utility.  Crs were changed to CrLfs.
Please set the preferences in your decompressing program to 
"do not convert text files" and unpack the system again.']].

	SourceFiles := Array with: sources with: changes