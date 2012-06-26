as yet unclassified
displayProgress: titleString from: minVal to: maxVal during: workBlock

  ^ ProgressBarEnabled 
    ifFalse: [ nil ]
    ifTrue: [
      ProgressInitiationException 
        display: titleString
        at: Display center 
        from: minVal 
        to: maxVal 
        during: workBlock ].