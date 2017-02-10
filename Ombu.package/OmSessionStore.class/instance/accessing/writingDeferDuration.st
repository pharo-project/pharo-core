writingDeferDuration

	^ writingDeferDuration ifNil: [ OmFileStore defaultWritingDeferDuration ]