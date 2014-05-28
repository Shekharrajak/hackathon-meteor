# Copyright (c) 2014 by Gentlenode. All Rights Reserved.


# Client > Alerts > Classic Functions


slideAlert = ->
  alertSel = $ '.alert'

  clearTimeout timeout
  timeout = setTimeout ->
    alertSel.slideUp 400, ->
      clearAlertSessions()
  , 4000

  alertSel.hide().slideDown()


clearAlertSessions = ->
  $('.alert').slideUp 400, ->
    Session.set 'alert', null


# Client > Alerts


Template.Alerts.helpers
  alert: ->
    Session.get 'alert'


Template.Alerts.events
  'click .close': (evt) ->
    clearAlertSessions()


# Client > Alerts Inner


Template.AlertsInner.rendered = ->
  slideAlert()
