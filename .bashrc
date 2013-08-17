#$Id: .bashrc,v 1.1 2008/03/04 11:27:44 wing Exp $
HOSTNAME=`/bin/hostname | /usr/bin/awk -F . '{print toupper($1 "@" $2);}'`
function git_branch {
    ref=$(git symbolic-ref HEAD 2> /dev/null) || return;
    echo "("${ref#refs/heads/}")";
}
PS1="_${HOSTNAME}_[\u]:\w\[\033[1;32m\]\$(git_branch)\[\033[0m\]$";


#PS1='_${HOSTNAME}_[\u]:\w\$';

if [ "$TERM" = "screen" ]; then
  PROMPT_COMMAND='/usr/bin/printf "\033k%s\033\134" `/bin/hostname -s | /usr/bin/tr a-z A-Z` '
fi

export PATH="$HOME/bin:/usr/local/bin:/bin:/usr/bin:\
/usr/games:/usr/X11R6/bin:/sbin:/usr/sbin:/usr/local/sbin:/stand\
:/usr/local/jdk1.1.8/bin"

export EDITOR=vim
export PAGER=less
export LESS='-r'

#LS_COLORS='no=00:fi=00:di=01;45:ln=01;36:pi=40;33:so=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.deb=01;31:*.jpg=01;35:*.gif=01;35:*.bmp=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.mpg=01;37:*.avi=01;37:*.gl=01;37:*.dl=01;37:';
#新增的
LS_COLORS="no=00:fi=00:di=01;36:ln=02;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:"
#新增的
export LS_COLORS

umask 022
#mesg y
ulimit -c 0
alias  ls='gnuls --color=always --show-control-chars';
alias  la='ls -a';
alias  ll='ls -lh';
alias  dir='gnuls --color=always -l --show-control-chars';
alias  telnet='/usr/bin/telnet -8 ';
alias  cl='clear'
FTP_PASSIVE_MODE=NO;	export FTP_PASSIVE_MODE

if [ `whoami` != "root" ] ; then
  CVSROOT=":pserver:`whoami`@cvs.skysoft.com.tw:/home/ncvs"; export CVSROOT
else
  if [ $SUDO_USER ] ; then
    CVSROOT=":pserver:${SUDO_USER}@cvs.skysoft.com.tw:/home/ncvs"; export CVSROOT
  fi
fi

#stty erase ^H

if [ "$TERM" = "xterm" -o "$TERM" = "xterm-color" ]; then
    export TERM=xterm-256color
#PROMPT_COMMAND='echo -ne "\033]0;[$USER]:$PWD\007"';		export PROMPT_COMMAND
#  alias ftp='ftp-xterm'
  alias aaaaaa='aaaaa';
else
  alias aaaaaa='aaaaa';
#
#
fi
#erase key
#tset -Q -e

#for multi screen's bash_history
if test "$WINDOW" != ""
  then export HISTFILE=/home/wing/.bash_history_$WINDOW
fi
