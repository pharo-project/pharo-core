acceptDroppingMorph: aMorph event: evt
	"This message is sent when a morph is dropped onto a morph that has     
	agreed to accept the dropped morph by responding 'true' to the     
	wantsDroppedMorph:Event: message. The default implementation just     
	adds the given morph to the receiver."

	"Here we let the model do its work."

	[ 
	self listSource
		acceptDroppingMorph: aMorph
		atIndex: self potentialDropIndex
		event: evt
		inMorph: self ]
		ensure: [ 
			self resetPotentialDropIndex.
			evt hand releaseMouseFocus: self.
			Cursor normal show ]