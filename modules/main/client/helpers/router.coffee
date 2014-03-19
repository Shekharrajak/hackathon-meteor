### ------------------------------------------------------------------------------------------------------------------------
Project: EITS
Designed by: Gentlemen https://gentlenode.com/
Contact: studio(at)gentlenode.com
------------------------------------------------------------------------------------------------------------------------ ###


### Client >> Router >> Configure
------------------------------------------------------------------------------------------------------------------------ ###


Router.configure
    layoutTemplate: 'layout'
    notFoundTemplate: 'notFound'
    load: ->
        $('html, body').animate { scrollTop: 0 }, 400
        $('.content').hide().fadeIn 800


### Client >> Router >> Map
------------------------------------------------------------------------------------------------------------------------ ###


Router.map ->
    @route 'homepage', {
        path: '/'
    }


### Client >> Router >> Filters
------------------------------------------------------------------------------------------------------------------------ ###


# Must Be Sign In Filter
Router.before ->
    if !Meteor.userId()
        @redirect 'homepage'
, { except: ['homepage'] }

