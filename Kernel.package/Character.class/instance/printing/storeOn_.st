storeOn: aStream
	"Common character literals are preceded by '$', however special need to be encoded differently: for some this might be done by using one of the shortcut constructor methods for the rest we have to create them by ascii-value."

	| name |
	self shouldBePrintedAsLiteral
		ifTrue: [ aStream nextPut: $$; nextPut: self ]
		ifFalse: [
			name := self class constantNameFor: self.
			name notNil
				ifTrue: [ aStream nextPutAll: self class name; space; nextPutAll: name ]
				ifFalse: [
					aStream 
						nextPut: $(; nextPutAll: self class name; 
						nextPutAll: ' value: '; print: value; nextPut: $) ] ].