setUserName: user forGroup: group

	^ self unlockedKeychain 
			setUserName: user 
			forGroup: group