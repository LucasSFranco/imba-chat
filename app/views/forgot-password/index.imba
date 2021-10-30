import { routes } from '../../constants/routes'

import '../../components/app-button'
import '../../components/app-divider'
import '../../components/app-form-field'
import '../../components/app-icon'
import '../../components/app-link'
import '../../components/app-text-input'

tag forgot-password
	email = app.forgotPassword.email
	loading = app.forgotPassword.loading

	changeEmail = app.forgotPassword.changeEmail
	resetPassword = app.forgotPassword.resetPassword

	<self[size: 100% d: flex ai: center jc: center]>
		<[p: 4]>
			<h3[fw: 700 c: $c9 ta: center mb: 2]> i18n.t('forgot-password:title')
			<h6[c: $c6 ta: center mb: 16]> i18n.t('forgot-password:subtitle')
			<[d: grid gap: 8]>
				<[d: grid gap: 4]>
					<app-form-field
						label=i18n.t('forgot-password:email')
						error=email.error.message
					>
						<app-text-input
							icon='envelope'
							value=email.value
							error=!!email.error.code
							@change=changeEmail(e.detail)
						>
					<app-button.primary
						loading=loading.resetPassword
						@click=resetPassword
					>
						i18n.t('forgot-password:reset-password-btn')
				<app-divider> i18n.t('common:or')
				<app-button.secondary.outlined
					route-to=routes['register']
				>
					i18n.t('forgot-password:to-register')
			<a.return-to-login
				route-to=routes['login']
			>
				i18n.t('forgot-password:to-login')

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

			background: $custom-bg
			color: $c6
			font-size: .875rem
			font-weight: 700
