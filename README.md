<div align="center">
<img src="https://user-images.githubusercontent.com/82744798/169765852-29c4a55b-00d6-40fd-a903-ed6a2fef6caa.png" width="500">
</div>

# :computer: App URL
### **https://kioku-1225.herokuapp.com**  
  
# KIOKUとは、
人間の記憶は24時間で60%忘れると言われています。そんな記憶みたいに、投稿が消えてなくなるアプリです。
他人の目に極力少なくすることで、SNSでの投稿のハードルを下げ、自分だけの投稿一覧に貯めることができます。
他人のためじゃなく、自分のためのSNSになっています。 

# 💬 機能一覧
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
* あえて機能を少なくすることで、ごちゃごちゃせず分かりやすい機能になっています。

# :iphone: アプリ画面
<div align="center">
<img width="350" alt="スクリーンショット 2022-05-26 9 37 37" src="https://user-images.githubusercontent.com/82744798/170391714-7a2dd74e-0825-40d8-b0fc-3f00b7ed1ab8.png">
<img width="350" alt="スクリーンショット 2022-05-26 9 49 31" src="https://user-images.githubusercontent.com/82744798/170392714-9c796a49-31cb-4c57-abe1-69ff73a1efe3.png">
<img width="1435" alt="スクリーンショット 2022-05-26 9 46 43" src="https://user-images.githubusercontent.com/82744798/170392471-5dffbd50-7e14-4459-8238-3e339f65f5da.png">
<img width="1439" alt="スクリーンショット 2022-05-26 9 51 14" src="https://user-images.githubusercontent.com/82744798/170393001-908d9c8d-dd32-45e2-a3d8-72dbbd28b78b.png">
</div>

# :mag_right: 使用技術
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

# :round_pushpin: ER図
<div align="center">
 <img src="https://user-images.githubusercontent.com/82744798/169788507-77cd2a07-ba01-4367-bf64-f4c4fa590abd.jpg" width="800">
</div>

# 大変だった点
* 実装したい機能を言語化し実際に、プログラムに落とし込む作業。
* dockerやawsなどの新しい、技術の使用。
* 細かいデザインや、非同期通信など。

#  :memo: Author
### 仕事の依頼、いろいろご連絡ください。 
* jinkun
* jin12jin25700@gmail.com
 
# :ticket: License
#### Copyright (c) 2022 jikun
#### This web app is released under the MIT License, see LICENSE.
