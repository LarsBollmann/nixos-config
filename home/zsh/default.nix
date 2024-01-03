{
  pkgs,
  config,
  zsh-autosuggestions,
  ...
}: {

  home.file.".zshrc".source = ./.zshrc;
  home.file.".oh-my-zsh/custom/plugins/zsh-autosuggestions" = {
	source = "${zsh-autosuggestions}";
	recursive = true;
        executable = true;
  } ;
}
