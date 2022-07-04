Initialize-Disk -Number 2
New-Partition -DiskNumber 2 -UseMaximumSize -DriveLetter D
Format-Volume -DriveLetter D -FileSystem NTFS -NewFileSystemLabel Data01 -Confirm:$false

exit 0