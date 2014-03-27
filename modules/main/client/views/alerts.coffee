### ------------------------------------------------------------------------------------------------------------------------
Project: ******
Designed by: Gentlemen https://gentlenode.com/
Contact: studio(at)gentlenode.com
------------------------------------------------------------------------------------------------------------------------ ###


### Client > Alerts > Classic Functions
------------------------------------------------------------------------------------------------------------------------ ###


slideAlert = ->
    alertSel = $('.alert')

    clearTimeout timeout
    timeout = setTimeout ->
        alertSel.slideUp 400, ->
            clearAlertSessions()
    , 2500

    alertSel.hide().slideDown()


clearAlertSessions = ->
    $('.alert').slideUp 400, ->
        Session.set 'alert', null


### Client > Alerts
------------------------------------------------------------------------------------------------------------------------ ###


Template.alerts.rendered = -> 
    slideAlert()


Template.alerts.helpers
    alert: ->
        Session.get 'alert'


Template.alerts.events
    'click .close': (evt) ->
        clearAlertSessions()

