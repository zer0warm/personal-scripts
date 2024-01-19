param([string] $word)

$defs = (Invoke-RestMethod -Uri "https://api.urbandictionary.com/v0/define?term=$word").list[0..2]
$defs |
  Format-Table -Wrap -Property @{name="#";expression={$defs.IndexOf($_)+1}}, definition
