import i18n from 'i18next'

import en from './locales/en'
import pt from './locales/pt'

# Must be refactored to support lazy loading

i18n.init({
	ns: [
		'common'
		'forgot-password'
		'login'
		'register'
	]
	fallbackLng: 'pt'
	resources: {
		en
		pt
	}
})

export default i18n
