import { routes } from '../../constants/routes'

import '../../components/app-button'
import '../../components/app-divider'
import '../../components/app-form-field'
import '../../components/app-icon'
import '../../components/app-text-input'

tag login
	<self[size: 100% d: flex ai: center jc: center]>
		<[p: 4]>
			<h3[fw: 700 c: cool8 ta: center mb: 2]> "Log in"
			<h6[c: cool5 ta: center mb: 16]> "Welcome back, we are glad to see you again!"
			<[d: grid gap: 8]>
				<app-button.secondary.outlined>
					<app-icon name="google">
					"Log in with Google"
				<app-divider> "or"
				<[d: grid gap: 4]>
					<app-form-field label='Email'>
						<app-text-input value="red">
							<app-icon name="envelope">
					<app-form-field label='Password'>
						<app-text-input value="red">
							<app-icon name="lock">
						<app-link[fs: .75rem]
							route-to=routes['forgot-password']
						> "Forgot password?"
					<[d: grid gap: 3]>
						<app-button.primary>
							"Log in"
						<p[c: cool6 fs: .75rem ta: center]> 
							"Don't have an account?"
							<app-link[ml: 1]
								route-to=routes['register']
							> "Register!"
