message list
browseVersions
	"Create and schedule a changelist browser on the versions of the 
	selected message."
	| class selector method category pair sourcePointer |

	(selector := self selectedMessageName) ifNil: [^ self].
	class := self selectedClassOrMetaClass.
	(class includesSelector: selector)
		ifTrue: [method := class compiledMethodAt: selector.
				category := class whichCategoryIncludesSelector: selector.
				sourcePointer := nil]
		ifFalse: [pair := myChangeSet methodInfoFromRemoval: {class name. selector}.
				pair ifNil: [^ nil].
				sourcePointer := pair first.
				method := CompiledMethod toReturnSelfTrailerBytes:
					(CompiledMethodTrailer new sourcePointer: sourcePointer).
				category := pair last].
	Smalltalk tools versionBrowser
		browseVersionsOf: method
		class: self selectedClass meta: class isMeta
		category: category selector: selector
		lostMethodPointer: sourcePointer.
