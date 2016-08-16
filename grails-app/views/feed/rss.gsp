<%--
  Created by IntelliJ IDEA.
  User: abhinav
  Date: 11/8/16
  Time: 8:05 AM
--%>
<rss version="2.0">
    <channel>
        <title>times of india</title>
        <link> http://http://timesofindia.indiatimes.com/ </link>
        <description>times of india</description>

        <g:each in="${posts}" var="post">
            <item>
            <title> ${post.title} </title>
            <link> http://timesofindia.indiatimes.com/${post.link} </link>
            <pubDate>${post.pubDate}</pubDate>
            <description><![CDATA[ ${post.description} ]]></description>
            </item>
        </g:each>
    </channel>
</rss>