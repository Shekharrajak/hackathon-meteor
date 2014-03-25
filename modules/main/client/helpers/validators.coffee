### ------------------------------------------------------------------------------------------------------------------------
Project: ******
Designed by: Gentlemen https://gentlenode.com/
Contact: studio(at)gentlenode.com
------------------------------------------------------------------------------------------------------------------------ ###


### Client >> Helpers > Validators
------------------------------------------------------------------------------------------------------------------------ ###


class HelpersValidators
    isNotEmpty: (value, message) ->
        not_empty = false

        try
            if value and value isnt ''
                not_empty = true
            else if message
                __.HelpersAlerts.slide_alert 'error', 'Please fill in all required fields.'
        catch error
            Console.error 'HelpersValidators.is_not_empty', error
        finally
            return not_empty


    isEmail: (value, message) ->
        email = false

        try
            filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/

            if filter.test value
                email = true
            else if message
                __.HelpersAlerts.slide_alert 'error', 'Please enter a valid email address.'
        catch error
            Console.error 'HelpersValidators.is_email', error
        finally
            return email


    isValidPassword: (value, message) ->
        valid_password = false

        try
            if value.length >= 6
                valid_password = true
            else if message
                __.HelpersAlerts.slide_alert 'error', 'Your password should be 6 characters or longer.'
        catch error
            Console.error 'HelpersValidators.is_valid_password', error
        finally
            return valid_password


    isFacebookPage: (value, message) ->
        facebook_page = false

        try
            filter = /^(http|https):\/\/(www\.)?facebook.com\/([a-zA-Z0-9.-\/]{1,})/;

            if filter.test value
                facebook_page = true
            else if message
                __.HelpersAlerts.slide_alert 'error', 'Please enter a valid facebook page.'
        catch error
            Console.error 'HelpersValidators.is_facebook_page', error
        finally
            return facebook_page


    checkingInput: (selector, first_condition, second_condition, type) ->
        try
            if not first_condition
                selector.removeClass 'invalid'
                selector.removeClass type
            else if not second_condition
                selector.addClass 'invalid'
                selector.removeClass type
            else
                selector.addClass type
                selector.removeClass 'invalid'
        catch error
            Console.error 'HelpersValidators.checking_input', error
        finally
            return true


    checkingPasswords: (password_sel, password_confirm_sel) ->
        try
            password = password_sel.val()
            password_confirm = password_confirm_sel.val()

            first_condition = (this.is_not_empty password, false) or (this.is_not_empty password_confirm, false)
            second_condition = password is password_confirm and (this.is_valid_password password, false) and (this.is_valid_password password_confirm, false)

            this.checking_input password_sel, first_condition, second_condition, 'success'
            this.checking_input password_confirm_sel, first_condition, second_condition, 'success'
        catch error
            Console.error 'HelpersValidators.checking_passwords', error
        finally
            return true


    blockForm: (selector) ->
        try
            selector.find('input[type=submit]').attr 'disabled', true
        catch error
            Console.error 'HelpersValidators.block_form', error
        finally
            return true


    unblockForm: (selector) ->
        try
            selector.find('input[type=submit]').attr 'disabled', false
        catch error
            Console.error 'HelpersValidators.unblock_form', error
        finally
            return true


@HelpersValidators = new HelpersValidators

