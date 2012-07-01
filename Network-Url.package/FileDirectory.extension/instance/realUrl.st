*Network-Url
realUrl
	"Senders expect url without trailing slash - #url returns slash"
	| url |
	url := self url.
	url last = $/ ifTrue:[^url copyFrom: 1 to: url size-1].
	^url