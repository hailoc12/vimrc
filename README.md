# Introduction ?

This vimrc is modified from the awesome https://github.com/amix/vimrc to fit my personal developing style 

## Install 
### For Vim
```
# on macos
bash install_vim_macos.sh

# on linux
bash install_vim_linux.sh
```

### For Neovim
1. Install "For Vim" first
2. Run this command
```
# on macos
bash install_nvim_macos.sh

# on linux
bash install_nvim_linux.sh
```

# Important shortcuts to remember 
### Fix tlib error
move to line 77 and remove --complete=command arguments

### Move between windows
Ctrl + j/h/k/l

### Managing tabs  
<leader>tn : new tab
<leader>to : tab only
<leader>tc : tab close 
<leader>tm : tab move 
<leader>te : new tab with file in current folder

### Managing buffers
<leader>q : quickly open a buffer for scribble 
<leader>o : manage current buffer
<leader>f : recently opened file
<leader>b : search buffer

### Copy Paste
<leader>pp : setlocal paste!

### Working with folder and files
<leader>j: file fuzzy searching 

<leader>nn: open NERD Tree
<leader>nf: open NERD find


<leader>cd: set working dir to current file 

### Fast editing
$1: ()
$2: []
$3: {}
$4: {

}
$q: ''
$e: ""

xdate: 09/03/21 16:01:25

<leader>z: go into Zen mode 


### Syntax/Lint error:
<leader> a

<leader>ss: spell checking

### Syntastic checking
<leader> ss: systastic checking
<leader> se: display errors 
<leader> sc: close display errors 
