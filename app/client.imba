import '@fontsource/nunito'

import './styles/global'

import './store'

import { routes } from './constants/routes'

import './views/forgot-password'
import './views/login'
import './views/register'
	
tag client
	theme = app.global.theme

	<self[bg: $c0] .{theme}>
		<forgot-password route=routes['forgot-password']>
		<login route=routes['login']>
		<register route=routes['register']>

imba.mount <client>
