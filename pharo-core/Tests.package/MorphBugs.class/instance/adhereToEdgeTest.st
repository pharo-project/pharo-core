as yet unclassified
adhereToEdgeTest
"self new adhereToEdgeTest"
"self run: #adhereToEdgeTest"

| r |
r := Morph new openInWorld .

self shouldnt: [ [ r adhereToEdge: #eternity ] ensure: [ r delete ] ] raise: Error .
 r delete .

^true 