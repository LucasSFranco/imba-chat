import { routes } from '../../constants/routes'

import '../../components/app-button'
import '../../components/app-divider'
import '../../components/app-form-field'
import '../../components/app-icon'
import '../../components/app-link'
import '../../components/app-text-input'

tag forgot-password
	<self[size: 100% d: flex ai: center jc: center]>
		<[p: 4]>
			<h3[fw: 700 c: cool8 ta: center mb: 2]> "Forgot password"
			<h6[c: cool5 ta: center mb: 16]> "Enter your email and we'll send you a link to change your password."
			<[d: grid gap: 8]>
				<[d: grid gap: 4]>
					<app-form-field label='Email'>
						<app-text-input value="red">
							<app-icon name="envelope">
					<app-button.primary>
						"Reset password"
				<app-divider> "or"
				<app-button.secondary.outlined
					route-to=routes['register']
				>
					"Create new account"
			<a.return-to-login 
				route-to=routes['login']
			>
				"Back to login..."

	css &
		.return-to-login
			text-decoration: none
			
			height: 3.75rem 

			display: flex 
			align-items: center 
			justify-content: center 
			
			position: absolute 
			left: 0 
			right: 0 
			bottom: 0
			
			background: blue0 
			color: gray5 
			font-size: .875rem 
			font-weight: 700 
			