import { api } from '../../services/api'

class ForgotPassword 
	email = {
		value: ''
		error: {}
	}

	loading = {
		resetPassword: false
	}

	def changeEmail value
		email.value = value

	def resetPassword
		loading = { ...loading, resetPassword: true }

		try 
			await api.post('/auth/reset-password')
		catch error
			if error.response
				const { data } = error.response

				const error = data.email

				email.error = {
					code: error.code
					message: error.message
				}
			else
				console.log(error)

		loading = { ...loading, resetPassword: false }

export const forgotPassword = new ForgotPassword
