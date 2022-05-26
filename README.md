<div align="center">
<img src="https://user-images.githubusercontent.com/82744798/169765852-29c4a55b-00d6-40fd-a903-ed6a2fef6caa.png" width="500">
</div>

## 🌐 App URL
### **https://kioku-1225.herokuapp.com**  
  
# KIOKUとは、
人間の記憶は24時間で60%忘れると言われています。そんな記憶みたいに、投稿が消えてなくなるアプリです。
他人の目に極力少なくすることで、SNSでの投稿のハードルを下げ、自分だけの投稿一覧に貯めることができます。
他人のためじゃなく、自分のためのSNSになっています。 

# 機能一覧
- ユーザー登録(devise → ログイン機能をすぐに構築できるため)
- 投稿機能
  - 写真投稿機能(refile → 画像投稿を軽量ででき使いやすいため)
  - タイムライン非表示機能
- いいね機能(Ajax)
- コンタクト機能でメールを受け取れるようにした。
### アプリ機能
* 24時間で消える投稿。
* 本人のみ閲覧可能の個人投稿一覧。 → 他人に自分の投稿一覧を見られることがないので、個人的な投稿もすることができます。
* 投稿を見せずに、自分の投稿一覧だけにのせることができます。
* いいね機能だけで、コメントをなくすことでSNSの争いをなくすことができます。
* あえて機能を少なくすることで、

<div align="center">
<img width="800" alt="投稿画面" align="center" src="https://user-images.githubusercontent.com/82744798/169764497-4b206de4-7620-4973-bd26-4884cbe53a78.png">
<img width="400" align="center" alt="スクリーンショット 2022-05-23 11 11 36" src="https://user-images.githubusercontent.com/82744798/169764533-472b5c03-49de-427b-9165-6006fe6a98ef.png">  
</div>

# 使用技術
### 開発環境
- macOS 10.14 Mojave
- Rails 6.0.3
- ruby 2.7.2
- visual studio code
### フロントエンド　
- html/css 
- javascript 
- bootstrap 5.9 → デザインをすぐに実装でき、綺麗に作れるため。
- jquery → 動きを簡単に付けれるため。
### サーバーサイド	
- Ruby2.7.2
- rails6
- rspec → railsの一般的なテストgem
### データベース 
- mysql5 
### その他
- Docker/Docker-compose → 技術向上のため。

# ER図
<div align="center">
 <img src="https://user-images.githubusercontent.com/82744798/169788507-77cd2a07-ba01-4367-bf64-f4c4fa590abd.jpg" width="800">
</div>

# 大変だった点
* 実装したい機能を言語化し実際に、プログラムに落とし込む作業。
* dockerやawsなどの新しい、技術の使用。
* 細かいデザインや、非同期通信など。

# 今後実装する機能
* ユーザー検索
* スマホ用のデザイン修正
* 無限スクロール

# Author
### 仕事の依頼、いろいろご連絡ください。 
* jinkun
* jin12jin25700@gmail.com
 
# License
#### Copyright (c) 2022 jikun
#### This web app is released under the MIT License, see LICENSE.