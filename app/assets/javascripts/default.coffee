$(document).ready ($) ->

	url = window.location.pathname

	$('ul.nav a[href="' + url + '"]').parent().addClass 'active'

	test = $('ul.nav a').filter(->
		@href == url
		).parent().addClass('active')
	return