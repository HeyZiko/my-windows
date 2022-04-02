function Test-AppExists
{
  Param(
    [string]$appName
  )

  Write-White "PREREQUISITE: is $appName installed and available?"
  Write-White "Here's what I found:"
  Write-Cyan "$((& which $appName).Source)"
  Write-White "Does it look right?"
  if($(choose "yn" -showOptions) -eq 'n') {
    Write-Red "You've identified that the pre-requisite is wrong. Consider re-running or reviewing earlier scripts."
    exit
  }
}
