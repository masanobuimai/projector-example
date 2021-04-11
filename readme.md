がんばって JetBrains Projector をサイレントインストールしてみた。  
コンテナ上がったら http://localhost:9999 でProjectorにアクセスできる。

Projector本体やIntelliJ、IntelliJからダウンロードするJDKやプラグインはだいたいホームディレクトリ配下に置くので、 `/root` をまるごと volume に指定しておいた。  
プロジェクトも、ここに作っておけば永続化される。