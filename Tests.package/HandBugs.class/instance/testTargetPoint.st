as yet unclassified
testTargetPoint
"self new testTargetPoint"
"self run: #testTargetPoint"

self shouldnt: [ ActiveHand targetPoint ] raise: Error .

