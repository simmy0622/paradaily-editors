# 文章海报 / 公众号编辑器

三个可离线打开的静态编辑器，MIT 开源。可以下载全部，也可以只拿其中一个。

打开后会看到占位字标 `YOUR LOGO`，请先换成自己的标识。

## 三个文件分别做什么

| 文件 | 用途 |
| --- | --- |
| `paradaily-editor.html` | 文章海报，竖屏 9:16 |
| `paradaily-editor-4x3.html` | 文章海报，4:3 竖屏 |
| `paradaily-wechat-editor.html` | 公众号正文编辑，复制进微信后台 |

无论下哪一个，都要同时带上 `brand/` 目录，三者共用同一套 logo 配置。

## 怎么下载

**全部下载**

```bash
git clone https://github.com/simmy0622/paradaily-editors.git
```

或在 GitHub 页面点绿色 **Code → Download ZIP**。

**只下一个编辑器**

1. 打开仓库的 [Releases](https://github.com/simmy0622/paradaily-editors/releases)，下载对应 zip：
   - `poster-9x16.zip`
   - `poster-4x3.zip`
   - `wechat.zip`
   - `all.zip`
2. 或者在网页里分别下载一个 HTML，再把整个 `brand/` 文件夹一起拷走，保持这种相对路径：

```text
your-folder/
  paradaily-editor.html      # 或另外两个之一
  brand/
    config.js
    logo.svg
    logo-alt.svg
```

不要只下 HTML。没有 `brand/`，页头和页脚的 logo 会裂图。

## 配置自己的 logo

1. 用自己的 SVG / PNG 覆盖 `brand/logo.svg`（主标识）和 `brand/logo-alt.svg`（备选标识）。
2. 编辑 `brand/config.js`：

```js
window.BRAND = {
  name: '你的品牌名',
  logo: 'brand/logo.svg',
  logoAlt: 'brand/logo-alt.svg',
  logoHand: '',                       // 可选：手写动画 GIF
  siteUrl: 'https://your-site.com',
  email: 'hello@your-site.com',
  xhsUrl: 'https://www.xiaohongshu.com/user/your-id',
  xhsHandle: '你的小红书名',
  markPrimaryLabel: '主标识',
  markSecondaryLabel: '备选标识'
};
```

3. 用浏览器打开对应 HTML。若改了 `config.js` 但页面没变，强制刷新一次。

更细的说明见 [`brand/README.md`](brand/README.md)。

侧栏里的「上传 Logo」只作用当前浏览器，方便试效果；正式部署请改 `brand/` 里的文件。

## 怎么打开

这三个都是单页 HTML，不需要 Node 或打包。

- 双击打开即可（`file://`）。请从包含 `brand/` 的那一层打开，不要把 HTML 单独挪走。
- 或在该目录起一个本地静态服务：

```bash
python3 -m http.server 4173
```

然后访问：

- http://localhost:4173/paradaily-editor.html
- http://localhost:4173/paradaily-editor-4x3.html
- http://localhost:4173/paradaily-wechat-editor.html

部署到任意静态托管（GitHub Pages、Nginx、对象存储）时，同样保持 HTML 与 `brand/` 的相对路径。

## 许可

MIT License。可以自由使用、修改和再分发。
