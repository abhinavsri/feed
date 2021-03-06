import feed.Feed
import feed.Url

class FeedController {
    def testFeedService

    def index() {}
    def rss = {
        Url url = Url.findById(params.id as Long)
        println(url.rssUrl)
        testFeedService.readFeed(url.rssUrl, params.id as Long)
        redirect(action: "list", params: [urlId: url.id])

    }

    def list(Integer max) {
        //params.max = Math.min(max ?: 2, 100)
        def urlId = params.urlId
        println(params.urlId)
        Url url = Url.findById(params.urlId)
        //List postList = Feed.findAllByUrl(url, [max: params.max, offset: params.offset])
        println(url)
        println(params)

        List postList = Feed.createCriteria().listDistinct {
            eq("url", url)
            maxResults(2)
            order('pubDate', "desc")
            firstResult(params.offset ? params.int('offset') : 0)

        }
        //def postCount = Feed.findById(params.urlId as Long).count()
        int postCount = Feed.countByUrl(url)

        println("%%%%%%%%%%%%%%%%%%%%" + postCount)
        render view: "/welcome", model: [postCount: postCount, postList: postList, urlId: urlId]
    }
    
    def allList(Integer max) {
        List postList = Feed.createCriteria().listDistinct {

            maxResults(10)
            order('pubDate', "desc")
            firstResult(params.offset ? params.int('offset') : 0)

        }
        int postCount = Feed.count()
        render view: "/viewAllFeed", model: [postCount: postCount, postList: postList]
    }
}
