spotterProcessorsFor: aSpotterStep pragma: aPragma
	" if there is a problem with the definition of one or more processors, let the other processors continue to work "
	 [ self perform: aPragma selector with: aSpotterStep ]
		on: Error 
		do: [ :exception | 			
			('[Spotter] Exception while collecting processors for <', self class name, '>: ', exception asString) logCr ] 