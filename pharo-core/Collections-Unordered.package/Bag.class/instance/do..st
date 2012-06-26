enumerating
do: aBlock 
	"Refer to the comment in Collection|do:."

	contents associationsDo: [:assoc | assoc value timesRepeat: [aBlock value: assoc key]]