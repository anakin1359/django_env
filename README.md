## scraping_app
### 開発環境

| 項目 | 使用(予定)技術 | その他特記事項 |
|:---|:---|:---|
|Host-OS |macOS Big Sur (ver11.4) |- |
|frontend |HTML, CSS/SCSS, JavaScript |React実装予定 |
|backtend |Python |frameworkはDjangoを使用 |
|infrastructure |Docker, docker-compose |- |
|container-server |MySQL8.0, Nginx1.18, Redis6.0.16 |- |


## 初回起動設定
* コンテナをビルド
```
docker-compose build
```
* コンテナを起動
```
docker-compose up
```
* Python Applicationに接続
```
docker-compose exec app bash
```
* Django Install Command 
```
docker-compose exec app django-admin.py startproject app .
```
