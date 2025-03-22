$feed = Invoke-RestMethod -Uri "https://myanimelist.net/rss/news.xml"
$feed |
    Format-Table -Property @{
        Name = "#"
        Expression = {$feed.IndexOf($_)+1}
    }, @{
	Name = "Title"
	Expression = {$_.Title}
    }, @{
        Name = "Published"
        Expression = {(Get-Date $_.pubDate -Format "ddd, dd-MMM-yy HH:mm:ss")}
    }
