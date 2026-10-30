# 全球数据隐私监管动态看板

> 每周自动汇总全球数据保护机构执法、法院判决与 AI 监管动态

## 在线访问

https://你的用户名.github.io/privacy-regulatory-dashboard/

## 数据更新

数据由自动化系统每周生成，通过 Git 推送更新。

## 目录结构

```
├── index.html          # 看板主页面
├── data/
│   ├── index.json      # 周报索引
│   ├── reports/        # 结构化周报 JSON
│   └── articles/       # 分析文章 Markdown
└── .github/workflows/  # 可选：自动化工作流
```

## 技术说明

- 纯静态页面，无后端依赖
- 数据内嵌或异步加载 JSON
- 支持响应式布局
