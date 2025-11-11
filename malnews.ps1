$feed = Invoke-RestMethod -Uri "https://myanimelist.net/rss/news.xml"
$feed |
    Format-Table -Property @{
        Name = "#"
        Expression = {$feed.IndexOf($_)+1}
    }, @{
	Name = "Published"
	Expression = {(Get-Date $_.pubDate -Format "yyyy-MM-dd HH:mm:ss")}
    },
    @{
	Name = "Title"
	Expression = {$_.Title}
    }
