$options = @("Option 1", "Option 2", "Option 3")
$selectedIndex = 0

while ($true) {
  Clear-Host
  for ($i = 0; $i -lt $options.Length; $i++) {
    if ($i -eq $selectedIndex) {
      Write-Host "> $($options[$i])" -ForegroundColor Blue
    } else {
      Write-Host "  $($options[$i])"
    }
  }

  $key = [System.Console]::ReadKey().Key

  if ($key -eq [System.ConsoleKey]::DownArrow) {
    $selectedIndex = ($selectedIndex + 1) % $options.Length
  } elseif ($key -eq [System.ConsoleKey]::UpArrow) {
    $selectedIndex = ($selectedIndex + $options.Length - 1) % $options.Length
  } elseif ($key -eq [System.ConsoleKey]::Enter) {
    break
  }
}

Write-Host "Selected option: $($options[$selectedIndex])"
