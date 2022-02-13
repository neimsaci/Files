"  Enabling FASM syntax highliting for files that end with .asm and .inc
autocmd       BufNew,BufRead *.asm set ft=fasm
autocmd       BufNew,BufRead *.inc set ft=fasm
syntax       on
set       ruler
set       number

"  This is first option that disable bell in shell on Windows
set		    vb t_vb=
set       wildmenu
set       hlsearch
set	      tabstop=3
set       incsearch
set       autoindent
set       cursorline
set       shiftwidth=3
set       cursorcolumn

"  This is second option needed to disable bell in shell on Windows
set        noerrorbells

set        softtabstop=3
set        relativenumber
set        shell=powershell

"  This option clears CursorColumn default color
hi         clear CursorColumn

set        shellcmdflag=-command

"  This options sets CursorColumn color same as CursorLine
hi         link CursorColumn CursorLine

"  You can use this config on any nix system just replace _vimrc to .vimrc, remove shell, shellcmdflag and bell options.
