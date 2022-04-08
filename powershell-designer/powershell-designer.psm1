
function powershell-designer($a) {
	function path($a) {
		return Split-Path -Path $a
	}
	function chr($a) {
		$a = $a | Out-String
    return [char][byte]$a
	}

	if ((get-host).version.major -eq 7) {
		start-process -filepath pwsh.exe -argumentlist '-ep bypass','-windowstyle hidden','-sta',"-file $(chr 34)$(path $(Get-Module -ListAvailable PowerShell-Designer).path)\powershell-designer.ps1$(chr 34)"
	}
	else {
		start-process -filepath powershell.exe -argumentlist '-ep bypass','-windowstyle hidden','-sta',"-file $(chr 34)$(path $(Get-Module -ListAvailable PowerShell-Designer).path)\powershell-designer.ps1$(chr 34)"
	}
}