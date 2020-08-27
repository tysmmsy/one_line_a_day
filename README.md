# アプリケーション名
one line a day (一行日記)

## アプリケーション概要
・アプリ内容：
たった一行からはじめる、日記アプリ

・アプリを作ろうと思った背景・理由：
日記を通した効果は昔から科学的にも説かれています。  
引用となりますが、  
・「脳の活性化、文章力の向上、成長の促進、習慣形成、自律神経の安定、ストレス解消の効果」  
僕は昔から何度も日記をつけようとして挫折してきた経験があります。  
しかしアプリケーションを使うことで習慣化できるようになりました。  
その理由として2つあります。  
・1,手軽さ  
・2,継続からくる面白さ  
まず手軽でなければダメでした。  
物理的なノートも大好きですし、昔から文房具はメーカーをこだわるまで好きです。  
しかし物理的な日記となるとタスクの重さを勝手に感じてしまい継続できませんでした。  
そこで気軽に書けるアプリケーションの存在は大きかったです。  
どこでも書けて、一覧性も高い。また複数のテーマで日記を分けることが継続に繋がりました。  
そして継続できたからこそ分かる面白さもあります。  
書いた当時の感情や考え方を見返すことで冒頭の効果を徐々に感じるようになります。  
過去を見返して、未来を見通す習慣がつくようになりました。  
よってこの2つを重視しています。  
今回アプリケーションならではの機能性はシンプルにして、  
・3,使う心地よさ、見た目の気持ちよさ  
も要素に追加します。  
それがこのアプリのアイデンティティに繋がると思っています。  
このアプリをきっかけに、日常を記録して人生を豊かにするお手伝いができればと思います。  

## URL
デプロイ次第追記

## テスト用アカウント
デプロイ次第追記

## 利用方法
nickname,email,passwordを入力し、アカウント登録を済ませるとメインビューに遷移します。  
メインビュー下部にテキストボックスを配置していますので、日付の記入と投稿内容の準備ができたら右下に設置してあるwriteボタンを押して投稿を完了します。  
また左上のsearchボックスからキーワード検索ができますので、過去の投稿もすぐ見返すことが出来ます。(8/27時点 検索機能は未実装)  
また投稿内容にタグ(#を先頭に付けた文字列)をつけることができます。(実装予定)  

## 目指した課題解決
・日記の良さは分かっているが、続けることが出来ない  
・日記をつけようとして幾度も挫折したことがある  
そういう経験のある方に継続の手助けがしたい

## 洗い出した要件 
| 機能 | 目的 | 詳細 | ユースケース |
| ------ | --- | -----| ---------- |
| ユーザー管理機能   | ユーザー情報を管理する | deviseを用いてユーザー情報を管理する | ・ユーザーの登録をnickname, email, passwordで登録することができる |
| 日記の投稿機能   | 日記を投稿できるようにする | 投稿した日記をデータベースに登録できるようにする | ・日記投稿フォームに文章を入力し、投稿ボタンを押すことで日記を作成できる |
| 日記の編集機能   | 日記を編集できるようにする | 投稿した日記を編集、保存をできるようにする | ・日記一覧から編集ボタンを押すことで内容を編集し、保存することができる |
| 日記の削除機能   | 日記を削除できるようにする | 投稿した日記を削除できるようにする| ・日記一覧から削除ボタンを押すことで削除することができる |
| 日記の日付を変更できる機能   | 投稿フォーム上部にカレンダーを設置し、投稿とリンクするようにする | 投稿する日記に日付をつけることができる | ・投稿フォーム上部から日付を入力、選択できる |
| AJAX通信の導入   | パフォーマンス向上のため | 日記を投稿した際に投稿ページを再レンダリングすることなく日記が投稿される | 日記の数が多くなった時にデータベースとのやり取りが多くなりパフォーマンスの低下を解消する |
| JavaScriptで画面遷移の表現を変える   | UI、UXの価値を高める | 日記の投稿や一覧表示の際に独特なUIを与える | ・日記を投稿した際に文字が浮かび上がるような演出をする  ・日記の削除をした際に文字が消えていく演出をする  ・日記の一覧を表示した際に一覧が浮かび上がるような演出をする |
| 検索機能   | キーワードで日記を検索できるようにする | 投稿した日記を検索できるようにする | ・特定のキーワード、またはタグで検索することで過去の日記を素早く見返すことができる |
| タグ付け機能   | 日記にタグを付けられるようにする | 日記にタグをつけることで検索性、一覧性を高める | ・日記にタグをつけ、タグで検索も可能にする |

## 実装した機能についてのGIFと説明
準備中

## 実装予定の機能
| 機能    | 目的 | 詳細 | ユースケース |
| ------ | --- | -----| ---------- |
| レスポンシブデザインに変更    | スマホUIに対応する | デスクトップ版とは違うUIを用意する | ・スマホユーザーの数を考慮 |
|SNS認証    | ユーザーアカウント登録方法の選択肢を増やす | SNSアカウント（Googleアカウン、Facabookアカウント）を利用したログイン方法を選択肢として追加する | ・ユーザーアカウントの登録方法を「手打ち入力」「Googleアカウントを利用」「Facabookアカウントを利用」の3つから選べるようにする  ・SNSアカウントを選択した場合、既にパスワードは入力されてる状態で表示される  |
| お気に入り機能    | 日記をお気に入りできるようにする | タグとは別に固有のマークをつけ、お気に入りできるようにする | ・特定の日記をお気に入りにすることで記念日や特別な日を分かるようにする |
| 画像投稿機能    | 日記に画像を投稿できるようする | 画像ファイルも投稿できるようにする | ・日記と画像を一緒に保存することで記録性を高める |

## データベース設計
テーブル設計を下に記載

## ローカルでの動作方法
準備中


# テーブル設計

## users テーブル

| Column            | Type   | Options                   |
| ----------------- | ------ | ------------------------- |
| name              | string | null: false               |
| email             | string | null: false, unique: true |
| password          | string | null: false               |

### Association

- has_many :diaries

## diaries テーブル

| Column            | Type     | Options     |
| ----------------- | -------- | ----------- |
| content           | text     | null: false |
| datetime          | datetime |             |

### Association

- has_many :diary_tag_relations
- has_many :tags, through: :diary_tag_relations
- belongs_to :user

## tags テーブル

| Column            | Type     | Options          |
| ----------------- | -------- | ---------------- |
| name              | string   | uniqueness: true |

### Association

- has_many :diary_tag_relations
- has_many :diaries, :through: :diary_tag_relations

## diary_tag_relation テーブル

| Column   | Type         | Options           |
| -------- | ------------ | ----------------- |
| diary    | references   | foreign_key: true |
| tag      | references   | foreign_key: true |