This is notes for using the vim with the configurations inside this repo. Also this includes notes about how to use vim with this configurations.
# Building vim from the source on OSX (High Sierra):
1. Check if 'brew' is installed in terminal, otherwise install Homebrew using:\
'ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)'\
2. Check if 'make' is installed in terminal:\
'make --version'\
\
# Backup this configuration to the current repo:
'cd ~/.vim
git init
git add *
git commit -am "New changes to the configurations"
git remote add origin https://github.com/typoman/vimconfig.git
git push origin master'

# Keyboard shortcuts:
## Main shortcuts:
Esc go to normal mode
i   go to insert mode
v   go to visual mode (select characters)
V   go to visual line mode (select lines)
h   move cursor to the left
j   move cursor down
k   move cursor up
l   move cursor right

## Normal/Visual Mode shortcuts:
cw delete the word and go to insert mode
D delete characters from cursor until end of the line
o create a new line after current line and go to insert mode
:w save the file
:q! close the file without saving
ZZ close the window/save and close
\re show most recent opened files
tab switch between opened files (buffers)
dd  delete the current line and copy it
G go to end of the file
gg  go to first character in the file
\r  run in python
\rf run in Robofont
/   search the file (including regular expressions)
n   go to next match term in search
N   go to previous match
w   go to start of the next word
e   go to end of the next word
b   go to previous word
\a  match all the words under cursor
y   yank (copy)

