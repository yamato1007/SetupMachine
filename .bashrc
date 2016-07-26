alias ll='ls -la'
alias rmdir='rm -r'
alias findfile='find . -type f -name "*" | xargs grep'

if [ `uname` = "Linux" ]; then
    alias open='xdg-open'
fi
