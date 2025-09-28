# Detect OS
UNAME_S := $(shell uname -s)
ifeq ($(UNAME_S),Linux)
    OS := linux
endif
ifeq ($(UNAME_S),Darwin)
    OS := macos
endif
ifeq ($(OS),Windows_NT)
    OS := windows
endif

# Default target
.PHONY: install
install:
	@echo "Detected OS: $(OS)"
	@$(MAKE) install-$(OS)

# macOS installation using Homebrew
.PHONY: install-macos
install-macos:
	@echo "Installing dependencies for macOS..."
	@command -v brew >/dev/null 2>&1 || { echo "Homebrew not found. Please install Homebrew first: https://brew.sh"; exit 1; }
	# fonts
	brew install font-hack-nerd-font
	# ripgrep
	brew install ripgrep
	# terraform
	brew tap hashicorp/tap
	brew install hashicorp/tap/terraform
	# neovim
	brew install neovim

# Linux installation using package managers
.PHONY: install-linux
install-linux:
	@echo "Installing dependencies for Linux..."
	@if command -v apt-get >/dev/null 2>&1; then \
		echo "Using apt-get (Debian/Ubuntu)"; \
		sudo apt-get update; \
		sudo apt-get install -y ripgrep neovim; \
		# Install Hack Nerd Font
		mkdir -p ~/.local/share/fonts; \
		cd ~/.local/share/fonts && curl -fLo "Hack Regular Nerd Font Complete.ttf" "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf"; \
		fc-cache -fv; \
		# Install Terraform
		wget -O- https://apt.releases.hashicorp.com/gpg | sudo gpg --dearmor -o /usr/share/keyrings/hashicorp-archive-keyring.gpg; \
		echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list; \
		sudo apt-get update && sudo apt-get install terraform; \
	elif command -v yum >/dev/null 2>&1; then \
		echo "Using yum (RHEL/CentOS)"; \
		sudo yum install -y ripgrep neovim; \
		# Install Hack Nerd Font
		mkdir -p ~/.local/share/fonts; \
		cd ~/.local/share/fonts && curl -fLo "Hack Regular Nerd Font Complete.ttf" "https://github.com/ryanoasis/nerd-fonts/raw/master/patched-fonts/Hack/Regular/complete/Hack%20Regular%20Nerd%20Font%20Complete.ttf"; \
		fc-cache -fv; \
		# Install Terraform
		sudo yum install -y yum-utils; \
		sudo yum-config-manager --add-repo https://rpm.releases.hashicorp.com/RHEL/hashicorp.repo; \
		sudo yum -y install terraform; \
	elif command -v pacman >/dev/null 2>&1; then \
		echo "Using pacman (Arch Linux)"; \
		sudo pacman -S --noconfirm ripgrep neovim terraform; \
		# Install Hack Nerd Font
		yay -S --noconfirm nerd-fonts-hack || paru -S --noconfirm nerd-fonts-hack || echo "Please install nerd-fonts-hack manually"; \
	else \
		echo "Unsupported Linux distribution. Please install the following manually:"; \
		echo "- ripgrep"; \
		echo "- neovim"; \
		echo "- terraform"; \
		echo "- Hack Nerd Font"; \
	fi

# Windows installation using Chocolatey and Scoop
.PHONY: install-windows
install-windows:
	@echo "Installing dependencies for Windows..."
	@if command -v choco >/dev/null 2>&1; then \
		echo "Using Chocolatey"; \
		choco install -y ripgrep neovim terraform; \
		choco install -y nerd-fonts-hack; \
	elif command -v scoop >/dev/null 2>&1; then \
		echo "Using Scoop"; \
		scoop install ripgrep neovim terraform; \
		scoop bucket add nerd-fonts; \
		scoop install Hack-NF; \
	else \
		echo "Neither Chocolatey nor Scoop found."; \
		echo "Please install one of the following package managers:"; \
		echo "- Chocolatey: https://chocolatey.org/install"; \
		echo "- Scoop: https://scoop.sh/"; \
		echo ""; \
		echo "Then install the following packages:"; \
		echo "- ripgrep"; \
		echo "- neovim"; \
		echo "- terraform"; \
		echo "- Hack Nerd Font"; \
	fi

# Help target
.PHONY: help
help:
	@echo "Available targets:"
	@echo "  install     - Install dependencies for the detected OS"
	@echo "  install-macos   - Install dependencies for macOS (requires Homebrew)"
	@echo "  install-linux   - Install dependencies for Linux (apt/yum/pacman)"
	@echo "  install-windows - Install dependencies for Windows (Chocolatey/Scoop)"
	@echo "  help        - Show this help message"
