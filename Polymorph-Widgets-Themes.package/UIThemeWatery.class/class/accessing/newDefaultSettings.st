newDefaultSettings
	"Answer a new original default settings."
	"self defaultSettings: nil"
	^super newDefaultSettings
		windowColor: (Color r: 170 g: 170 b: 170 range: 255);
		menuColor: (Color r: 200 g: 200 b: 200 range: 255);
		menuTitleColor: (Color r: 190 g: 190 b: 190 range: 255);
		yourself