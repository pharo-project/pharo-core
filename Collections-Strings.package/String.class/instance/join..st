splitjoin
join: aCollection 
	"'*' join: #('WWWWW' 'W  EW' 'zzzz')
		->  'WWWWW*W  EW*zzzz' "
	^ String
		streamContents: [:stream | aCollection
				do: [:each | stream nextPutAll: each asString] "NB: coerce elements to Strings"
				separatedBy: [stream nextPutAll: self]]