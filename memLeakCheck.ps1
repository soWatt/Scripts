# This can check and list out any processes that are using an excessive amount of memory
# Found this on stack overflow, thank you kindly for the solution.


#Adjust this variable to set how much memory is too much. In megabytes, format for this should be "###MB"  
$memValue = "100MB"

$Processes = get-process | Where-object {$_.WorkingSet -gt $memValue} | Group-Object -Property ProcessName | 
    Format-Table Name, @{n='Mem (KB)';e={'{0:N0}' -f (($_.Group|Measure-Object WorkingSet64 -Sum).Sum / 1KB)};a='right'} -AutoSize


#Logic to handle if there are no processes with high memory usage

if ($Processes) 
{
	write-host "These processes are consuming too much memory base"
	$Processes
}
else { write-host "No processes are consuming too much memory" }
