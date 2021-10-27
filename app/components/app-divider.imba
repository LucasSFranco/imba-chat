tag app-divider

	<self.divider>
		<span> <slot>

	css &
		height: 1px
		
		background: gray2
		position: relative

		span
			display: inline-block
			
			position: absolute
			top: 50%
			left: 50%
			x: -50%
			y: -50%

			background: white
			color: gray4
			padding: 0 .25rem


