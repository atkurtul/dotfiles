
all:
	cp .alacritty.yml ~/
	cp .clang-format.txt ~/
	cp .gdbinit ~/
	cp .tmux.conf ~/
	sudo cp dis /usr/local/bin/
	sudo cp ccgen /usr/local/bin/
	mkdir -p ~/.config/nvim
	cp init.vim ~/.config/nvim/

push:
	cp ~/.alacritty.yml ./
	cp ~/.clang-format.txt ./
	cp ~/.gdbinit ./
	cp ~/.tmux.conf ./
	cp ~/.config/nvim/init.vim ./
	cp /usr/local/bin/dis ./
	cp /usr/local/bin/ccgen ./
	git add .
	git commit -m"push"
	git push
