###
Project: ******
Designed by: Gentlemen https://gentlenode.com/
Contact: studio(at)gentlenode.com
###


# Client >> Helpers > Handlebars


UI.registerHelper 'isLogged', () ->
    if Meteor.userId() then 'isLogged' else 'isNotLogged'


UI.registerHelper 'isHomepage', () ->
    if window.location.pathname is '/' then 'isHomepage' else 'isNotHomepage'

