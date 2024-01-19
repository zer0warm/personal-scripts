$feed = Invoke-RestMethod -Uri "https://myanimelist.net/rss/news.xml"
$feed |
  Format-Table -Property @{name="#";expression={$feed.IndexOf($_)+1}}, Title, pubDate
