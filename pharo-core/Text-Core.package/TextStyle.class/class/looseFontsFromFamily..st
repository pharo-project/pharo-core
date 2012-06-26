mime file in/out
looseFontsFromFamily: familyName 
	"
	TextStyle looseFontsFromFamily: 'Accuny'
	TextStyle looseFontsFromFamily: 'Accujen'
	TextStyle actualTextStyles keys collect: [ :k | TextStyle looseFontsFromFamily: k ]
	"
	| looseFonts realStyle classes |
	realStyle := TextStyle named: familyName.
	classes := ((realStyle fontArray copyWithout: nil) collect: [ :f | f class ]) asSet.
	classes do: [ :cls | cls allSubInstancesDo: [ :f | f releaseCachedState ] ].
	Smalltalk garbageCollect.
	looseFonts := IdentitySet new.
	classes do: 
		[ :cls | 
		looseFonts addAll: ((cls allSubInstances select: [ :ea | ea familyName = familyName ]) reject: 
				[ :f | 
				realStyle fontArray anySatisfy: [ :fn | fn == f or: [ fn derivativeFonts includes: f ] ] ]) ].
	^ looseFonts