{ ... }:

{
	nix.enable = false;
	nixpkgs.config.allowUnfree = true;
	nixpkgs.hostPlatform = "aarch64-darwin";
	system.primaryUser = "robertlandrum";
	users.users.robertlandrum = {
		home = "/Users/robertlandrum";
	};
	system.stateVersion = 6;

	system.defaults = {
		NSGlobalDomain = {
			AppleInterfaceStyle = "Dark";
			KeyRepeat = 2;
			InitialKeyRepeat = 15;
			_HIHideMenuBar = false;
			AppleShowAllExtensions = true;

		};
		dock.autohide = false;
		finder.FXPreferredViewStyle = "Nlsv";
		finder.CreateDesktop = true;
		trackpad.Clicking = true;
	};
	nix-homebrew = {
		enable = true;
		user = "robertlandrum";
		autoMigrate = true;
	};
	homebrew = {
		enable = true;
		onActivation.cleanup = "zap";
		onActivation.autoUpdate = true;
		onActivation.extraFlags = [ "--force" ];
		brews = [
			"python@3.12"
			"uv"
			"herdr"
			"opencode"
			"pi-coding-agent"
		];
		casks = [
			"wezterm"
			"claude-code"
			"codex"
			"opensuperwhisper"
		];
	};

}
