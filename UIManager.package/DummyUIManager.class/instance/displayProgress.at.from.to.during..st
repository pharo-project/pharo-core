ui requests
displayProgress: titleString at: aPoint from: minVal to: maxVal during: workBlock

  ^ ProgressBarEnabled 
    ifFalse: [ nil ]
    ifTrue: [
      ProgressInitiationException 
        display: titleString
        at: aPoint 
        from: minVal 
        to: maxVal 
        during: workBlock ].