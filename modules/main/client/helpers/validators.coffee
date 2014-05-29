# Copyright (c) 2014 by Gentlenode. All Rights Reserved.


# Client >> Helpers > Validators


class HelpersValidators
  trimInput: (value) ->
    return (if value then value.replace /^\s*|\s*$/g, '' else value)


  isNotEmpty: (value, message=true) ->
    notEmpty = false

    if value and value isnt ''
      notEmpty = true
    else if message
      Session.set 'alert', { type: 'error', message: 'Please fill in all required fields.' }

    return notEmpty


  isEmail: (value, message=true) ->
    email = false

    filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/

    if filter.test value
      email = true
    else if message
      Session.set 'alert', { type: 'error', message: 'Please enter a valid email address.' }

    return email


  isValidPassword: (value, message=true) ->
    validPassword = false

    if value.length >= 6
      validPassword = true
    else if message
      Session.set 'alert', { type: 'error', message: 'Your password should be 6 characters or longer.' }

    return validPassword


  areValidPasswords: (password, confirm) ->
    if not @isValidPassword password
      return false

    if password isnt confirm
      Session.set 'alert', { type: 'error', message: 'Your two passwords are not equivalent.' }
      return false

    return true


  checkingInput: (selector, firstCondition, secondCondition, type) ->
    if not firstCondition
      selector.removeClass 'invalid'
      selector.removeClass type
    else if not secondCondition
      selector.addClass 'invalid'
      selector.removeClass type
    else
      selector.addClass type
      selector.removeClass 'invalid'

    return true


  checkingPasswords: (passwordSel, passwordConfirmSel) ->
    password = passwordSel.val()
    passwordConfirm = passwordConfirmSel.val()

    firstCondition = (@isNotEmpty password, false) or (@isNotEmpty passwordConfirm, false)
    secondCondition = password is passwordConfirm and (@isValidPassword password, false) and (@isValidPassword passwordConfirm, false)

    @checkingInput passwordSel, firstCondition, secondCondition, 'success'
    @checkingInput passwordConfirmSel, firstCondition, secondCondition, 'success'

    return true


  blockForm: (selector) ->
    selector.find('input[type=submit]').attr 'disabled', true
    return true


  unblockForm: (selector, clear=false, remove=false) ->
    if clear is true
      selector[0].reset()

    if remove is true
      selector.find('input, textarea').removeClass 'invalid'

    selector.find('input[type=submit]').attr 'disabled', false
    return true


  redify: (selector) ->
    selector.find(
      'input[type=text], input[type=password], textarea').addClass 'invalid'
    return true


  rumble: (selector, color=false) ->
    selector.jrumble(
      x: 5
      y: 0
      rotation: 0
      speed: 25
      opacity: true
      opacityMin: 0.75
    ).trigger 'startRumble'

    setTimeout (-> selector.trigger('stopRumble')), 500

    if color is 'red'
      @redify selector

    @unblockForm selector

    return true


@HelpersValidators = new HelpersValidators
