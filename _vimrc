syntax	on
set		ruler
set		number

"  This is first option that disable bell in shell on Windows
set		vb t_vb=
set		wildmenu
set		hlsearch
set		tabstop=3
set		incsearch
set		autoindent
set		cursorline
set		shiftwidth=3
set		cursorcolumn

"  This is second option needed to disable bell in shell on Windows
set		noerrorbells
set		softtabstop=3
set		relativenumber
set		shell=powershell
set		shellcmdflag=-command

"  These two options clears CursorColumn default color and sets it to the same as CursorLine
hi		clear CursorColumn
hi		link CursorColumn CursorLine

"  You can use this config on any nix system just replace _vimrc to .vimrc
