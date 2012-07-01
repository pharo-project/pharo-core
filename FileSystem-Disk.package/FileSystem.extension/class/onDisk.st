*filesystem-disk
onDisk
	"This method provides compatibility with the original Filesystem interface"
	self deprecated: 'Use #disk' on: '3 April 2012' in: 'Pharo 1.4'. 
	^ self disk