API
whenHit: aBlock
	"Sets aBlock to be evaluated when this breakpoint is hit. If this method is called multiple times, all the blocks provided will be evaluated when this breakpoint is hit."
	self whenHit add: aBlock.