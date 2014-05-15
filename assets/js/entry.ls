# Apply it to the div that will contain the widget:
# 
#  #here-reddit.sub-header__footer__share__reddit 


add-reddit-button = (selector) ->
    thisurl = encodeURIComponent(window.location.href);
    url     = "http://www.reddit.com/static/button/button2.html?width=51&url=#thisurl"
    iframe  = '<iframe src="'+url+'" height="69" width="51" scrolling="no" frameborder="0"></iframe>'
    jQuery(selector).append(iframe)


# Apply it to the a that will contain the widget
#  .sub-header__footer__share__twitter 
#        a#here-twitter(href="https://twitter.com/share",class="twitter-share-button",data-count='vertical', data-via="_vzaccaria_") Tweet

add-twitter-button = (selector) ->
    url     = "http://platform.twitter.com/widgets.js"
    script  = "<script id='twitter-wjs' src=\"#url\"> </script>"
    jQuery(selector).before(script)

add-google-tracking = ->
    console.log "Getting google."
    url = "http://www.google-analytics.com/urchin.js"
    jQuery.getScript url, (script, success) ->
        if success
                _uacct = "UA-4069654-2"
                urchinTracker(); 

jQuery(document).ready ->
    add-reddit-button('#here-reddit')
    add-twitter-button('#here-twitter')
    add-google-tracking()


 