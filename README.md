# env-config

Configuration for my working staging. I am used to working on Mac, and sometimes, if neccessary, employing Linux when deploying. Even if both are Unix-like system, they are still different each other. In order to reserve native Linux environment and be compatible in general Linux machine as possible as avoiding troubleshooting. I've separated the Linux configuration from Mac. The table below is my 

<table>
	<thead>
		<tr>
			<th>Platform</td>
			<th>Linux (Ubuntu)</td>
			<th>Mac OSX</td>
		</tr>
	</thead>
	<tbody style='text-align:center'>
		<tr>
			<td>Emulator</td>
			<td>Built-in</td>
			<td>iTerm2</td>
		</tr>
		<tr>
			<td>Shell</td>
			<td>bash</td>
			<td>oh-my-zsh</td>
		</tr>
		<tr>
			<td>Multiplexer</td>
			<td colspan='2'>tmux</td>
		</tr>
		<tr>
			<td>Editor</td>
			<td colspan='2'>vim</td>
		</tr>
		<tr>
			<td>VCS</td>
			<td colspan='2'>git</td>
		</tr>
	</tbody>
</table>

## Linux

Only applying the .bashrc

	$ cp .bashrc ~/

## Mac

Install oh-my-zsh

	$ pip install powerline-status
	$ brew install zsh
	$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
	$ cp .zshrc ~/
	
Load the iTerm2 setting profile

1. Go Preference > General
2. Check "Load preference from a custom folder or URL" and give the repo path at the bottom
3. Also, Check "Save changes to folder when iTerm2 quits"

## Common part

### Vim

