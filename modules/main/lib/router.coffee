###
Project: ******
Designed by: Gentlemen https://gentlenode.com/
Contact: studio(at)gentlenode.com
###


# Both >> Router >> Configure


Router.configure
  layoutTemplate: 'Main'
  notFoundTemplate: 'NotFound'
  load: ->
    $('html, body').animate { scrollTop: 0 }, 400
    $('.content').hide().fadeIn 800


# Both >> Router >> Map


Router.map ->
  @route 'Homepage',
    path: '/'


# Both >> Router >> Filters


Router.onBeforeAction ->
  if !Meteor.userId()
    @redirect 'Homepage'
, { except: ['Homepage'] }
