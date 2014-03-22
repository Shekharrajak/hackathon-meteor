### ------------------------------------------------------------------------------------------------------------------------
Project: ******
Designed by: Gentlemen https://gentlenode.com/
Contact: studio(at)gentlenode.com
------------------------------------------------------------------------------------------------------------------------ ###


### Client >> Router >> Configure
------------------------------------------------------------------------------------------------------------------------ ###


Router.configure
    layoutTemplate: 'Layout'
    notFoundTemplate: 'NotFound'
    load: ->
        $('html, body').animate { scrollTop: 0 }, 400
        $('.content').hide().fadeIn 800


### Client >> Router >> Map
------------------------------------------------------------------------------------------------------------------------ ###


Router.map ->
    @route 'Homepage',
        path: '/'


### Client >> Router >> Filters
------------------------------------------------------------------------------------------------------------------------ ###


# Must Be Sign In Filter
Router.before ->
    if !Meteor.userId()
        @redirect 'Homepage'
, { except: ['Homepage'] }

