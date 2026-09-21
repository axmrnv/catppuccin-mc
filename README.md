<h3 align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/logos/exports/1544x1544_circle.png" width="100" alt="Logo"/><br/>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
	Catppuccin for <a href="https://github.com/MidnightCommander/mc">Midnight Commander</a>
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/misc/transparent.png" height="30" width="0px"/>
</h3>

<p align="center">
	<a href="https://github.com/catppuccin/mc/stargazers"><img src="https://img.shields.io/github/stars/catppuccin/mc?colorA=363a4f&colorB=b7bdf8&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/mc/issues"><img src="https://img.shields.io/github/issues/catppuccin/mc?colorA=363a4f&colorB=f5a97f&style=for-the-badge"></a>
	<a href="https://github.com/catppuccin/mc/contributors"><img src="https://img.shields.io/github/contributors/catppuccin/mc?colorA=363a4f&colorB=a6da95&style=for-the-badge"></a>
</p>

<p align="center">
	<img src="assets/ss.jpg"/>
</p>

## Installation

### Midnight Commander ([MidnightCommander/mc](https://github.com/MidnightCommander/mc))

Download `catppuccin.ini` and the four `catppuccin-FLAVOR.ini` files and place them in the `~/.local/share/mc/skins` directory (you may need to create it first).

**_OR_**

Run the following command in your terminal:

```sh
curl -fsSL https://raw.githubusercontent.com/catppuccin/mc/main/install.sh | sh
```

### Midnight Commander for Windows ([adamyg/mcwin32](https://github.com/adamyg/mcwin32))

Download the four `catppuccin-FLAVOR.ini` files and place them in the `~\AppData\Local\Midnight Commander\skins` directory (you may need to create it first).

**_OR_**

Run the following command in PowerShell:

```powershell
iwr https://raw.githubusercontent.com/catppuccin/mc/main/install.ps1 | iex
```

## Usage

1. Launch Midnight Commander;
2. Choose the skin: `[F9]` > `[O]ptions` > `[A]ppearance`.
3. Save your setup: `[F9]` > `[O]ptions` > `[S]ave Setup`.

**_OR_**

1. Close all running instances of Midnight Commander.

2. Open the file:

   - `~/.config/mc/ini` for Midnight Commander;
   - `~\AppData\Roaming\Midnight Commander\ini` for Midnight Commander on Windows.

3. Set the value of the `skin` setting in the `[Midnight-Commander]` section to:

   - `catppuccin`, or
   - `catppuccin-frappe`, or
   - `catppuccin-latte`, or
   - `catppuccin-macchiato`, or
   - `catppuccin-mocha`.

4. Save the file and launch Midnight Commander.

## 🙋 FAQ

- Q: **_"What's the difference between `catppuccin.ini` and the `catppuccin-FLAVOR.ini` files?"_**

> A: They work differently.
>
> - `catppuccin.ini` uses terminal colors. This means you need to have a Catppuccin theme (color
>   scheme) installed in your terminal app. When you change colors in your terminal, this affects
>   Midnight Commander. The Midnight Commander skin is synchronized with the terminal colors. It
>   works well in Midnight Commander on macOS, BSD and Linux, including WSL. This approach does not
>   work in Midnight Commander for Windows.
> - `catppuccin-FLAVOR.ini` files define colors independently. You don't need to have a Catppuccin
>   color scheme installed in your terminal. You can have different themes or Catppuccin flavors
>   in your terminal and Midnight Commander. Changing your terminal’s color scheme does not affect
>   Midnight Commander. This approach works in both the original Midnight Commander and Midnight
>   Commander for Windows.

- Q: **_Unable to use skin with true colors support: Set COLORTERM=truecolor if your terminal
  really supports true colors._**

> A: `catppuccin-FLAVOR.ini` themes require true color support. You may encounter this error in
> WSL. Execute `export COLORTERM=truecolor`. You may want to add it to your `~/.bashrc` or
> `~/.zshrc` shell configuration file so that it applies to future shell sessions. Otherwise, you
> can use `catppuccin.ini`, as it does not require true color support.

## 💝 Thanks to

- [Adal Zanabria](https://github.com/AdalZanabria)

&nbsp;

<p align="center">
	<img src="https://raw.githubusercontent.com/catppuccin/catppuccin/main/assets/footers/gray0_ctp_on_line.svg?sanitize=true" />
</p>

<p align="center">
	Copyright &copy; 2021-present <a href="https://github.com/catppuccin" target="_blank">Catppuccin Org</a>
</p>

<p align="center">
	<a href="https://github.com/catppuccin/catppuccin/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=d9e0ee&colorA=363a4f&colorB=b7bdf8"/></a>
</p>
