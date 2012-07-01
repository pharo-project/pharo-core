*Network-MIME
fileSuffixesForMimeType: mimeType
	"Return a list file suffixes for mime type. This is a suboptimal solution."

	| results |

	results := SortedCollection sortBlock: [:a :b | a size <= b size].
	MIMEType mimeMappings keysAndValuesDo: [:k :v | 
	v do: [: mime |
		mimeType = mime ifTrue: [results add: k]]].
	^results