file_name=`basename "$0"`
current_path=$(readlink -f $file_name)

ln -s $current_path/.vimrc ~/
ln -s $current_path/.ssh ~/
ln -s $current_path/.tmux.conf ~/
ln -s $current_path/.vim ~/
