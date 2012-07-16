sources, change log
openSources: fullSourcesName forImage: imagePath 
"We first do a check to see if a compressed version ofthe sources file is present.
Open the .sources file read-only after searching in:
a) the directory where the VM lives
b) the directory where the image came from
c) the DefaultDirectory (which is likely the same as b unless the SecurityManager has changed it).
"
	| sources fd sourcesFile sourcesName |

	sourcesFile := fullSourcesName asFileReference.
	sourcesName := sourcesFile basename.
	
	"look for the sources file or an alias to it in the VM's directory"
	(sourcesFile := self vmDirectory / sourcesName) exists 
		ifTrue: [ sourcesFile readStream ifNotNilDo: [ :stream| ^ stream ]].
		
	"look for the sources file or an alias to it in the image directory"
	(sourcesFile := imagePath asFileReference parent / sourcesName) exists
		ifTrue: [ ^ sourcesFile readStream ifNotNilDo: [ :stream| ^ stream ]].
		
	"look for the sources in the current directory"
	(sourcesFile := sourcesName asFileReference) exists
		ifTrue: [ ^ sourcesFile readStream ifNotNilDo: [ :stream| ^ stream ]].
		
	^ nil
