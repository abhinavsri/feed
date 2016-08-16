package feed

import grails.transaction.Transactional

import java.text.DateFormat
import java.text.SimpleDateFormat

@Transactional
class TestFeedService {

    def serviceMethod() {

    }

    def readFeed(url, id) {
        Url urlObject = Url.findById(id)
        DateFormat fromurl = new SimpleDateFormat("EEE, dd MMM yyyy HH:mm:ss Z");
        DateFormat myFormat = new SimpleDateFormat("yyyy-MM-dd");
        Date date
        Set<String> titleSet = new HashSet<String>()
        Set<String> linkSet = new HashSet<String>()
        def xmlFeed = new XmlParser().parse(url);
        List feedList = []

        (0..<xmlFeed.channel.item.size()).each {
            def item = xmlFeed.channel.item.get(it);

            String reformattedStr = myFormat.format(fromurl.parse(item.pubDate.text()))
            date = (Date) myFormat.parse(reformattedStr)
            if ((titleSet.add(item.title.text())) && (linkSet.add(item.link.text()))) {
                if (!(Feed.findAllByLink(item.link.text()))) {
                    Feed feed = new Feed(item.title.text(), item.link.text(), item.description.text(), date, urlObject)


                    feed.save(flush: true, failOnError: true)
                    feedList << feed

                }

            }
        }
    }
}
