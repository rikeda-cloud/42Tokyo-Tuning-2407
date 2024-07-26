# ログ解析のやり方
1. `webapp/mysql/conf.d/my.cnf` 内のスロークエリーログに関するコメントアウトを解除する(本番環境でもログを生成してしまうためコメントアウトしています)
2. `bash run.sh` を実行し、負荷テストを走らせる
3. `cd analysis/` -> `docker compose up -d --build` を実行し、ログ解析用のDockerコンテナを作成する
4. `docker exec -it analysis bash` コマンドを実行し、ログ解析用のDockerコンテナ内に入る
5. `cd /logs/mysql/` -> `pt-query-digest mysql-slow.log` コマンドを実行
6. `cd /logs/mysql/` -> `mysqldumpslow mysql-slow.log` コマンドを実行
7. `cd /logs/nginx/` -> `alp json --file access.log --sort sum -r` コマンドを実行(コマンドラインオプションで色々カスタマイズ可能)


# memo
* `bash run.sh`を実行する前に`analysis/logs`を削除する
* ログファイルが作成されない -> `cd webapp/ && docker compose down && cd ../ && bash run.sh` コンテナを一度削除してからrun.shを実行する
