### ------------------------------------------------------------------------------------------------------------------------
Project: ******
Designed by: Gentlemen https://gentlenode.com/
Contact: studio(at)gentlenode.com
------------------------------------------------------------------------------------------------------------------------ ###


### Client >> Helpers > Classics
------------------------------------------------------------------------------------------------------------------------ ###


class HelpersClassics
    trimInput: (value) ->
        try
            return (if value then value.replace /^\s*|\s*$/g, '' else value)
        catch error
            Console.error 'HelpersClassics.trim_input', error


    redify: (selector) ->
        try
            selector.find('input[type=text], input[type=password]').addClass 'invalid'
        catch error
            Console.error 'HelpersClassics.redify', error
        finally
            return true


    rumble: (selector, evt, color) ->
        try
            evt.preventDefault()

            selector.jrumble(
                x: 5
                y: 0
                rotation: 0
                speed: 25
                opacity: true
                opacityMin: 0.75
            ).trigger 'startRumble'

            selector.stopTime()
            selector.oneTime 500, (-> selector.trigger 'stopRumble')

            if color is 'red'
                this.redify selector

            __.HelpersValidators.unblock_form selector
        catch error
            Console.error 'HelpersClassics.rumble', error
        finally
            return true


@HelpersClassics = new HelpersClassics

