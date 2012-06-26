accessing
packageInfo
	^String streamContents:[:s|
		s nextPutAll:'Package: '.
		s nextPutAll: self fullPackageName; cr; cr.
		sourceSystem isEmpty ifFalse:[
			s nextPutAll: sourceSystem; cr; cr].
		doIts isEmpty ifFalse:[
			s nextPutAll:'Unresolvable doIts:'; cr; cr.
			doIts do:[:chgRec|
				s nextPut:$!; nextPutAll: chgRec string; nextPut: $!; cr]]].