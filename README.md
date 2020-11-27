# shellpad
shell version of a soundpad, mostly to be toxic in games.

## Dependencies
* `pulseaudio`
* `ffmpeg`

## Instalation
As hard as `make install`

## Usage
You should have your sound files located in `~/.local/share/shellpad/sounds`, some files are there already as examples
each one starting with a unique number, then run the command `shellpad <number>` to run it.

It's recommended to bind the commands to some key handler program, like `sxhkd`.

## How it works
This script takes advantaje of the `pipe-source` module from `pulseaudio`,
which generates a virtual audio source that redirects the audio input that it takes.

1. First it sets some variables that you could modify:
	- `DEFAULT_MIC`: The original microphone that you use.
	- `VIRTUAL_MIC`: Location of where the virtual mic will be located.
	- `SOUNDS`: Directory where you keep all the sound files.
	- `PIPE_FILE`: File that contains the pipe module id.
	- `LOOP_FILE`: File that contains the loopback module id.
	- `SOUND_FILE`: Chosen sound file.
	
1. Checks if the process is already running and unloads the old modules if that's the case.
1. Loads the modules to be used and saves their ids.
1. Plays the sound.
1. Unloads the modules.

