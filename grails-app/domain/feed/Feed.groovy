package feed

import java.text.SimpleDateFormat

class Feed {
    String link
    String title
    String description
    Date pubDate
    Url url
    static belongsTo = [url: Url]

    static constraints = {
        link nullable: false, blnk: false, unique: true
        title nullable: false, blank: false, unique: true
        description nullable: false, blank: true
        pubDate nullable: false, blank: false
    }
    static mapping = {
        description sqlType: "longtext"
    }

    public Feed(String title, String link, String description, Date pubDate, Url url) {
        this.title = title
        this.link = link
        this.description = description
        this.pubDate = pubDate
        this.url = url
    }

    public Feed() {}

    public static String convertDateToStrig(Date date) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd")
        simpleDateFormat.format(date)
    }
}
