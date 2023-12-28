# 基本イメージを指定
FROM python:3.9

# 作業ディレクトリを設定
WORKDIR /usr/src/app

# 必要なPythonパッケージをインストール
# numpyとpandasはデータ処理のため、pytestはテストコードのために使用
COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

# 作業ディレクトリにあるファイルをコンテナにコピー
COPY . .

# コンテナを実行するときのコマンドを設定
CMD ["python", "./handler.py"]
