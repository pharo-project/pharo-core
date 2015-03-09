materialize: aByteArray
	| materializer stream gzstream materialization |
	stream := aByteArray readStream. 
	gzstream := GZipReadStream on: stream.
	materializer := FLMaterializer newDefault.
	materialization := materializer materializeFrom: gzstream.
	gzstream close.
	stream close.
	^ materialization root.