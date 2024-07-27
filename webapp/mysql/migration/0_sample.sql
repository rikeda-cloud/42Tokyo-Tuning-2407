-- このファイルに記述されたSQLコマンドが、マイグレーション時に実行されます。

-- usersテーブルにb-treeインデックスを振る
CREATE INDEX idx_user_id ON users(username);
