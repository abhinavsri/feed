package feed

class Url {
    String rssName
    String rssUrl

    static constraints = {
        rssUrl nullable: false, blank: true
        rssName nullable: false, blank: true
    }


    static hasMany = [feed: Feed]
}
