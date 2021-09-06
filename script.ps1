$content = Get-Content .\websites-kids-block.txt
$newfile = @()
foreach ($line in $content) {
    $newfile += $line
    if ($line.split(" ")[1] -notlike "www.*") {        $newfile += $line.split(" ")[0] + " www." + $line.split(" ")[1]
        
    }
}
$newfile | Out-File -Path blocklist.txt