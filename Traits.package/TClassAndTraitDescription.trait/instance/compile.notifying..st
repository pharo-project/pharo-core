compiling
compile: code notifying: requestor 
	"Refer to the comment in Behavior|compile:notifying:." 

	^self compile: code
		 classified: ClassOrganizer default
		 notifying: requestor