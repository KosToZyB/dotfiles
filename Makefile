.PHONY: all
all:
	mkdir -p ~/.config/nvim

	[ -f ~/.config/nvim/init.vim ] || ln -s $(PWD)/vimrc ~/.config/nvim/init.vim
	[ -f ~/.vimrc ] || ln -s $(PWD)/vimrc ~/.vimrc

clean:
	rm -f ~/.vimrc 
	rm -f ~/.config/nvim/init.vim