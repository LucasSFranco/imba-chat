import { routes } from '../../constants/routes'

import '../../components/app-button'
import '../../components/app-form-field'
import '../../components/app-icon'
import '../../components/app-link'
import '../../components/app-text-input'

tag register
	<self[size: 100% d: flex ai: center jc: center]>
		<[p: 4]>
			<h3[fw: 700 c: cool8 ta: center mb: 2]> "Create an account"
			<h6[c: cool5 ta: center mb: 16]> "Register to be able to chat with your friends."
			<[d: grid gap: 8]>
				<[d: grid gap: 4]>
					<app-form-field label='User'>
						<app-text-input value="red">
							<app-icon name="user">
					<app-form-field label='Email'>
						<app-text-input value="red">
							<app-icon name="envelope">
					<app-form-field label='Password'>
						<app-text-input value="red">
							<app-icon name="lock">
					<app-form-field label='Password'>
						<app-text-input value="red">
					<[d: grid gap: 3]>
						<app-button.primary>
							"Reset password"
						<app-link[fs: .75rem ta: center]
							route-to=routes['login']
						> "Already have an account?"
