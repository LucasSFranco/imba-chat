import { global } from '../global'

import { api } from '../../services/api'

import { Credentials } from '../../helpers/login/Credentials'

class Login 
	credentials = new Credentials

	loading = {
		signIn: false
	}

	def changeCredentials [field, value]
		credentials[field].value = value

	def signIn
		loading = { ...loading, signIn: true }

		try 
			# const profile = await api.post('/auth/sign-in')
			const profile = { name: 'Lucas S Franco' }

			global.profile = profile
		catch error
			if error.response
				const { data } = error.response

				for [fieldKey, error] of data
					credentials[fieldKey] = {
						code: error.code
						message: error.message
					}
			else
				console.log(error)
		
		loading = { ...loading, signIn: false }

export const login = new Login
