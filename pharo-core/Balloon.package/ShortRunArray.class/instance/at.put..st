accessing
at: index put: value
	"ShortRunArrays are read-only"
	^self shouldNotImplement.