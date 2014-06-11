# Copyright (c) 2014 by Gentlenode. All Rights Reserved.


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


# Both >> Router >> Hooks


Router.onBeforeAction ->
  if !Meteor.userId()
    @redirect 'Homepage'
, { except: ['Homepage'] }
