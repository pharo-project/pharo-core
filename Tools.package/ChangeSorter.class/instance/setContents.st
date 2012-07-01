code pane
setContents
	"return the source code that shows in the bottom pane"
	| sel class strm changeType |
	self clearUserEditFlag.
	currentClassName
		ifNil: [^ contents := myChangeSet preambleString
						ifNil: ['']].
	class := self selectedClassOrMetaClass.
	(sel := currentSelector) == nil
		ifTrue: [strm := (String new: 100) writeStream.
			(myChangeSet classChangeAt: currentClassName)
				do: [:each | 
					each = #remove
						ifTrue: [strm nextPutAll: 'Entire class was removed.';
								 cr].
					each = #addedThenRemoved
						ifTrue: [strm nextPutAll: 'Class was added then removed.'].
					each = #rename
						ifTrue: [strm nextPutAll: 'Class name was changed.';
								 cr].
					each = #add
						ifTrue: [strm nextPutAll: 'Class definition was added.';
								 cr].
					each = #change
						ifTrue: [strm nextPutAll: 'Class definition was changed.';
								 cr].
					each = #reorganize
						ifTrue: [strm nextPutAll: 'Class organization was changed.';
								 cr].
					each = #comment
						ifTrue: [strm nextPutAll: 'New class comment.';
								 cr]].
			^ contents := strm contents]
		ifFalse: [changeType := myChangeSet atSelector: (sel := sel asSymbol) class: class.
			changeType == #remove
				ifTrue: [^ contents := 'Method has been removed (see versions)'].
			changeType == #addedThenRemoved
				ifTrue: [^ contents := 'Added then removed (see versions)']. 
			class
				ifNil: [^ contents := 'Method was added, but cannot be found!'].
			(class includesSelector: sel)
				ifFalse: [^ contents := 'Method was added, but cannot be found!'].
			contents := class sourceCodeAt: sel.
			(#(#prettyPrint #prettyDiffs ) includes: contentsSymbol)
				ifTrue: [contents := class prettyPrinterClass
								format: contents
								in: class
								notifying: nil].
			self showingAnyKindOfDiffs
				ifTrue: [contents := self diffFromPriorSourceFor: contents].
			^ contents := contents asText makeSelectorBoldIn: class]