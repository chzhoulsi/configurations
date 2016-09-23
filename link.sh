file_name=`basename "$0"`
current_path=`dirname "$0"`
echo "file_name=$file_name current_path=$current_path"
rm ~/.vimrc
rm ~/.ssh
rm ~/.tmux.conf
rm ~/.vim -rf
ln -s $current_path/.vimrc ~/
ln -s $current_path/.ssh ~/
ln -s $current_path/.tmux.conf ~/
ln -s $current_path/.vim ~/
