# 🀄 Homebrew-Chinese 🀄

[![CI](https://github.com/ivaquero/homebrew-chinese/actions/workflows/main.yml/badge.svg)](https://github.com/ivaquero/homebrew-chinese/actions/workflows/main.yml)
[![code size](https://img.shields.io/github/languages/code-size/ivaquero/homebrew-chinese.svg)](https://img.shields.io/github/languages/code-size/ivaquero/homebrew-chinese.svg)
[![repo size](https://img.shields.io/github/repo-size/ivaquero/homebrew-chinese.svg)](https://img.shields.io/github/repo-size/ivaquero/homebrew-chinese.svg)
[![license](https://img.shields.io/github/license/ivaquero/homebrew-chinese)](https://img.shields.io/github/license/ivaquero/homebrew-chinese)

🇨🇳 🇭🇰 🇲🇴 🇹🇼 一个致力于服务国人的 [Homebrew](https://github.com/Homebrew/brew) 🍺 第三方库

<p align="left">
<a href="README.md">English</a> |
<a href="README-CN.md">简体中文</a>
</p>

本仓库主要收录以下软件：

- 国产软件
- 开源软件的国内镜像

# 开始 🏃

## 安装 Homebrew 🍺 🚴

在终端中运行以下命令：

```bash
/bin/zsh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew tap ivaquero/chinese
```

国内源

```bash
/bin/zsh -c "$(curl -fsSL https://gitee.com/cunkai/HomebrewCN/raw/master/Homebrew.sh)"
brew tap ivaquero/chinese
```

有关更多信息，请访问 Homebrew 官方网站，网址为 👉 <https://brew.sh/> 👈

## 从本仓库安装应用程序 🚅

### 第 1 步：添加此仓库并进行更新，么么哒~ 💋

在终端中运行以下命令：

```bash
brew tap ivaquero/chinese
brew update
```

### 步骤 2：安装应用程序 ✈️

- 通过 `brew search` 命令检查 App 的确切名称：

```bash
brew search <app_name>
```

```markdown
brew install --cask <app_name>
```

- For specific installation

```bash
brew install chinese/<app_name>
```

#### 推荐：添加官方仓库 🚀

```bash
brew tap homebrew/homebrew-cask
brew update
```

#### 用于 Homebrew 命令 📖

```bash
brew help
```

|      App 名       |     Cask 名     | 原创 | 自动更新 |
| :---------------: | :-------------: | :--: | :------: |
|  M3U8-Downloader  | m3u8-downloader |  √   |    √     |
| Mambaforge 清华源 |  mambaforge-cn  |  √   |    √     |
|     爱思助手      |     i4tools     |  √   |    √     |
|   每日法语听力    |     ting-fr     |  √   |    √     |
|   每日英语听力    |     ting-en     |  √   |    √     |
|   每日西语听力    |     ting-es     |  √   |    √     |
|     西语助手      |    eshelper     |  √   |    √     |

|     CLI 名     |    Formula 名    | 原创 | 自动更新 |
| :------------: | :--------------: | :--: | :------: |
| 网易云音乐 TUI | neteasemusic-tui |  √   |    √     |
