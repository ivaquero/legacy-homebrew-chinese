<div>
  <div align="left">
    <h1 align="left">Homebrew-Chinese</h1>
    <p>
      <a>
        <img
          src="https://img.shields.io/github/workflow/status/ivaquero/homebrew-chinese/CI.svg"
        />
      </a>
      <a>
        <img
          src="https://img.shields.io/github/languages/code-size/ivaquero/homebrew-chinese.svg"
        />
      </a>
      <a>
        <img
          src="https://img.shields.io/github/repo-size/ivaquero/homebrew-chinese.svg"
        />
      </a>
      <a>
        <img
          src="https://img.shields.io/github/license/ivaquero/homebrew-chinese"
        />
      </a>
    </p>
  </div>

  <p></p>

  <div>
    <p>
      一个致力于服务国人的
      <a href="https://github.com/Homebrew/brew"> Homebrew </a> 🍺 第三方库
    </p>
  </div>
</div>

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

有关更多信息，请访问 Homebrew 官方网站，网址为 👉 https://brew.sh/ 👈

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
brew cask install <app_name>
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

|      App 名      |     Cask 名     | 原创 |
| :--------------: | :-------------: | :--: |
|    亿图图示 9    |   edrawmax@9    |  √   |
|   Clash-Verge    |   clash-verge   |  √   |
|       DVC        |       dvc       |  √   |
|     爱斯助手     |     i4tools     |  √   |
|    IINA 镜像     |     iina-cn     |  √   |
|    Julia 镜像    |    julia-cn     |  √   |
| LibreOffice 镜像 | libreoffice-cn  |  √   |
|     Lyx 镜像     |     lyx-cn      |  √   |
|  M3U8Downloader  | m3u8-downloader |  √   |
| Mambaforge 镜像  |  mambaforge-cn  |  √   |
| OBS Studio 镜像  |     obs-cn      |  √   |
|      Rubick      |     rubick      |  √   |
|  TeXStudio 镜像  |  texstudio-cn   |  √   |
|  VSCodium 镜像   |   vscodium-cn   |  √   |
|    WPS Office    |  wpsoffice-cn   |  √   |
|   每日法语听力   |     ting-fr     |  √   |
|   每日英语听力   |     ting-en     |  √   |
|   每日西语听力   |     ting-es     |  √   |
|     西语助手     |    eshelper     |  √   |
