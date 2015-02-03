toPort: anObject

	^ self transmissions do: [ :each  | each destination: (GLMPhlowDestination target: each phlow port: anObject) ]