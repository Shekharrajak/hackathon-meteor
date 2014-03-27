### ------------------------------------------------------------------------------------------------------------------------
Project: ******
Designed by: Gentlemen https://gentlenode.com/
Contact: studio(at)gentlenode.com
------------------------------------------------------------------------------------------------------------------------ ###


### Client >> Helpers > Handlebars
------------------------------------------------------------------------------------------------------------------------ ###


Handlebars.registerHelper 'isLogged', () ->
    if Meteor.userId() then 'isLogged' else 'isNotLogged'


Handlebars.registerHelper 'isHomepage', () ->
    if window.location.pathname is '/' then 'isHomepage' else 'isNotHomepage'

