# FC 第二次机器人大战经验规划器 H5 部署说明

## 需要准备什么

- 一个静态网页托管平台账号：GitHub Pages、Cloudflare Pages、Vercel、Netlify 任意一个即可。
- 需要上传的文件：`index.html`、`fc_robot_wars_exp_planner.html`、`manifest.webmanifest`、`sw.js`、`pwa-icon.svg`。
- 部署后必须是 `https://` 地址，PWA 离线缓存和添加到主屏幕才会稳定生效。

## 推荐方案：Cloudflare Pages

1. 新建一个 Git 仓库，或把上述 5 个文件上传到已有仓库根目录。
2. 打开 Cloudflare Pages，选择 `Create a project`。
3. 连接仓库。
4. Build command 留空。
5. Output directory 填 `/` 或留空。
6. 部署完成后，用手机打开 Cloudflare 给出的 HTTPS 地址。
7. Safari 里选择“分享” -> “添加到主屏幕”。

## GitHub Pages 方案

1. 新建 GitHub 仓库，例如 `fc-srw2-exp-planner`。
2. 把上述 5 个文件放到仓库根目录。
3. 进入仓库 `Settings` -> `Pages`。
4. Source 选择 `Deploy from a branch`。
5. Branch 选择 `main`，目录选择 `/root`。
6. 等待 Pages 生成地址。
7. 手机打开地址后添加到主屏幕。

## Vercel / Netlify 方案

- 直接导入包含上述 5 个文件的仓库。
- 不需要构建命令。
- 输出目录使用根目录。

## 数据保存说明

- 机体、关卡、怪物池、锁定路线都保存在当前浏览器的 `localStorage`。
- 换手机、换浏览器、清缓存会丢失本地数据。
- 如果后续要多设备同步，需要再加“导出/导入数据”或云端存储。

## 离线使用说明

- 第一次必须在线打开部署地址。
- 打开一次后，`sw.js` 会缓存页面外壳。
- 之后无网络时，手机仍可打开最近缓存的版本。
- 如果升级了 HTML，手机可能需要刷新一次，让新的 service worker 接管缓存。
