package co

import feed.Url
import grails.validation.Validateable

/**
 * Created by abhinav on 12/8/16.
 */
@Validateable
class UpdateUrlCO {
    String rssName
    String rssUrl


    static constraints = {
        rssName blank: false, nullable: false
        rssUrl nullable: false, blank: false, validator: { val ->
            if (Url.findByRssUrl(val)) {
                return "RssUrl must be unique"
            }
        }

    }
}