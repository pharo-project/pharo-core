validateBeforeSaving

	^ ValidateBeforeSaving ifNil: [ ValidateBeforeSaving := true ]