result
	^ result ifNil: [ result := self methodReference realClass theNonMetaClass perform: self methodReference selector ]