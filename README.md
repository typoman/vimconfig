This is notes for using the vim with the configurations inside this repo. Also this includes notes about how to use vim with this configurations.
# What is Vim:
https://github.com/mhinz/vim-galore

# Building vim from the source on OS X (High Sierra):
1. Check if `make` is installed in terminal, If make is not installed, A window
   pops up instructing you to install the developer tools:
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
After running the above commands, updating the repo can be achieved using
`<space>gr` shortcut inside the vim. Of course you need to change the URL if
you're copying this repo for yourself.

# Better keyboard layout for Vim
1. Change Caps lock to <Esc> in `System Preferences> Keyboard> Modifier keys`.
2. Install Karabiner-Elements and add the following rule in the `Complex Modifications`:\
`Change caps-lock to control if pressed with other keys, to escape if pressed alone`

# Make terminal more snappy
Terminal:
```
defaults write -g InitialKeyRepeat -int 10 # normal minimum is 15 (225 ms)
defaults write -g KeyRepeat -int 1 # normal minimum is 2 (30 ms)
```
Then restart OS X.

# Keyboard shortcuts:
Vim is a modal editor. It operates in three different main modes: `Normal` which
is for editing the text using commands, `Insert` which is for inserting or
typing text and `Visual`which is for selecting text. If shortcuts are memorized
well this guarantees more efficient keystrokes and less hand movements while
editing text. I have changed default Vim shortcuts to suit my configuration
which is also dependent on the plugins I've installed.

## Guide and Help
- `<space>h` Fuzzy search help tags
- `<ctrl>]` jump to the topic surrounded by `|`

## Main Shortcuts\Commands:
- `Esc` go to normal mode
- `i` insert mode
- `a` insert mode and put cursor after the character
- `v` visual mode (select characters)
- `V` visual line mode (select lines)
- `:map <shorcut combination>` check if a shortcut exist
- `<space>?` fuzzy find shortcuts`
- `:q` exit vim
- `<space>vr` update the configuration form the vimrc file
- `<space>gr` update the git repo and this readme
- `:PlugClean` clean removed plugins from vimrc
- `:PlugUpdate` update the plugins added to the vimrc
- `:PlugInstall` install the plugins added to the vimrc
- `<space>ss` show the syntax highlighting group name for the character

## Normal/Visual Mode shortcuts:

## Navigation
Most of the keys are meant for Normal mode but most likely they work for Visual
mode too.

- `h` move cursor to the left
- `j` cursor down
- `k` cursor up
- `l` cursor right
- `H` start of the line
- `J` end of the line
- `}` next paragraph
- `{` previous paragraph
- `G` end of the file
- `gg` first character in the file
- `g;` prvious editing position
- `g,` next editing position
- `/` easy motion fuzzy search the file, after hitting enter type the
  highlighted character on the view to jump to that position (including regular
  expressions)
- ``*`` go to next occurence of the word under cursor `#` for previous
- `<space>ag` fuzzy find the word under cursor in the current project files
  (uses Ag aka the sliver searcher)
- `n` next match term in search
- `N` previous match
- `w` start of the next word
- `e` end of the next word
- `b` previous word
- `%` go to the other mathes of the following pair [],{},()
- `[s` previous bad spelling
- `''` previous cursor position, or you can use ``` `` ``` 
- `fa` find the next character 'a' on the current line using easy motion, then
  type the highlighted character to jump, use ';' to move to next one
- `ta` find the previous character 'a' on the current line
- `42gg` line 42
- `ma` mark the position of cursor and store it in `a`
- `'a` jump to the mark position `a`
- `<space>/` fuzzy find the current file (buffer)
- `<space>j` show list of previous cursor position which can be selected by
  typing a number (includes prevous position in all the files too)
- `<space>w` toggle wrap lines
- `<Ctrl-I>` and <Ctrl-O> jumping to previous and next cursor positions
- `<Ctrl-a>` select all
- `[-` Move to *previous* line of *lesser* indent than the current line.
- `[+` Move to *previous* line of *greater* indent than the current line.
- `[=` Move to *previous* line of *same* indent as the current line that is
  separated from the current line by lines of different indents.
- `]-` Move to *next* line of *lesser* indent than the current line.
- `]+` Move to *next* line of *greater* indent than the current line.
- `]=` Move to *next* line of *same* indent as the current line that is
  separated from the current line by lines of different indents.

### Selecting
Generally going to visual mode is the selection mode and if you start
navigating, the selection is from the position of the cursor before the visual
mode until the current position. Although there are more shortcuts:

- `+` expand selection region
- `_` shrink selection region
- `vii` select the indentation scope, adding more ii increases the indentation
  level
- `o` Go to Other end of highlighted text

#### Multiple cursor mode
- `<Ctrl-n>` select the next word matching the pattern under cursor/selection
- `<Ctrl-j>` or `<Ctrl-k>` add one cursor up or down
- `{` or `}` go to previous cursor or next one
- `[` or `]` add next match or previous match
- `q` remove next match
- `\a` select all the matches of the selection/word under cursor
- `<tab>` switch between multi visual/normal mode
- `<Esc>` exit multiple cursors

### Editing Text
- `<Ctrl>h` backspace
- `cw` delete the word and go to insert mode
- `.` repeat last sequence of commands
- `D` cut characters from cursor until end of the line
- `cc` delete the character until end of the line and go to insert mode
- `C` delete characters from cursor until end of the line and go to insert mode
- `x` delete the character under the cursor
- `s` delete the character under the cursor and go to insert mode
- `O` create a new line above the cursor
- `o` create a new line below the cursor
- `Vx` delete the line
- `dd` cut the current line
- `<space>a` match all the words under cursor
- `y` yank selection (copy)
- `yy` yank the line
- `Y` yank from the cursor until end of the line
- `ysiw<t>` adds a \<t\> around the current word, \<t\> could be anything
- `ds'` cut the character ' surrounding the word under the cursor
- `ci'` change the text inside the quotes
- `1z=` fix the spelling under the cursor
- `zg` learn spelling of the word under cursor
- `da)` cut all the text inside and including the parentheses, same goes for
  brackets or braces
- `ysiw<tag>` yank surrounding inner word with <tag> (add <tag> to the word
  boundaries)
- `ct` change the text enclosed by the tag (e.g: html, xml)
- `di>` cut the tag info
- `di}` cut everything inside the curly braces
- `cii` change the indentation scope (delete the indentation scope and go to
  insert mode)
- `dii` cut the indentation scope
- `~` swap case, can be combined with other motions (e.g: `g~iw` will swap case
  for the current word)
- `<ctrl>j` or `<ctrl>k` move selection or current line up or down (it doesn't
  work in multiple cursor mode)
- `gq}` auto wrap the paragraph, `gqq` autowrap the current line.

### Handling files
Use `vimdiff f1 f2` in bash to see the difference between file `f1` and `f2`.
 
- `<space>s` save the file
- `<space>cc` close the file without saving
- `<space>c` close the file\window
- `<space>re` show most recent opened files
- `<space>b` explore buffers in fuzzy mode
- `<space>n` new untitled file
- `<space>t` Open the NerdTree plugin
- `:e fileName` edit filename. You can use <tab> for auto completion
- `:w fileName` write (save) the current file as the filename
- `ZZ` save and close
- `tab` go to next tab of opened files (buffers)
- `<shift>tab` go to previous tab of opened files (buffers)
- `:SS` save the current session
- `:SL` load a saved session

### Windows
First hit `<ctrl>w` and then any of these keys for the following action:
- `<ctrl>w` twice to cycle through the windows
- `h` or `j` or `k` or `l` for switching to another window
- `v` split the current tab vertically
- `<shift>j` swap the direction of split to horizontal direction

### Coding
- `<space>r` run in python
- `<space>rf` run in Robofont
- `>` increase indentation
- `<` decrease indentation
- `<space>gu` undo the git gutter hunk to the last commit
- `]g` go to previous git gutter hunk
- `[g` go to next git gutter hunk
- `gd` go to definition of the object under the cursor
- `zi` toggle folding
- `zo` open fold
- `zc` close fold

### other
- '<space>vr' reload vimrc file
