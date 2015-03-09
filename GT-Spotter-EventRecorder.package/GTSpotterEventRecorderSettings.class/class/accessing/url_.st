url: aZnUrl
	url := aZnUrl ifNotNil: [ aZnUrl asZnUrl ].
	self flag:'Not clear why save is called in this method'.
	"self save."