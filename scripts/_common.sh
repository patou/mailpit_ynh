#!/bin/bash

#=================================================
# COMMON VARIABLES AND CUSTOM HELPERS
#=================================================

install_mailpit_binary() {
	mkdir -p "$install_dir"
	ynh_safe_rm "$install_dir/mailpit"
	ynh_setup_source --source_id="main" --dest_dir="$install_dir"

	chmod 750 "$install_dir/mailpit"
	chown -R "$app:$app" "$install_dir"
}
