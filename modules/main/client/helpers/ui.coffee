# Copyright (c) 2014 by Gentlenode. All Rights Reserved.


# Client >> Helpers > Handlebars


UI.registerHelper 'isActive', (url) ->
  route = if Router.current() then Router.current().path.split('?')[0] || null
  return if route is url then 'active' else ''


UI.registerHelper 'isLogged', () ->
  return if Meteor.userId() then 'isLogged' else 'isNotLogged'


UI.registerHelper 'isHomepage', () ->
  route = Router.current().path || null
  return if route is '/' then 'isHomepage' else 'isNotHomepage'


UI.registerHelper 'getCurrentYear', () ->
  return new Date().getFullYear()
