<script lang="ts">
  import viteLogo from '/vite.svg'
  // import Counter from './lib/Counter.svelte'
  import WorkCard from './lib/components/elements/WorkCard.svelte';
  import SkillCard from './lib/components/elements/SkillCard.svelte';
  import LayoutGrid, { Cell } from '@smui/layout-grid';
    import Skillcard from './lib/components/elements/SkillCard.svelte';
</script>

<head>
  <!-- SMUI Styles -->
  <link rel="stylesheet" href="node_modules/svelte-material-ui/bare.css" />
  
</head>

<main>
  <div class="container">
    <h1>松井 礼人</h1>
    <img src="/assets/images/myface.jpeg" alt="">
    <p>
      現在は学部4年生で、卒研や個人開発をやっています。<br>
      主にFirebase含むGCPを通じた、分散システムのパイプラインを吟味しています。<br>
      具体的には、データ指向設計やSREに関心を示しています。
      ここまでの成果内容としては比較的にフロントエンドに偏っていますが、<br>
      現状の個人開発ではレコメンドシステムやブロックチェーンとの連携を重点的に実装しています。<br>
      いつかZenn等の記事で体系的なアウトプットもできたらいいなと考えています。<br>
      卒業研究では、統計的音声変換を中心とした生成モデルの勉強に励んでいます。<br>
    </p>

    <h2>積読中</h2>
    

    <h2>制作物</h2>
    <p>ここで公開できそうなものたちを集めたら、ほぼFlutterになりました() 今後この作品集も増やしていく予定です。</p>
    <LayoutGrid>
      <Cell span={6}>
        <WorkCard
          title="Flutter Sample"
          skills="Flutter"
          details="オリジナルのFlutterサンプルです。初級～中級者向けに、これをベースに応用アプリを構築して貰うことを目的に制作しました。"
          imagePath="/assets/images/works/"
          githubURL="https://github.com/O01o/flutter_sample"
        />
      </Cell>
      <Cell span={6}>
        <WorkCard
          title="Flutter Shader Sample"
          skills="Flutter"
          details="flutter_shadersの最小構成例を公開しています。GLSLの実装例として、『The Book o Shaders』のCellular Noiseを実装しました。"
          imagePath="/assets/images/works/"
          githubURL="https://github.com/O01o/flutter_shader_sample"
        />
      </Cell>
      <Cell span={6}>
        <WorkCard
          title="Flutter 花唄"
          skills="Flutter, FastAPI, Google Cloud Run"
          details="FastAPI, Cloud Runによる簡単なAPIサーバとの連携を基にWAV2MIDI変換をスマホアプリで実現させました。変換アルゴリズムにはChroma定Q変換を採用しており、それにはLibrosaを使用しました。MIDI変換はPythonのmidoパッケージで実装しています。"
          imagePath="/assets/images/works/"
          githubURL="https://github.com/O01o/flutter_hanauta"
        />
      </Cell>
      <Cell span={6}>
        <WorkCard
          title="くりきんシミュレータ"
          skills="Pyglet"
          details="くりきん15周年祝いとして、Pythonの簡単なGUIゲームライブラリでくりきんのバトルシステムのプロトタイプを実装してみました。多角形内外判定と移動制御は可能ですが、衝突検出や隣接判定を実装していないため、増殖や攻撃等はできません。これはドロネー三角形分割によって実現可能と見込んでおり、Flutter Flameで再実装中です。"
          imagePath="/assets/images/works"
          githubURL="https://github.com/O01o/pyglet_kurikin"
        />
      </Cell>
    </LayoutGrid>


    <h2>言語</h2>
    <p>
      私が現在勉強中の言語です。☆は私主観での言語を扱える自信です。<br>
      DevOps等の実践的なシステム実装力の評価とは異なります。<br>
      また、ここの作品例として公表していないものや制作中・勉強中のものも含まれます。
    </p>
    <LayoutGrid>
      <Cell span={4}>
        <Skillcard 
          name="Python"
          stars=4
          details="私が最も重宝している言語です。作業効率化やバックエンドに機械学習含めた数値計算ライブラリ等。"
          imagePath="/assets/images/skills/languages/python.svg"
        />
      </Cell>
      <Cell span={4}>
        <Skillcard 
          name="Dart"
          stars=5
          details="フロントエンドの中で私が最もコーディングしてきた言語です。"
          imagePath="/assets/images/skills/languages/dart.svg"
        />
      </Cell>
      <Cell span={4}>
        <Skillcard 
          name="TypeScript"
          stars=3
          details="フロントエンドの中で私が最もコーディングしてきた言語です。"
          imagePath="/assets/images/skills/languages/typescript.svg"
        />
      </Cell>
      <Cell span={4}>
        <Skillcard 
          name="Rust"
          stars=1
          details="フロントエンドの中で私が最もコーディングしてきた言語です。"
          imagePath="/assets/images/skills/languages/rust.svg"
        />
      </Cell>
      <Cell span={4}>
        <Skillcard 
          name="Haxe"
          stars=2
          details="一時期オブジェクト指向の勉強とHaxeFlixelによるゲーム制作のために勉強していました。"
          imagePath="/assets/images/skills/languages/haxe.svg"
        />
      </Cell>
    </LayoutGrid>

    <h2>フレームワーク</h2>
    同様にそれら言語を応用したライブラリたちです。ゲームエンジンやBaaS等も含まれています。

    <LayoutGrid>
      <Cell span={4}>
        <Skillcard 
          name="Flutter"
          stars=5
          details="フロントエンドの中で私が最もコーディングしてきました。"
          imagePath="/assets/images/skills/frameworks/flutter.svg"
        />
      </Cell>
      <Cell span={4}>
        <Skillcard 
          name="Svelte"
          stars=5
          details="最近、Webフロントエンドの勉強としてこれを取り入れています。ビルダーにはViteを、CSSフレームワークにはSMUIを活用しています。"
          imagePath="/assets/images/skills/frameworks/svelte.svg"
        />
      </Cell>
      <Cell span={4}>
        <Skillcard 
          name="Tauri"
          stars=5
          details="Svelte, Viteと連携したデスクトップアプリの開発に取り組んでいます。主な理由としてvst-rustとの連携です。"
          imagePath="/assets/images/skills/frameworks/tauri.svg"
        />
      </Cell>
      <Cell span={4}>
        <Skillcard 
          name="Kivy"
          stars=5
          details="Pythonで私が稀にデスクトップのGUIアプリを作りたくなった時に活用しています。他の洗練されたフレームワークと比較すれば、当然UIの性能的に劣りますが、小規模のアプリを制作する上では役に立つこともあります。"
          imagePath="/assets/images/skills/frameworks/kivy.png"
        />
      </Cell>
      <Cell span={4}>
        <Skillcard 
          name="FastAPI"
          stars=5
          details="バックエンドには主にこれを活用しています。SQL Alchemyと呼ばれるORMと共に、BigQueryやMoralis等と連携しています。"
          imagePath="/assets/images/skills/frameworks/fastapi.svg"
        />
      </Cell>
      <Cell span={4}>
        <Skillcard 
          name="GCP, Firebase"
          stars=5
          details="私は分散システムの開発においてFirebase認証やCloud Firestoreを積極的に活用しています。それ以外にも、BigQueryやCloud Schedulerによるレコメンドシステムのパイプラインや、GCEを使った機械学習、その他サービスのデプロイ等にも活用しています。"
          imagePath="/assets/images/skills/frameworks/firebase.svg"
        />
      </Cell>
    </LayoutGrid>
  </div>
</main>

<style>
  h1 {
      margin: 40px;
      color: black;
      position: absolute;
  }
  ul {
      position: absolute;
      display: inline-block;
      top: 500px;
      text-align: center;
      display: flex;
      margin: 0;
      padding: 0;
  }
  li {
      margin: 30px;
      list-style-type: none;
  }
  .container {
    margin: 20px;
  }
</style>
