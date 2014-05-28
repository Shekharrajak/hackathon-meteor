# Copyright (c) 2014 by Gentlenode. All Rights Reserved.


# Client >> Helpers > Plugins


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
