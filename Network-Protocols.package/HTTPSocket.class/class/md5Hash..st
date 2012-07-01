digest
md5Hash: aString
	"Answer hash of aString as lowercase 32 digit hex String.
	There are several providers of MD5 hash ..."

	"(self md5Hash: 'user:realm:passwd') =  '007e68e539ed680c24f6d9a370f3bcb1'"

	| hash |
	hash := Smalltalk globals at: #CMD5Hasher ifPresent: [ :cls | cls hashMessage: aString ].
	hash ifNil: [ 
		hash := Smalltalk globals 
			at: #TCryptoRandom
			 ifPresent: [ :cls | (cls basicNew md5HashMessage: aString) asInteger ] ].
	hash
		ifNotNil: [ 
			hash := hash hex asLowercase.
			(hash beginsWith: '16r')
				ifTrue: [ hash := hash allButFirst: 3 ].
			hash := hash paddLeftTo: 32 with: $0 ].
	^ hash