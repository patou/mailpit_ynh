#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

install_mailpit_binary() {
	local arch url sha256 tmp_dir archive

	arch="$(dpkg --print-architecture)"

	case "$arch" in
		amd64)
			url="https://github.com/axllent/mailpit/releases/download/v1.30.3/mailpit-linux-amd64.tar.gz"
			sha256="6c7af993fb4054def4adfc7c85b40f9570fd6172eaccd0221c4969f2cc7a6294"
			;;
		i386)
			url="https://github.com/axllent/mailpit/releases/download/v1.30.3/mailpit-linux-386.tar.gz"
			sha256="f2109e274f5f9a531febf20ae003b7ef31954b2f216bb0c07f57f8408c19368f"
			;;
		armhf)
			url="https://github.com/axllent/mailpit/releases/download/v1.30.3/mailpit-linux-arm.tar.gz"
			sha256="7227696c5fa25ffa3fb5e0aa036146f5b3b01554d5a9ef29f5af97b6f7d2f943"
			;;
		arm64)
			url="https://github.com/axllent/mailpit/releases/download/v1.30.3/mailpit-linux-arm64.tar.gz"
			sha256="4211e158fcf46862b9b15bacd1fb10253a1865617ed5f38f27cbec230f89ec84"
			;;
		*)
			ynh_die --message="Unsupported architecture: $arch"
			;;
	esac

	tmp_dir="$(mktemp -d)"
	archive="$tmp_dir/mailpit.tar.gz"

	ynh_script_progression "Downloading Mailpit binary for ${arch}..."
	curl -fL "$url" -o "$archive"
	echo "${sha256}  ${archive}" | sha256sum --check --status || ynh_die --message="Checksum mismatch for Mailpit binary"

	mkdir -p "$install_dir"
	ynh_safe_rm "$install_dir/mailpit"
	tar -xzf "$archive" -C "$install_dir"

	chmod 750 "$install_dir/mailpit"
	chown -R "$app:$app" "$install_dir"

	rm -rf "$tmp_dir"
}
