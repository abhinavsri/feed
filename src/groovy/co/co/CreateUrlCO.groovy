package co.co

import feed.Url
import grails.validation.Validateable

@Validateable
class CreateUrlCO {
    String rssName
    String rssUrl


    static constraints={
        rssName blank:false,nullable:false
        rssUrl nullable: false,blank:false,validator: {val->
            if(Url.findByRssUrl(val))
            {
                return "RssUrl must be unique"
            }
        }
    }
}
