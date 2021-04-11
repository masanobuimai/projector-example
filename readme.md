がんばって JetBrains Projector をサイレントインストールしてみた。  
コンテナ上がったら http://localhost:9999 でProjectorにアクセスできる。

Projector本体やIntelliJ、IntelliJからダウンロードするJDKやプラグインはだいたいホームディレクトリ配下に置くので、 `/root` をまるごと volume に指定しておいた。  
プロジェクトも、ここに作っておけば永続化される。

### 思ったこと

- Macで使っててもProjectorはLinux上で動いているからキーマップはWin/Linux系になる
- Tool WindowをWindowモードにしてもProjectorの枠から出れない
- 日本語が入力できない（ホスト側からコピペはできる）
- 今の方向だとVSCodeみたく .devcontainerフォルダ作って、みんなで共有とはならなそう

