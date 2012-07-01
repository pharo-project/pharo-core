instance creation
fromUserWithExtent: anExtent
	"Answer an instance of me with bitmap initialized from the area of the 
	display screen whose origin is designated by the user and whose size is anExtent"

	^ self fromDisplay: (Rectangle originFromUser: anExtent)

"(Form fromUserWithExtent: 50@50) displayAt: 10@10"