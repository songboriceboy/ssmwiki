/*
Navicat MySQL Data Transfer

Source Server         : dddsss
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : neusoft_system

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2017-01-08 19:43:37
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for article_info
-- ----------------------------
DROP TABLE IF EXISTS `article_info`;
CREATE TABLE `article_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `text` varchar(30) NOT NULL DEFAULT '',
  `article_content` text,
  `parent` varchar(30) NOT NULL DEFAULT '0',
  `tagid` int(11) unsigned zerofill NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_info
-- ----------------------------
INSERT INTO `article_info` VALUES ('10', 'python', '1', '#', '00000000004');
INSERT INTO `article_info` VALUES ('12', 'python简介', '2', '10', '00000000004');
INSERT INTO `article_info` VALUES ('13', 'python解释器', '3', '12', '00000000004');
INSERT INTO `article_info` VALUES ('14', 'Python框架', '3', '12', '00000000004');
INSERT INTO `article_info` VALUES ('15', '安装python', '2', '10', '00000000004');
INSERT INTO `article_info` VALUES ('16', 'linux安装', '3', '15', '00000000004');
INSERT INTO `article_info` VALUES ('17', 'python基础', '2', '10', '00000000004');
INSERT INTO `article_info` VALUES ('18', 'python_markdown', '2', '10', '00000000004');
INSERT INTO `article_info` VALUES ('19', 'php', '0', '#', '00000000007');
INSERT INTO `article_info` VALUES ('21', 'php简介', '2', '19', '00000000007');

-- ----------------------------
-- Table structure for article_info_true
-- ----------------------------
DROP TABLE IF EXISTS `article_info_true`;
CREATE TABLE `article_info_true` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `article_title` varchar(30) NOT NULL DEFAULT '',
  `article_content` text,
  `nodeid` int(11) NOT NULL DEFAULT '0',
  `mark_content` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of article_info_true
-- ----------------------------
INSERT INTO `article_info_true` VALUES ('1', 'python基础', '<h1 id=\"h1-u6B22u8FCEu4F7Fu7528u9A6Cu514Bu98DEu8C61\"><a name=\"欢迎使用马克飞象\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>欢迎使用马克飞象</h1><p>@(示例笔记本)[马克飞象|帮助|Markdown]</p>\r\n<p><strong>马克飞象</strong>是一款专为印象笔记（Evernote）打造的Markdown编辑器，通过精心的设计与技术实现，配合印象笔记强大的存储和同步功能，带来前所未有的书写体验。特点概述：</p>\r\n<ul>\r\n<li><strong>功能丰富</strong> ：支持高亮代码块、<em>LaTeX</em> 公式、流程图，本地图片以及附件上传，甚至截图粘贴，工作学习好帮手；</li><li><strong>得心应手</strong> ：简洁高效的编辑器，提供<a href=\"http://maxiang.info/client_zh\">桌面客户端</a>以及<a href=\"https://chrome.google.com/webstore/detail/kidnkfckhbdkfgbicccmdggmpgogehop\">离线Chrome App</a>，支持移动端 Web；</li><li><strong>深度整合</strong> ：支持选择笔记本和添加标签，支持从印象笔记跳转编辑，轻松管理。</li></ul>\r\n<hr>\r\n<div class=\"markdown-toc editormd-markdown-toc\">[TOC]</div><h2 id=\"h2-markdown-\"><a name=\"Markdown简介\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>Markdown简介</h2><blockquote>\r\n<p>Markdown 是一种轻量级标记语言，它允许人们使用易读易写的纯文本格式编写文档，然后转换成格式丰富的HTML页面。    —— <a href=\"https://zh.wikipedia.org/wiki/Markdown\">维基百科</a></p>\r\n</blockquote>\r\n<p>正如您在阅读的这份文档，它使用简单的符号标识不同的标题，将某些文字标记为<strong>粗体</strong>或者<em>斜体</em>，创建一个<a href=\"http://www.example.com\">链接</a>或一个脚注[^demo]。下面列举了几个高级功能，更多语法请按<code>Ctrl + /</code>查看帮助。 </p>\r\n<h3 id=\"h3-u4EE3u7801u5757\"><a name=\"代码块\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>代码块</h3><pre><code>    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException\r\n    {\r\n        String strID = request.getParameter(&quot;id&quot;);\r\n        ArticleDao ad  = new ArticleDao();\r\n        Tab_article_info tai = ad.GetArticleInfobyID(Integer.parseInt(strID));\r\n        response.getWriter().println(tai.getContent());\r\n    }\r\n</code></pre><pre><code class=\"lang-python\">@requires_authorization\r\ndef somefunc(param1=&#39;&#39;, param2=0):\r\n    &#39;&#39;&#39;A docstring&#39;&#39;&#39;\r\n    if param1 &gt; param2: # interesting\r\n        print &#39;Greater&#39;\r\n    return (param2 - param1 + 1) or None\r\nclass SomeClass:\r\n    pass\r\n&gt;&gt;&gt; message = &#39;&#39;&#39;interpreter\r\n... prompt&#39;&#39;&#39;\r\n</code></pre>\r\n<h3 id=\"h3-latex-\"><a name=\"LaTeX 公式\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>LaTeX 公式</h3><p>可以创建行内公式，例如 $\\Gamma(n) = (n-1)!\\quad\\forall n\\in\\mathbb N$。或者块级公式：</p>\r\n<p class=\"editormd-tex\">    x = \\dfrac{-b \\pm \\sqrt{b^2 - 4ac}}{2a} </p>\r\n<h3 id=\"h3-u8868u683C\"><a name=\"表格\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>表格</h3><table>\r\n<thead>\r\n<tr>\r\n<th style=\"text-align:left\">Item</th>\r\n<th style=\"text-align:right\">Value</th>\r\n<th style=\"text-align:center\">Qty</th>\r\n</tr>\r\n</thead>\r\n<tbody>\r\n<tr>\r\n<td style=\"text-align:left\">Computer</td>\r\n<td style=\"text-align:right\">1600 USD</td>\r\n<td style=\"text-align:center\">5</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align:left\">Phone</td>\r\n<td style=\"text-align:right\">12 USD</td>\r\n<td style=\"text-align:center\">12</td>\r\n</tr>\r\n<tr>\r\n<td style=\"text-align:left\">Pipe</td>\r\n<td style=\"text-align:right\">1 USD</td>\r\n<td style=\"text-align:center\">234</td>\r\n</tr>\r\n</tbody>\r\n</table>\r\n<h3 id=\"h3-u6D41u7A0Bu56FE\"><a name=\"流程图\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>流程图</h3><div class=\"flowchart\">st=>start: Start\r\ne=>end\r\nop=>operation: My Operation\r\ncond=>condition: Yes or No?\r\n\r\nst->op->cond\r\ncond(yes)->e\r\ncond(no)->op</div><p>以及时序图:</p>\r\n<div class=\"sequence-diagram\">Alice->Bob: Hello Bob, how are you?\r\nNote right of Bob: Bob thinks\r\nBob-->Alice: I am good thanks!</div><blockquote>\r\n<p><strong>提示：</strong>想了解更多，请查看<strong>流程图</strong><a href=\"http://adrai.github.io/flowchart.js/\">语法</a>以及<strong>时序图</strong><a href=\"http://bramp.github.io/js-sequence-diagrams/\">语法</a>。</p>\r\n</blockquote>\r\n<h3 id=\"h3-u590Du9009u6846\"><a name=\"复选框\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>复选框</h3><p>使用 <code>- [ ]</code> 和 <code>- [x]</code> 语法可以创建复选框，实现 todo-list 等功能。例如：</p>\r\n<ul>\r\n<li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" checked disabled /> 已完成事项</li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> 待办事项1</li><li style=\"list-style: none;\"><input type=\"checkbox\" class=\"task-list-item-checkbox\" /> 待办事项2</li></ul>\r\n<blockquote>\r\n<p><strong>注意：</strong>目前支持尚不完全，在印象笔记中勾选复选框是无效、不能同步的，所以必须在<strong>马克飞象</strong>中修改 Markdown 原文才可生效。下个版本将会全面支持。</p>\r\n</blockquote>\r\n<h2 id=\"h2-u5370u8C61u7B14u8BB0u76F8u5173\"><a name=\"印象笔记相关\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>印象笔记相关</h2><h3 id=\"h3-u7B14u8BB0u672Cu548Cu6807u7B7E\"><a name=\"笔记本和标签\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>笔记本和标签</h3><p><strong>马克飞象</strong>增加了<code>@(笔记本)[标签A|标签B]</code>语法, 以选择笔记本和添加标签。 <strong>绑定账号后</strong>， 输入<code>(</code>自动会出现笔记本列表，请从中选择。</p>\r\n<h3 id=\"h3-u7B14u8BB0u6807u9898\"><a name=\"笔记标题\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>笔记标题</h3><p><strong>马克飞象</strong>会自动使用文档内出现的第一个标题作为笔记标题。例如本文，就是第一行的 <code>欢迎使用马克飞象</code>。</p>\r\n<h3 id=\"h3-u5FEBu6377u7F16u8F91\"><a name=\"快捷编辑\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>快捷编辑</h3><p>保存在印象笔记中的笔记，右上角会有一个红色的编辑按钮，点击后会回到<strong>马克飞象</strong>中打开并编辑该笔记。</p>\r\n<blockquote>\r\n<p><strong>注意：</strong>目前用户在印象笔记中单方面做的任何修改，马克飞象是无法自动感知和更新的。所以请务必回到马克飞象编辑。</p>\r\n</blockquote>\r\n<h3 id=\"h3-u6570u636Eu540Cu6B65\"><a name=\"数据同步\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>数据同步</h3><p><strong>马克飞象</strong>通过<strong>将Markdown原文以隐藏内容保存在笔记中</strong>的精妙设计，实现了对Markdown的存储和再次编辑。既解决了其他产品只是单向导出HTML的单薄，又规避了服务端存储Markdown带来的隐私安全问题。这样，服务端仅作为对印象笔记 API调用和数据转换之用。</p>\r\n<blockquote>\r\n<p><strong>隐私声明：用户所有的笔记数据，均保存在印象笔记中。马克飞象不存储用户的任何笔记数据。</strong></p>\r\n</blockquote>\r\n<h3 id=\"h3-u79BBu7EBFu5B58u50A8\"><a name=\"离线存储\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>离线存储</h3><p><strong>马克飞象</strong>使用浏览器离线存储将内容实时保存在本地，不必担心网络断掉或浏览器崩溃。为了节省空间和避免冲突，已同步至印象笔记并且不再修改的笔记将删除部分本地缓存，不过依然可以随时通过<code>文档管理</code>打开。</p>\r\n<blockquote>\r\n<p><strong>注意：</strong>虽然浏览器存储大部分时候都比较可靠，但印象笔记作为专业云存储，更值得信赖。以防万一，<strong>请务必经常及时同步到印象笔记</strong>。</p>\r\n</blockquote>\r\n<h2 id=\"h2-u7F16u8F91u5668u76F8u5173\"><a name=\"编辑器相关\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>编辑器相关</h2><h3 id=\"h3-u8BBEu7F6E\"><a name=\"设置\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>设置</h3><p>右侧系统菜单（快捷键<code>Ctrl + M</code>）的<code>设置</code>中，提供了界面字体、字号、自定义CSS、vim/emacs 键盘模式等高级选项。</p>\r\n<h3 id=\"h3-u5FEBu6377u952E\"><a name=\"快捷键\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>快捷键</h3><p>帮助    <code>Ctrl + /</code><br>同步文档    <code>Ctrl + S</code><br>创建文档    <code>Ctrl + Alt + N</code><br>最大化编辑器    <code>Ctrl + Enter</code><br>预览文档 <code>Ctrl + Alt + Enter</code><br>文档管理    <code>Ctrl + O</code><br>系统菜单    <code>Ctrl + M</code> </p>\r\n<p>加粗    <code>Ctrl + B</code><br>插入图片    <code>Ctrl + G</code><br>插入链接    <code>Ctrl + L</code><br>提升标题    <code>Ctrl + H</code></p>\r\n<h2 id=\"h2-u5173u4E8Eu6536u8D39\"><a name=\"关于收费\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>关于收费</h2><p><strong>马克飞象</strong>为新用户提供 10 天的试用期，试用期过后需要<a href=\"maxiang.info/vip.html\">续费</a>才能继续使用。未购买或者未及时续费，将不能同步新的笔记。之前保存过的笔记依然可以编辑。</p>\r\n<h2 id=\"h2-u53CDu9988u4E0Eu5EFAu8BAE\"><a name=\"反馈与建议\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>反馈与建议</h2><ul>\r\n<li>微博：<a href=\"http://weibo.com/u/2788354117\">@马克飞象</a>，<a href=\"http://weibo.com/ggock\" title=\"开发者个人账号\">&#64;GGock</a></li><li>邮箱：<a href=\"&#x6d;&#x61;&#105;&#x6c;&#116;&#x6f;&#x3a;&#x68;&#x75;&#x73;&#116;&#x67;&#111;&#x63;&#x6b;&#x40;&#103;&#109;&#97;&#105;&#108;&#46;&#x63;&#111;&#x6d;\">&#x68;&#x75;&#x73;&#116;&#x67;&#111;&#x63;&#x6b;&#x40;&#103;&#109;&#97;&#105;&#108;&#46;&#x63;&#111;&#x6d;</a></li></ul>\r\n<hr>\r\n<p>感谢阅读这份帮助文档。请点击右上角，绑定印象笔记账号，开启全新的记录与分享体验吧。</p>\r\n<p>[^demo]: 这是一个示例脚注。请查阅 <a href=\"https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide#footnotes\">MultiMarkdown 文档</a> 关于脚注的说明。 <strong>限制：</strong> 印象笔记的笔记内容使用 <a href=\"https://dev.yinxiang.com/doc/articles/enml.php\">ENML</a> 格式，基于 HTML，但是不支持某些标签和属性，例如id，这就导致<code>脚注</code>和<code>TOC</code>无法正常点击。</p>\r\n', '17', '# 欢迎使用马克飞象\r\n\r\n@(示例笔记本)[马克飞象|帮助|Markdown]\r\n\r\n**马克飞象**是一款专为印象笔记（Evernote）打造的Markdown编辑器，通过精心的设计与技术实现，配合印象笔记强大的存储和同步功能，带来前所未有的书写体验。特点概述：\r\n \r\n- **功能丰富** ：支持高亮代码块、*LaTeX* 公式、流程图，本地图片以及附件上传，甚至截图粘贴，工作学习好帮手；\r\n- **得心应手** ：简洁高效的编辑器，提供[桌面客户端][1]以及[离线Chrome App][2]，支持移动端 Web；\r\n- **深度整合** ：支持选择笔记本和添加标签，支持从印象笔记跳转编辑，轻松管理。\r\n\r\n-------------------\r\n\r\n[TOC]\r\n\r\n## Markdown简介\r\n\r\n> Markdown 是一种轻量级标记语言，它允许人们使用易读易写的纯文本格式编写文档，然后转换成格式丰富的HTML页面。    —— [维基百科](https://zh.wikipedia.org/wiki/Markdown)\r\n\r\n正如您在阅读的这份文档，它使用简单的符号标识不同的标题，将某些文字标记为**粗体**或者*斜体*，创建一个[链接](http://www.example.com)或一个脚注[^demo]。下面列举了几个高级功能，更多语法请按`Ctrl + /`查看帮助。 \r\n\r\n### 代码块\r\n```\r\n    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException\r\n    {\r\n        String strID = request.getParameter(\"id\");\r\n        ArticleDao ad  = new ArticleDao();\r\n        Tab_article_info tai = ad.GetArticleInfobyID(Integer.parseInt(strID));\r\n        response.getWriter().println(tai.getContent());\r\n    }\r\n```\r\n    \r\n``` python\r\n@requires_authorization\r\ndef somefunc(param1=\'\', param2=0):\r\n    \'\'\'A docstring\'\'\'\r\n    if param1 > param2: # interesting\r\n        print \'Greater\'\r\n    return (param2 - param1 + 1) or None\r\nclass SomeClass:\r\n    pass\r\n>>> message = \'\'\'interpreter\r\n... prompt\'\'\'\r\n```\r\n### LaTeX 公式\r\n\r\n可以创建行内公式，例如 $\\Gamma(n) = (n-1)!\\quad\\forall n\\in\\mathbb N$。或者块级公式：\r\n\r\n$$	x = \\dfrac{-b \\pm \\sqrt{b^2 - 4ac}}{2a} $$\r\n\r\n### 表格\r\n| Item      |    Value | Qty  |\r\n| :-------- | --------:| :--: |\r\n| Computer  | 1600 USD |  5   |\r\n| Phone     |   12 USD |  12  |\r\n| Pipe      |    1 USD | 234  |\r\n\r\n### 流程图\r\n```flow\r\nst=>start: Start\r\ne=>end\r\nop=>operation: My Operation\r\ncond=>condition: Yes or No?\r\n\r\nst->op->cond\r\ncond(yes)->e\r\ncond(no)->op\r\n```\r\n\r\n以及时序图:\r\n\r\n```sequence\r\nAlice->Bob: Hello Bob, how are you?\r\nNote right of Bob: Bob thinks\r\nBob-->Alice: I am good thanks!\r\n```\r\n\r\n> **提示：**想了解更多，请查看**流程图**[语法][3]以及**时序图**[语法][4]。\r\n\r\n### 复选框\r\n\r\n使用 `- [ ]` 和 `- [x]` 语法可以创建复选框，实现 todo-list 等功能。例如：\r\n\r\n- [x] 已完成事项\r\n- [ ] 待办事项1\r\n- [ ] 待办事项2\r\n\r\n> **注意：**目前支持尚不完全，在印象笔记中勾选复选框是无效、不能同步的，所以必须在**马克飞象**中修改 Markdown 原文才可生效。下个版本将会全面支持。\r\n\r\n\r\n## 印象笔记相关\r\n\r\n### 笔记本和标签\r\n**马克飞象**增加了`@(笔记本)[标签A|标签B]`语法, 以选择笔记本和添加标签。 **绑定账号后**， 输入`(`自动会出现笔记本列表，请从中选择。\r\n\r\n### 笔记标题\r\n**马克飞象**会自动使用文档内出现的第一个标题作为笔记标题。例如本文，就是第一行的 `欢迎使用马克飞象`。\r\n\r\n### 快捷编辑\r\n保存在印象笔记中的笔记，右上角会有一个红色的编辑按钮，点击后会回到**马克飞象**中打开并编辑该笔记。\r\n>**注意：**目前用户在印象笔记中单方面做的任何修改，马克飞象是无法自动感知和更新的。所以请务必回到马克飞象编辑。\r\n\r\n### 数据同步\r\n**马克飞象**通过**将Markdown原文以隐藏内容保存在笔记中**的精妙设计，实现了对Markdown的存储和再次编辑。既解决了其他产品只是单向导出HTML的单薄，又规避了服务端存储Markdown带来的隐私安全问题。这样，服务端仅作为对印象笔记 API调用和数据转换之用。\r\n\r\n >**隐私声明：用户所有的笔记数据，均保存在印象笔记中。马克飞象不存储用户的任何笔记数据。**\r\n\r\n### 离线存储\r\n**马克飞象**使用浏览器离线存储将内容实时保存在本地，不必担心网络断掉或浏览器崩溃。为了节省空间和避免冲突，已同步至印象笔记并且不再修改的笔记将删除部分本地缓存，不过依然可以随时通过`文档管理`打开。\r\n\r\n> **注意：**虽然浏览器存储大部分时候都比较可靠，但印象笔记作为专业云存储，更值得信赖。以防万一，**请务必经常及时同步到印象笔记**。\r\n\r\n## 编辑器相关\r\n### 设置\r\n右侧系统菜单（快捷键`Ctrl + M`）的`设置`中，提供了界面字体、字号、自定义CSS、vim/emacs 键盘模式等高级选项。\r\n\r\n### 快捷键\r\n\r\n帮助    `Ctrl + /`\r\n同步文档    `Ctrl + S`\r\n创建文档    `Ctrl + Alt + N`\r\n最大化编辑器    `Ctrl + Enter`\r\n预览文档 `Ctrl + Alt + Enter`\r\n文档管理    `Ctrl + O`\r\n系统菜单    `Ctrl + M` \r\n\r\n加粗    `Ctrl + B`\r\n插入图片    `Ctrl + G`\r\n插入链接    `Ctrl + L`\r\n提升标题    `Ctrl + H`\r\n\r\n## 关于收费\r\n\r\n**马克飞象**为新用户提供 10 天的试用期，试用期过后需要[续费](maxiang.info/vip.html)才能继续使用。未购买或者未及时续费，将不能同步新的笔记。之前保存过的笔记依然可以编辑。\r\n\r\n\r\n## 反馈与建议\r\n- 微博：[@马克飞象](http://weibo.com/u/2788354117)，[@GGock](http://weibo.com/ggock \"开发者个人账号\")\r\n- 邮箱：<hustgock@gmail.com>\r\n\r\n---------\r\n感谢阅读这份帮助文档。请点击右上角，绑定印象笔记账号，开启全新的记录与分享体验吧。\r\n\r\n\r\n\r\n\r\n[^demo]: 这是一个示例脚注。请查阅 [MultiMarkdown 文档](https://github.com/fletcher/MultiMarkdown/wiki/MultiMarkdown-Syntax-Guide#footnotes) 关于脚注的说明。 **限制：** 印象笔记的笔记内容使用 [ENML][5] 格式，基于 HTML，但是不支持某些标签和属性，例如id，这就导致`脚注`和`TOC`无法正常点击。\r\n\r\n\r\n  [1]: http://maxiang.info/client_zh\r\n  [2]: https://chrome.google.com/webstore/detail/kidnkfckhbdkfgbicccmdggmpgogehop\r\n  [3]: http://adrai.github.io/flowchart.js/\r\n  [4]: http://bramp.github.io/js-sequence-diagrams/\r\n  [5]: https://dev.yinxiang.com/doc/articles/enml.php\r\n\r\n\r\n');
INSERT INTO `article_info_true` VALUES ('2', '安装python', '### 范德萨范德萨888999烦烦烦发生的\r\n发的啥地方士大夫\r\n范德萨范德萨', '15', '### 5555');
INSERT INTO `article_info_true` VALUES ('3', '', '### 范德萨范德萨888999烦烦烦发生的\r\n发的啥地方士大夫\r\n范德萨范德萨', '12', '### 哦哦');
INSERT INTO `article_info_true` VALUES ('4', 'Python框架', '<h3 id=\"h3-u9632u8F90u5C04u670Du89D2u5EA6u770B\"><a name=\"防辐射服角度看\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>防辐射服角度看</h3>', '14', '### 防辐射服角度看');
INSERT INTO `article_info_true` VALUES ('5', 'linux安装', '<h3 id=\"h3--\"><a name=\"放假；可是大家看；\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>放假；可是大家看；</h3>', '16', '### 放假；可是大家看； ');
INSERT INTO `article_info_true` VALUES ('6', 'python', '<h3 id=\"h3-u7684u65B9u5F0Fu5730u65B9\"><a name=\"的方式地方\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>的方式地方</h3><p>发生地方都是</p>\r\n', '10', '### 的方式地方\r\n\r\n发生地方都是');
INSERT INTO `article_info_true` VALUES ('7', 'python_markdown', '<h3 id=\"h3-goodmarkdown\"><a name=\"goodmarkdown\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>goodmarkdown</h3>', '18', '### goodmarkdown');
INSERT INTO `article_info_true` VALUES ('8', 'python解释器', '<h3 id=\"h3-python-\"><a name=\"python解释器\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>python解释器</h3>', '13', '### python解释器');
INSERT INTO `article_info_true` VALUES ('9', 'php简介', '<h3 id=\"h3-php-\"><a name=\"php简介\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>php简介</h3>', '21', '### php简介');
INSERT INTO `article_info_true` VALUES ('10', 'php', '<h3 id=\"h3-php-\"><a name=\"php叫姐姐\" class=\"reference-link\"></a><span class=\"header-link octicon octicon-link\"></span>php叫姐姐</h3>', '19', '### php叫姐姐');

-- ----------------------------
-- Table structure for classroom
-- ----------------------------
DROP TABLE IF EXISTS `classroom`;
CREATE TABLE `classroom` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `classroom_name` varchar(30) NOT NULL DEFAULT '',
  `hold_student_num` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of classroom
-- ----------------------------
INSERT INTO `classroom` VALUES ('1', '408', '40');
INSERT INTO `classroom` VALUES ('2', '205', '40');

-- ----------------------------
-- Table structure for class_info
-- ----------------------------
DROP TABLE IF EXISTS `class_info`;
CREATE TABLE `class_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of class_info
-- ----------------------------
INSERT INTO `class_info` VALUES ('1', 'java19班');
INSERT INTO `class_info` VALUES ('2', 'java20班');

-- ----------------------------
-- Table structure for course_info
-- ----------------------------
DROP TABLE IF EXISTS `course_info`;
CREATE TABLE `course_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `course_name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of course_info
-- ----------------------------
INSERT INTO `course_info` VALUES ('1', 'java基础');
INSERT INTO `course_info` VALUES ('2', 'java高级');

-- ----------------------------
-- Table structure for student_info
-- ----------------------------
DROP TABLE IF EXISTS `student_info`;
CREATE TABLE `student_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_name` varchar(64) NOT NULL DEFAULT '',
  `student_pass` varchar(64) NOT NULL DEFAULT '',
  `class_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `class_id` (`class_id`),
  CONSTRAINT `student_info_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `class_info` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of student_info
-- ----------------------------
INSERT INTO `student_info` VALUES ('1', '刘德华', '123', '1');
INSERT INTO `student_info` VALUES ('2', '范冰冰', '123', '1');

-- ----------------------------
-- Table structure for tag_info
-- ----------------------------
DROP TABLE IF EXISTS `tag_info`;
CREATE TABLE `tag_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tag_name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of tag_info
-- ----------------------------
INSERT INTO `tag_info` VALUES ('3', 'java');
INSERT INTO `tag_info` VALUES ('4', 'python');
INSERT INTO `tag_info` VALUES ('7', 'php');

-- ----------------------------
-- Table structure for teacher_info
-- ----------------------------
DROP TABLE IF EXISTS `teacher_info`;
CREATE TABLE `teacher_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `teacher_name` varchar(30) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of teacher_info
-- ----------------------------
INSERT INTO `teacher_info` VALUES ('1', '徐克');
