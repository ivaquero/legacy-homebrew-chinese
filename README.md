# Homebrew-Chinese

[![CI](https://github.com/ivaquero/homebrew-chinese/actions/workflows/main.yml/badge.svg)](https://github.com/ivaquero/homebrew-chinese/actions/workflows/main.yml) [![license](https://img.shields.io/github/license/ivaquero/homebrew-chinese.svg)](https://img.shields.io/github/languages/license/homebrew-chinese.svg) [![code-size](https://img.shields.io/github/languages/code-size/ivaquero/homebrew-chinese.svg)](https://img.shields.io/github/languages/code-size/ivaquero/homebrew-chinese.svg) [![repo-size](https://img.shields.io/github/repo-size/ivaquero/homebrew-chinese.svg)](https://img.shields.io/github/repo-size/ivaquero/homebrew-chinese.svg)

一个致力于服务国人的 [Homebrew](https://github.com/Homebrew/brew) 🍺 第三方库

本仓库主要收录以下软件：

- 开源软件的国内镜像
- 国人开发的开源软件（面向国人，未被 Homebrew 官方收录）
- 国产商业软件

## 开始 🏃

### 安装 Homebrew 🍺 🚴

在终端中运行以下命令：

```sh
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap ivaquero/chinese
```

国内源

```sh
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
brew tap ivaquero/chinese
```

更多相关信息，请访问 Homebrew 官方网站 👉 https://brew.sh/ 👈

### 从本仓库安装应用程序 🚅

- 第 1 步：添加此仓库并进行更新，么么哒~ 💋

在终端中运行以下命令：

```sh
brew tap ivaquero/chinese
brew update
```

- 步骤 2：安装应用程序 ✈️

- 通过 `brew search` 命令检查 App 的确切名称：

```sh
brew search <app_name>
```

```markdown
brew cask install <app_name>
```

- For specific installation

```sh
brew install chinese/<app_name>
```

### 其他

- 推荐：添加官方仓库 🚀

```sh
brew tap homebrew/homebrew-cask
brew update
```

- 用于 Homebrew 命令 📖

```sh
brew help
```

## 总结

### GUI 软件

|        App 名         |      Cask 名      |         类型         | 原创 |
| :-------------------: | :---------------: | :------------------: | :--: |
|        PeaZip         |      peazip       |       开源软件       |  √   |
|     Alist-Desktop     |   alist-desktop   | 开源软件（国人开发） |  √   |
|     Alist-Helper      |   alist-helper    | 开源软件（国人开发） |  √   |
|        ChatGPT        |      chatgpt      | 开源软件（国人开发） |  √   |
|      Clash-Verge      |    clash-verge    | 开源软件（国人开发） |  √   |
|     GoldenDict-ng     |   goldendict-ng   | 开源软件（国人开发） |  √   |
|   OpenAI-Translator   | openai-translator | 开源软件（国人开发） |  √   |
|      Pot-Desktop      |    pot-desktop    | 开源软件（国人开发） |  √   |
|    M3U8Downloader     |  m3u8-downloader  | 开源软件（国人开发） |  √   |
|       MessAuto        |     messauto      | 开源软件（国人开发） |  √   |
|     Blender 镜像      |    blender-cn     |     开源软件镜像     |  √   |
|     FreeCAD 镜像      |    freecad-cn     |     开源软件镜像     |  √   |
|     BasicTeX 镜像     |    basictex-cn    |     开源软件镜像     |  √   |
|       GIMP 镜像       |      gimp-cn      |     开源软件镜像     |  √   |
|       IINA 镜像       |      iina-cn      |     开源软件镜像     |  √   |
|     Inkscape 镜像     |    inkscape-cn    |     开源软件镜像     |  √   |
|      Julia 镜像       |     julia-cn      |     开源软件镜像     |  √   |
|   LibreOffice 镜像    |  libreoffice-cn   |     开源软件镜像     |  √   |
|       Lyx 镜像        |      lyx-cn       |     开源软件镜像     |  √   |
|    Mambaforge 镜像    |   mambaforge-cn   |     开源软件镜像     |  √   |
|    Miniforge 镜像     |   miniforge-cn    |     开源软件镜像     |  √   |
|    OBS Studio 镜像    |      obs-cn       |     开源软件镜像     |  √   |
|    Qt Creator 镜像    |   qt-creator-cn   |     开源软件镜像     |  √   |
|    TeXStudio 镜像     |   texstudio-cn    |     开源软件镜像     |  √   |
|       VLC 镜像        |      vlc-cn       |     开源软件镜像     |  √   |
|     VSCodium 镜像     |    vscodium-cn    |     开源软件镜像     |  √   |
|       西语助手        |     eshelper      |     国产商业软件     |  √   |
|     每日法语听力      |      ting-fr      |     国产商业软件     |  √   |
|     每日英语听力      |      ting-en      |     国产商业软件     |  √   |
|     每日西语听力      |      ting-es      |     国产商业软件     |  √   |
|        HapiGo         |      hapogo       |     国产商业软件     |  √   |
|       爱斯助手        |      i4tools      |     国产商业软件     |  √   |
|        易有云         |     linkease      |     国产商业软件     |  √   |
| 亿图图示 9 (固定版本) |    edrawmax-9     |     国产商业软件     |  √   |

### CLI 软件

|      名      |    CLI 名    |   类型   | 原创 |
| :----------: | :----------: | :------: | :--: |
| Music Player | music-player | 开源软件 |  √   |
|   Music DL   |   music-dl   | 开源软件 |  √   |
|    shurl     |    shurl     | 开源软件 |  √   |
|   ChatGPT    | chatgpt-cli  | 开源软件 |  √   |
|    BBDOWN    |    bbdown    | 开源软件 |  √   |
|   DDNS-Go    |   ddns-go    | 开源软件 |  √   |
