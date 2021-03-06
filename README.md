## scraping_app
### 開発環境

| 項目 | 使用(予定)技術 | その他特記事項 |
|:---|:---|:---|
|Host-OS |macOS Big Sur (ver11.4) |- |
|Frontend |- |- |
|Backtend |Python 3.8.12 |frameworkはDjangoを使用 |
|Infrastructure |Docker 20.10.11, docker-compose  1.29. |- |
|Container-Env |debian 11.2, MySQL 8.0, Nginx 1.18, Redis 6.0.16 |- |


## 初回起動設定
* コンテナをビルド
```
docker-compose build
```
* コンテナを起動
```
docker-compose up
```
* ブラウザアクセス確認(Portはdocker-composeの設定により適宜変更)
```
http://localhost:8000/
```
* コンテナ内の Applicationに接続確認
```
docker-compose exec django_project bash
```
* Django Install Command (初回起動時のみ必要 ※プロジェクトフォルダを生成)
```
docker-compose exec django_project django-admin.py startproject ${django_project_app} .
```
* Django Applicationを生成
```
docker-compose exec django_project python manage.py startapp ${django_app}
```

* ディレクトリ構成
```
.
|-- README.md
|-- docker
|   |-- mysql
|   |   |-- Dockerfile  
|   |   `-- my.cnf      
|   |-- nginx
|   |   |-- default.conf
|   |   `-- uwsgi_params
|   `-- python
|       |-- Dockerfile
|       `-- requirements.txt
|-- docker-compose.yml

<Django Install後に以下自動生成>

`-- src
    |-- ${django_project_app}
    |   |-- __init__.py
    |   |-- __pycache__
    |   |   |-- __init__.cpython-38.pyc
    |   |   |-- settings.cpython-38.pyc
    |   |   |-- urls.cpython-38.pyc    
    |   |   `-- wsgi.cpython-38.pyc    
    |   |-- asgi.py
    |   |-- settings.py
    |   |-- urls.py
    |   `-- wsgi.py
    `-- manage.py
```
