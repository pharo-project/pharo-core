accessing
sourceCode
	"Answer the source code of compiled method.
	Note: it does not attempts to read from source files using sourcePointer,
	nor reconstruct the source code using temp names"
	
	(kind == #EmbeddedSourceQCompress or: [ kind == #EmbeddedSourceZip ]) ifTrue: [
		^ data ].
	
	kind == #SourceBySelector ifTrue: [
		^ method methodClass getSourceCodeBySelector: method selector ].
	
	kind == #SourceByStringIdentifier ifTrue: [
		^ method methodClass getSourceCodeByIdentifier: data ].

	^ nil