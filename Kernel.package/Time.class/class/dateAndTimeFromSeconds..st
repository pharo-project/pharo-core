smalltalk-80
dateAndTimeFromSeconds: secondCount
 
 	^ Array
 		with: (Date fromSeconds: secondCount)
 		with: (Time fromSeconds: secondCount \\ 86400)
 