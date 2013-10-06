longDescription

	^ 'When using cascaded messages, it is often important to finish the cascade with a yourself message. Why? for several reasons. 
	
	First the messages in the cascade may not return the last receiver but the argument as in the well known case of adding elements in a collection.
	
	| col  | 
	col := (OrderedCollection new: 2) add: 1; add: 2.
	
	In this example, col will be assigned to 2 instead of an orderedCollection because add: returns its argument and not the receiver. 
	
	The correct way to do it is using yourself (since yourself returns the receiver).
	| col  | 
	col := (OrderedCollection new: 2) add: 1; add: 2 ; yourself.
	
	
	Second case. Using yourself you can block the influence of redefined method. 
	Imagine the following example: a method creating an instance, initializing it and returning it.
	
	Box class >> new
		| inst | 
		inst := self new.
		inst initialize. 
		^ inst
		
	What this code ensures is that the instance is returned. Using ^ inst initialize would have 
	return the same (but with the risk that if initialize did not return the receiver the new method would not return the right instance)
	
	The previous code can be expressed as follow:
	
	Box class >> new
		^ self new initialize ; yourself 
		
	Here yourself play the same role as the ^ inst above. 
	
	'