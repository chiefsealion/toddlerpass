Function Gen-Pass
{

$toddler_words = @("Nina","Poppy","Worwies","Mulk","BLUEY","Shnack","MickeyMouse","BINGO","Cwying","Sowwy","WEWE","RERE","Grandnina","Clementime","HEPPACOPPA","Tander","MATER",
"McQueen","Baff","Haffuh","Sillycup","MINNIE","CAWS","Wrastle","Mario","YOSHI","Wigi","Peach","Taytoes","Ticken","MYTALKABOUT","Zevra","Compooter","Finner")

$special_chars = @("!","?",".","@","*","&","%","$","^")

#$toddler_words = Get-Content "C:\perm_scripts\toddler_speak.txt"

#$special_chars = Get-Content "C:\perm_scripts\special_chars.txt"

$first_section = $toddler_words | Get-Random

$second_selection = $special_chars | Get-Random

$third_selection = $toddler_words | Get-Random

$fourth_selection = Get-Random -Maximum 999

$random_pw = $first_section+$second_selection+$third_selection+$fourth_selection

Write-Host $random_pw

Set-Clipboard -Value $random_pw

}
