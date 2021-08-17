
alias cls clear
alias zf  zfs list -t all
alias zp  zpool list
alias df  df -H
alias h		history 25
alias j		jobs -l
alias la	ls -a
alias lf	ls -FA
alias ll	ls -lA
alias ping  ping -nc12

# read(2) of directories may not be desirable by default, as this will provoke
# EISDIR errors from each directory encountered.
# alias grep	grep -d skip

# A righteous umask
umask 22

set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/bin)

setenv	EDITOR	  vim
setenv  TERM      xterm-256color
setenv  BLOCKSIZE M
setenv	PAGER     less
# For colorful manpages )) found on stackoverflow
setenv  LESS_TERMCAP_mb `echotc md; echotc AF 1`
setenv  LESS_TERMCAP_md `echotc md; echotc AF 1`
setenv  LESS_TERMCAP_me `echotc me`
setenv  LESS_TERMCAP_se `echotc me`
setenv  LESS_TERMCAP_so `echotc md; echotc AF 3; echotc AB 4`
setenv  LESS_TERMCAP_ue `echotc me`
setenv  LESS_TERMCAP_us `echotc md; echotc AF 2`

set autolist
set color
set colorcat
set nobeep

if ($?prompt) then
	set filec
	set history = 1000
	set savehist = (1000 merge)
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif

# Found this on dotshare.it
set rgb_restore   = '%{^[[00m%}'
set rgb_black     = '%{^[[00;30m%}'
set rgb_firebrick = '%{^[[00;31m%}'
set rgb_red       = '%{^[[01;31m%}'
set rgb_forest    = '%{^[[00;32m%}'
set rgb_green     = '%{^[[01;32m%}'
set rgb_brown     = '%{^[[00;33m%}'
set rgb_yellow    = '%{^[[01;33m%}'
set rgb_navy      = '%{^[[00;34m%}'
set rgb_blue      = '%{^[[01;34m%}'
set rgb_purple    = '%{^[[00;35m%}'
set rgb_magenta   = '%{^[[01;35m%}'
set rgb_cadet     = '%{^[[00;36m%}'
set rgb_cyan      = '%{^[[01;36m%}'
set rgb_gray      = '%{^[[00;37m%}'
set rgb_white     = '%{^[[01;37m%}'

set rgb_std       = "${rgb_white}"

limit coredumpsize 0

set prompt = '[%B%m%b] %B%~%b%# '
