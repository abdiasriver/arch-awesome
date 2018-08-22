#!/bin/bash
set -e

sudo pacman -S mpd ncmpcpp
mkdir ~/.mpd ~/.ncmpcpp
mkdir ~/Musica/playlist
ls -a 
nano .ncmpcpp/config
nano .mpd/mpd.conf
cd .mpd
touch mpd.db mpd.log mpd.pid
cd
sudo killall mpd
mpd
pidof mpd
ncmpcpp

##################nano .mpd/mpd.conf and enter this#############
music_directory "~/Musica/"
playlist_directory "~/Musica/playlist"
db_file "~/.mpd/mpd.db"
log_file "~/.mpd/mpd.log"
pid_file "~/.mpd/mpd.pid"
state_file "~/.mpd/mpdstate"
audio_output {
        type "pulse"
        name "pulse audio"
}
audio_output {
    type                    "fifo"
    name                    "my_fifo"
    path                    "/tmp/mpd.fifo"
    format                  "44100:16:2"
}
 
bind_to_address "127.0.0.1"
port "6601"

########################this on nano .ncmpcpp/config ###########
#% egrep -v '^#' .ncmpcpp/config
mpd_music_dir = "~/Musica/"
#visualizer_in_stereo = "yes
visualizer_fifo_path = "/tmp/mpd.fifo"
visualizer_output_name = "my_fifo"
visualizer_sync_interval = "30"
visualizer_type = "spectrum"
visualizer_look = "◆▋"
message_delay_time = "3"
playlist_shorten_total_times = "yes"
playlist_display_mode = "columns"
browser_display_mode = "columns"
search_engine_display_mode = "columns"
playlist_editor_display_mode = "columns"
autocenter_mode = "yes"
centered_cursor = "yes"
user_interface = "alternative"
follow_now_playing_lyrics = "yes"
locked_screen_width_part = "60"
display_bitrate = "yes"
external_editor = "nano"
use_console_editor = "yes"
header_window_color = "cyan"
volume_color = "red"
state_line_color = "yellow"
state_flags_color = "red"
progressbar_color = "yellow"
statusbar_color = "cyan"
visualizer_color = "red"
mpd_host = "127.0.0.1"
mpd_port = "6601"
mouse_list_scroll_whole_page = "yes"
lines_scrolled = "1"
#ask_before_clearing_main_playlist = "yes"
enable_window_title = "yes"
song_columns_list_format = "(25)[cyan]{a} (40)[]{f}
(30)[red]{b} (7f)[green]{l}"

