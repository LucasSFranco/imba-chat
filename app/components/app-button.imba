tag app-button < button

	<self.button>
		<slot>

	css &
		background: none

		display: flex
		align-items: center
		justify-content: center
		gap: .5rem

		border-width: 1px
		border-style: solid
		border-radius: .125rem
		color: white
		font-family: inherit
		font-size: .875rem
		font-weight: 700
		padding: .375rem .75rem

		>>> .icon
			font-size: 1rem

		&.primary
			background: blue5
			border-color: blue5

		&.outlined
			font-weight: 500

			&.secondary
				color: cool4
				border-color: cool4
