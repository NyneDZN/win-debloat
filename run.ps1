$AppsToRemove = @(
    "3DBuilder", "bing", "bingfinance", "bingsports", "BingWeather",
    "Clipchamp.Clipchamp", "CommsPhone", "Drawboard PDF", "Facebook",
    "Getstarted", "Microsoft.549981C3F5F10", "Microsoft.Cortana", "Microsoft.GamingApp",
    "Microsoft.GetHelp", "Microsoft.Messaging", "Microsoft.MicrosoftEdge.Stable", "Microsoft.MicrosoftStickyNotes",
    "Microsoft.OutlookForWindows", "Microsoft.PowerAutomateDesktop", "Microsoft.Todos", "Microsoft.Windows.Photos",
    "Microsoft.Xbox", "Microsoft.YourPhone", "MicrosoftCorporationII.QuickAssist", "MicrosoftOfficeHub",
    "Office.OneNote", "OneNote", "people", "SkypeApp", "solit", "Sway",
    "Twitter", "Windows.DevHome", "WindowsAlarms", "WindowsCalculator", "WindowsCamera",
    "windowscommunicationsapps", "WindowsFeedbackHub", "WindowsMaps", "WindowsPhone",
    "WindowsSoundRecorder", "WindowsTerminal", "zune", "Microsoft.Microsoft3DViewer", "Microsoft.MixedReality.Portal",
    "ScreenSketch", "Microsoft.Paint", "MicrosoftCorporationII.MicrosoftFamily", "MicrosoftTeams"
)

foreach ($app in $AppsToRemove) {
    Get-AppxPackage -AllUsers *$app* | Remove-AppxPackage -ErrorAction SilentlyContinue
}
