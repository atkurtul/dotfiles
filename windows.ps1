$env:SCOOP='D:\Scoop';
[Environment]::SetEnvironmentVariable('SCOOP', $env:SCOOP, 'User');
iwr -useb get.scoop.sh | iex;


$packages= @("perl","sed","python","ruby","go","nodejs","nasm","make","gawk") + @("coreutils", "sudo", "grep", "which", "neovim", "unzip", "time")

$packages | %{scoop install $_};

#

