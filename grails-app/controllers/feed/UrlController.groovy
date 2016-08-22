package feed

import co.CreateUrlCO
import co.UpdateUrlCO

class UrlController {

    def index() {

        render view: "/url/createUrl"
    }

    def createUrl(CreateUrlCO createUrlCO) {
        print("CCCCCCCCCCCCCCCCCCCCCCCCC")
        if (createUrlCO.validate()) {
            print("VVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVV")
            Url url = new Url(rssName: createUrlCO.rssName, rssUrl: createUrlCO.rssUrl)
            url.save(flush: true, failOnError: true)
            redirect action: "showUrl"

        } else {
            createUrlCO.errors.each { it }
            render view: "/url/createUrl", model: [createUrlCOError: createUrlCO.errors]
        }

    }

    def deleteUrl() {
        println(params.id)

        Url url = Url.findById(params.id as Long)
        url.delete(flush: true, failOnError: true)
        redirect action: "showUrl"

    }

    def showUrl(Integer max) {
        println(params)
        List url = Url.createCriteria().listDistinct {
            maxResults(5)
            firstResult(params.offset ? params.int('offset') : 0)
        }
        def listTotal = Url.count()
        println(listTotal)

        if (url) {

            render view: "/url/showUrl", model: [url: url, listTotal: listTotal]
        } else {


            flash.message = "please insert the url"
        }

    }


    def editUrl() {
        println(params.id)
        Url urlToEdit = Url.findById(params.id as Long)
        render view: "/url/updateUrl", model: [rssName: urlToEdit.rssName, rssUrl: urlToEdit.rssUrl, updatedID: urlToEdit.id]

    }

    def updateUrl(UpdateUrlCO updateUrlCO) {
        if (updateUrlCO.validate()) {
            println(params.Id)
            Url urlToEdit = Url.findById(params.Id as Long)
            println("%%%%%%%%%%%%%%%%%%%%%%%%%%%")
            println("%%%%%%%%%%%%%%%%%%%%%%%%%%%")
            println(updateUrlCO.rssUrl + "       " + updateUrlCO.rssName)
            println("%%%%%%%%%%%%%%%%%%%%%%%%%%")
            println("%%%%%%%%%%%%%%%%%%%%%%%%%%%")

//            urlToEdit.rssUrl=updateUrlCO.rssUrl
//            urlToEdit.rssName=updateUrlCO.rssName
            urlToEdit.save(flush: true, failOnError: true)

            redirect action: "showUrl"
        } else {
            updateUrlCO.errors.each { print it }
            render view: "/url/updateUrl", model: [updateUrlCOErrors: updateUrlCO.errors]
        }
    }
    def homepage(){
        render view: "/landing/homepage"
    }

}


