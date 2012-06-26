*Tools-FileList
services

	^ Array 
			with: self serviceRemoveLineFeeds
			with: self serviceFileIn
	