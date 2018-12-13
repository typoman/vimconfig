This is notes for using the vim with the configurations inside this repo. Also this includes notes about how to use vim with this configurations.
# What is Vim:
https://github.com/mhinz/vim-galore

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
mkdir .vim
cd .vim
git clone https://github.com/typoman/vimconfig
```
Install fzf:
```
brew install fzf
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
After running the above commands, updating the repo can be achieved using `<space>gr` shortcut inside the vim. Of course you need to change the URL if you're copying this repo for yourself.

# Better keyboard layout for Vim
1. Change Caps lock to <Esc> in `System Preferences> Keyboard> Modifier keys`.
2. Install Karabiner-Elements and add the following rule in the `Complex Modifications`:
`Change caps-lock to control if pressed with other keys, to escape if pressed alone`

# Keyboard shortcuts:
Vim is a modal editor. It operates in three different main modes: 'Normal' which is for editing the text using commands, 'Insert' which is for inserting or typing text and 'Visual' which is for selecting text. If memorized well this guarantees more efficient keystrokes and less hand movements while editing text.

## Main Shortcuts\Commands:
`Esc` go to normal mode\
`i` go to insert mode\
`a` go to insert mode and put cursor after the character\
`v` go to visual mode (select characters)\
`V` go to visual line mode (select lines)
`:map <shorcut combination>` check if a shortcut exist\
`<space>?` fuzzy find shortcuts`

## Normal/Visual Mode shortcuts:

### Navigation
`h` move cursor to the left\
`j` move cursor down\
`k` move cursor up\
`l` move cursor right\
`0` start of the line\
`%` end of the line\
`}` go to next paragraph\
`{` go to previous paragraph\
`G` go to end of the file\
`gg` go to first character in the file\
`/` search the file (including regular expressions)\
`n` go to next match term in search\
`N` go to previous match\
`w` go to start of the next word\
`e` go to end of the next word\
`b` go to previous word\
`[s` go to previous bad spelling\
`''` go to previous cursor position, or you can use ``` `` ``` \
`fa` find the next character 'a' on the current line, use ';' to move to next one\
`ta` find the previous character 'a' on the current line\
`42gg` go to line 42\
`ma` mark the position of cursor and store it in `a`\
`'a` go to the mark position `a`\
`<space>/` fuzzy find the current file (buffer)\

### Selecting
Generally going to visual mode is the selection mode and if you start navigating, the selection is from the position of the cursor before the visual mode until the current position. Although there are more shortcuts:
`+` expand selection region\
`_` shrink selection region\
`<Ctrl-n>` select the next word matching the pattern under cursor/selection\
`vii` select the indentation scope, adding more ii increases the indentation level\

### Editing Text
`cw` delete the word and go to insert mode\
`.` repeat last sequence of commands\
`D` cut characters from cursor until end of the line\
`cc` delete the character untile end of the line and go to insert mode\
`C` delete characters from cursor until end of the line and go ot insert mode\
`x` delete the character under the cursor\
`s` delete the character under the cursor and go to insert mode\
`o` create a new line after current line and go to insert mode\
`Vx` delete the line\
`dd` cut the current line\
`<space>a` match all the words under cursor\
`y` yank selection (copy)\
`yy` yank the line\
`ysiw<t>` adds a \<t\> around the current word, \<t\> could be anything\
`ds'` cut the character ' surrounding the word under the cursor\
`ci'` change the text inside the quotes\
`1z=` fix the spelling under the cursor\
`zg` learn spelling of the word under cursor\
`da)` cut all the text inside the parentheses, same goes for brackets or braces\
`ct` change the text enclosed by the tag (e.g: html, xml)\
`di>` cut the tag info\
`cii` change the indentation scope (delete the indentation scope and go to insert mode)\
`dii` cut the indentation scope\
`~` swap case, can be combined with other motions (e.g: `g~iw` will swap case for the current word)\
`u` make the selection lowercase\
`U` make the selection uppercase\

### Handling files
`<space>s` save the file\
`<space>cc` close the file without saving\
`<space>c` close the file\window\
`<space>re` show most recent opened files\
`<space>b` explore buffers in fuzzy mode\
`<space>n` new untitled file\
`<space>t` Open the NerdTree plugin\
`:e fileName` edit filename. You can use <tab> for auto completion\
`ZZ` save and close\
`tab` go to next tab of opened files (buffers)\
`<shift>tab` go to previous tab of opened files (buffers)\
`:SS` save the current session\
`:SL` load a saved session\

### Coding
`<space>r` run in python\
`<space>rf` run in Robofont\
`>` increase indentation\
`<` decrease indentation\
`<space>gu` undo the git gutter hunk to the last commit\
`]g` go to previous git gutter hunk
`[g` go to next git gutter hunk
