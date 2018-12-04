This is notes for using the vim with the configurations inside this repo. Also this includes notes about how to use vim with this configurations.
# Building vim from the source on OS X (High Sierra):
1. Check if `make` is installed in terminal:
```
make --version
```
   If make is not installed, A window pops up instructing you to install the developer tools.\
2. Download from git:
```
https://github.com/vim/vim
```
3. Configure:
```
cd vim
cd src
./configure --with-features=huge --enable-python3interp=yes
```
5. Build and install:
```
make; make install
```

# Installing uisng the Homebrew:
1. Check if `brew` is installed in terminal, otherwise install Homebrew using:
```
ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)
```
2. Remove previous vim and install:
```
brew remove vim
brew cleanup
brew install vim --with-python3
```

# Backup this configuration to the current repo:
```
cd ~/.vim
git init # only needed for the first time
git add *
git commit -am "New changes to the configurations"
git remote add origin https://github.com/typoman/vimconfig.git # only needed for the first time
git push origin master
```
After running the above commands, updating the repo can be achieved using `\gr` shortcut inside the vim. Of course you need to change the url if you're copying this repo for yourself.
# Keyboard shortcuts:
Vim is a modal editor. It operates in three different main modes: 'Normal' which is for editing the text using commands, 'Insert' which is for inserting or typing text and 'Visual' which is for selecting text. If memorized well this garantees more efficient keystrokes and less hand movements while editing text.

## Main shortcuts:
`Esc` go to normal mode\
`i`   go to insert mode\
`v`   go to visual mode (select characters)\
`V`   go to visual line mode (select lines)\

## Normal/Visual Mode shortcuts:
`h`   move cursor to the left\
`j`   move cursor down\
`k`   move cursor up\
`l`   move cursor right\
`cw` delete the word and go to insert mode\
`D` delete characters from cursor until end of the line\
`o` create a new line after current line and go to insert mode\
`:w` save the file\
`:q!` close the file without saving\
`ZZ` close the window/save and close\
`\re` show most recent opened files\
`tab` switch between opened files (buffers)\
`dd`  delete the current line and copy it\
`G` go to end of the file\
`gg`  go to first character in the file\
`\r`  run in python\
`\rf` run in Robofont\
`/`   search the file (including regular expressions)\
`n`   go to next match term in search\
`N`   go to previous match\
`w`   go to start of the next word\
`e`   go to end of the next word\
`b`   go to previous word\
`\a`  match all the words under cursor
`y`   yank (copy)\
`ysiw<t>` adds a \<t\> around the current word, <t> could be anything\
`ds'` delete the character ' sorrounding the word under the cursor\
