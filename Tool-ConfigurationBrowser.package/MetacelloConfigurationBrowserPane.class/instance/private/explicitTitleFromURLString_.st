explicitTitleFromURLString: anURLString
	"find the name of the meta repository based on the fact that it starts with Meta"
	^ ( $/ split: anURLString) detect: [ :each | 'Meta*' match: each ] ifNone: [ anURLString ]