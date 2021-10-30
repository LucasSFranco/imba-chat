tag app-divider

	<self.divider>
		<span> <slot>

	css &
		height: 1px
		
		background: $c3
		position: relative

		span
			display: inline-block
			
			position: absolute
			top: 50%
			left: 50%
			x: -50%
			y: -50%

			background: $c0
			color: $c5
			padding: 0 .25rem


