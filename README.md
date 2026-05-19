# FC 第二次机器人大战经验路线规划器

这是一个纯静态 H5/PWA 工具，可部署到 GitHub Pages。

## 在线使用

部署后访问仓库 Pages 地址即可。手机 Safari / Chrome 打开后，可以添加到主屏幕。

## 文件说明

- `index.html`：根路径入口，自动跳转到主工具页。
- `fc_robot_wars_exp_planner.html`：经验路线规划器主页面。
- `manifest.webmanifest`：PWA 应用信息。
- `sw.js`：离线缓存 service worker。
- `pwa-icon.svg`：H5/PWA 图标。
- `.nojekyll`：让 GitHub Pages 直接按静态文件发布。

## GitHub Pages 设置

仓库推送后进入 `Settings -> Pages`：

- Source: `Deploy from a branch`
- Branch: `main`
- Folder: `/root`

保存后等待 GitHub 生成 Pages 地址。
