class UrlMappings {

    static mappings = {
        "/$controller/$action?/$id?(.$format)?" {
            constraints {
                // apply constraints here
            }
        }

        // "/"(view: "/url/showUrl")

        "/"(view:"/landing/homepage")
//        "/"(controller: "url", action: "showUrl")
        //"/"(controller: "feed",action: "rss")
        "500"(view: '/error')
        "500"(view: '/error')
    }
}
