example - sumXPoint
sumXPoint_v1
	|p xSum|
	p := Point x: 1 y: 1.
	xSum := { p. Point x: 2 y: 2. Point x: 3 y: 3.} inject: 0 into: [ :sum :point | sum + point x ].
	^ xSum.