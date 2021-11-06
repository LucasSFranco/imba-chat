tag app-button < button

	prop loading

	<self.button>
		if loading
			<.spinner>
				<.dot>
				<.dot[animation-delay: 175ms]>
				<.dot[animation-delay: 350ms]>
		else
			<slot>

	css &
		background: none

		min-height: 2.125rem

		display: flex
		align-items: center
		justify-content: center
		gap: .5rem

		border-width: 1px
		border-style: solid
		border-radius: .125rem
		color: white
		cursor: pointer
		font-family: inherit
		font-size: .875rem
		font-weight: 700
		padding: .375rem .75rem
		transition: color 250ms, background 250ms, border-color 250ms

		.spinner
			display: flex
			gap: .25rem

		.dot
			@keyframes pulsing
				0%
					transform: scale(1)
					opacity: 1
				50%
					transform: scale(.8)
					opacity: .3
				100%
					transform: scale(1)
					opacity: 1

			border-radius: 50%
			size: .375rem
			background: currentColor

			animation: pulsing 1.5s ease-in-out infinite

		>>> .icon
			font-size: 1rem

		&.primary
			background: blue5
			border-color: blue5

			@hover
				background: blue6
				border-color: blue6

			@active
				background: blue7
				border-color: blue7

		&.outlined
			font-weight: 500

			&.secondary
				color: cool4
				border-color: cool4

				@hover
					color: cool5
					border-color: cool5

				@active
					background: cool0
					color: cool6
					border-color: cool6

