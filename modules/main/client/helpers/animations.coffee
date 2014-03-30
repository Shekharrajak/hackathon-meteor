###
Project: ******
Designed by: Gentlemen https://gentlenode.com/
Contact: studio(at)gentlenode.com
###


# Client >> Helpers > Animations


class HelpersAnimations
    switcher: (state, first, second) ->
        try
            if(state)
                $(first).hide()
                $(second).fadeIn 'fast'
            else
                $(second).hide()
                $(first).fadeIn 'fast'
        catch error
            Console.error 'HelpersAnimations.switcher', error
        finally
            return true


@HelpersAnimations = new HelpersAnimations

