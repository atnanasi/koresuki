# koresuki
mikutterであなたの「これすき」を加速させよう

## これなに？
mikutterでこれすきをするツールです。

## インストール方法
```mkdir -p ~/.mikutter/plugin && git clone https://github.com/atnanasi/koresuki.git ~/.mikutter/plugin/koresuki```
その後、キーボードショートカットを追加すれば完了です。

## 設定について
mikutterの設定に「これすき」という項目があるのでそこでやってください。

### 設定項目
- 接頭語
  - 「これすき」の部分を変更します
- フォーマット文字列
  - strftimeに渡すフォーマット文字列を変更します
- UNIX時間を使う
  - フォーマット文字列は無視されてUNIX時間が使われるようになります

### フォーマット文字列について
[このへん](https://docs.ruby-lang.org/ja/latest/method/Time/i/strftime.html)を参考にしてください。
不正な文字列を入れると落ちます。

