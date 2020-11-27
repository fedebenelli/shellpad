# shellpad
shell version of a soundpad, mostly to be toxic in games.

## Dependencies
* `pulseaudio`
* `ffmpeg`

## Usage
You should have your sound files located in `~/.local/share/shellpad/sounds`,
each one starting with a unique number, then run the command `shellpad <number>` to run it.

It's recommended to bind the commands to some key handler program, like `sxhkd`.

## How it works
This script takes advantaje of the `pipe-source` module from `pulseaudio`,
which generates a virtual audio source that redirects the audio input that it takes.

1- First it sets some variables that you could modify:
	- `DEFAULT\_MIC`: The original microphone that you use.
	- `VIRTUAL\_MIC`: Location of where the virtual mic will be located.
	- `SOUNDS`: Directory where you keep all the sound files.
	- `PIPE\_FILE`: File that contains the pipe module id.
	- `LOOP\_FILE`: File that contains the loopback module id.
	- `SOUND\_FILE`: Chosen sound file.
2- Checks if the process is already running and unloads the old modules if that's the case.
3- Loads the modules to be used and saves their ids.
4- Plays the sound.
5- Unloads the modules.
