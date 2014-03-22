### ------------------------------------------------------------------------------------------------------------------------
Project: ******
Designed by: Gentlemen https://gentlenode.com/
Contact: studio(at)gentlenode.com
------------------------------------------------------------------------------------------------------------------------ ###


### Client >> Helpers > Plugins
------------------------------------------------------------------------------------------------------------------------ ###


class HelpersPlugins
    qtip: ->
        try
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
        catch error
            Console.error 'HelpersPlugins.qtip', error
        finally
            return true


@HelpersPlugins = new HelpersPlugins

