### ------------------------------------------------------------------------------------------------------------------------
Project: EITS
Designed by: Gentlemen https://gentlenode.com/
Contact: studio(at)gentlenode.com
------------------------------------------------------------------------------------------------------------------------ ###


### Client >> Helpers > jQuery Plugin Triggers
------------------------------------------------------------------------------------------------------------------------ ###


@qtip = ->
    $('[data-tooltip!=""]').each ->
        $(@).qtip
            content:
                attr: 'data-tooltip'
            position:
                effect: false
                my: 'top center'
                at: 'bottom center'
                target: $(@)
            style:
                classes: 'qtip-dark'
            show:
                delay: 0

