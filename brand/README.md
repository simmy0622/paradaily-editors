# 品牌配置

三个编辑器都会读取这个目录。换 logo 只改这里即可，不必改 HTML。

## 必改

1. 把 `logo.svg` 换成自己的主标识（也可用 PNG：`logo.png`）。
2. 把 `logo-alt.svg` 换成备选标识；没有备选就复制主标识过去。
3. 打开 `config.js`，改品牌名、网站、邮箱、小红书等文字信息。

如果文件名不是默认的 `logo.svg`，在 `config.js` 里把 `logo` / `logoAlt` 改成实际路径，例如：

```js
logo: 'brand/logo.png',
logoAlt: 'brand/wordmark.png',
```

## 可选

- `logoHand`：公众号编辑器「手写动画」用的 GIF。没有就留空，会退回静态 logo。
- 编辑器侧栏也可以临时上传 logo，但只存在当前浏览器里，刷新或换电脑会丢。长期使用请改这个目录里的文件。

## 建议规格

- 透明底 SVG 或 PNG
- 横向字标更合适，高度约 120–200px 即可
- 深色 logo 用在浅色页脚；浅色 logo 用在深色页脚。需要两套时，把浅色版放进 `logo-alt`
