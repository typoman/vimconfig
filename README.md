This is notes for using the vim with the configurations inside this repo. Also this includes notes about how to use vim with this configurations.
# Building vim from the source on OS X (High Sierra):
1. Check if `make` is installed in terminal, If make is not installed, A window pops up instructing you to install the developer tools:
```
make --version
```
2. Download from git:
```
git clone https://github.com/vim/vim
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
6. Install ack:
```
brew install ack
```

# Installing using the Homebrew:
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

# Install this configuration:
```
cd ~
git clone https://github.com/typoman/vimconfig
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
After running the above commands, updating the repo can be achieved using `\gr` shortcut inside the vim. Of course you need to change the URL if you're copying this repo for yourself.

# Keyboard shortcuts:
Vim is a modal editor. It operates in three different main modes: 'Normal' which is for editing the text using commands, 'Insert' which is for inserting or typing text and 'Visual' which is for selecting text. If memorized well this guarantees more efficient keystrokes and less hand movements while editing text.

## Main shortcuts:
`Esc` go to normal mode\
`i`   go to insert mode\
`a`   go to insert mode and put cursor after the character\
`v`   go to visual mode (select characters)\
`V`   go to visual line mode (select lines)

## Normal/Visual Mode shortcuts:
### Navigation
`h`   move cursor to the left\
`j`   move cursor down\
`k`   move cursor up\
`l`   move cursor right\
`}` go to next paragraph\
`{` go to previous paragraph\
`G` go to end of the file\
`gg`  go to first character in the file\
`n`   go to next match term in search\
`N`   go to previous match\
`w`   go to start of the next word\
`e`   go to end of the next word\
`b`   go to previous word\
`[s` go to previous bad spelling\
`''` go to previous cursor position, or you can use ``` `` ``` \
`fa` find the next character 'a' on the current line, use ';' to move to next one\
`ta` find the previous character 'a' on the current line\
`/`   search the file (including regular expressions)\
`42gg` go to line 42\
### Editing Text
`cw` delete the word and go to insert mode\
`.` repeat last sequence of commands\
`D` cut characters from cursor until end of the line\
`x` delete the character under the cursor\
`s` delete the character under the cursor and go to insert mode\
`o` create a new line after current line and go to insert mode\
`Vx` delete the line\
`dd` cut the current line and copy it\
`<space>a`  match all the words under cursor\
`y` yank selection (copy)\
`yy` yank the line\
`ysiw<t>` adds a \<t\> around the current word, \<t\> could be anything\
`ds'` cut the character ' surrounding the word under the cursor\
`ci'` change the text inside the quotes\
`1z=` fix the spelling under the cursor\
`zg` learn spelling of the word under cursor\
`da)` cut all the text inside the parantheses, same goes for brackets or braces\
`ct` change the text enclosed by the tag (e.g: html, xml)\
`di>` cut the tag info\
`cii` change the indentation scope (delete the indentation scope and go to insert mode)\
`dii` cut the indentation scope\
`vii` select the indentation scope, adding more ii increases the indentation level\
`~` swap case, can be combined with other motions (e.g: `g~iw` will swap case for the current word)\
`u` make the selection lowercase\
`U` make the selection uppercase\
### Handling files
`<space>s` save the file\
`<space>cc` close the file without saving\
`<space>c` close the file\window\
`<space>re` show most recent opened files\
`<space>n` new untitled file\
`:e fileName` edit filename. You can use <tab> for auto completion\
`ZZ` save and close\
`tab` switch between opened files (buffers)\
### Coding
`<space>r`  run in python\
`<space>rf` run in Robofont\
`>` increase indentation\
`<` decrease indentation\

