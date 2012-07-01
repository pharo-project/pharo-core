initialization
initializePresenter 

	okButton 
		action: [ 
				okAction contents value == false
					ifFalse: [
						owner 
							ifNil: [ self delete ]
							ifNotNil: [ owner delete ]]].