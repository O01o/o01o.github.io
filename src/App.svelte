<script lang="ts">
  import svelteLogo from './assets/images/svelte.svg'
  import viteLogo from '/vite.svg'
  // import Counter from './lib/Counter.svelte'
  import WorkCard from './lib/components/elements/WorkCard.svelte';
  import SkillCard from './lib/components/elements/SkillCard.svelte';
  import LayoutGrid, { Cell } from '@smui/layout-grid';
    import Skillcard from './lib/components/elements/SkillCard.svelte';
</script>

<link rel="stylesheet" href="node_modules/svelte-material-ui/bare.css" />

<main>
  <div>
    <a href="https://vitejs.dev" target="_blank" rel="noreferrer">
      <img src={viteLogo} class="logo" alt="Vite Logo" />
    </a>
    <a href="https://svelte.dev" target="_blank" rel="noreferrer">
      <img src={svelteLogo} class="logo svelte" alt="Svelte Logo" />
    </a>
  </div>
  <h1>松井 礼人</h1>
  <p>
    現在は学部4年生で、機械学習の研究や個人開発をやっています。<br>
    主にFirebase含むGCPを通じて、データ指向設計やSREに基づいた分散システムのライフサイクルを吟味しています。<br>
    ここまでの成果内容としては比較的にフロントエンドに偏っていますが、<br>
    現状の個人開発ではレコメンドシステムやブロックチェーンとの連携を重点的に実装しています。<br>
    いつかZenn等の記事で体系的なアウトプットもできたらいいなと考えています。<br>
    卒業研究では、統計的音声変換を中心とした生成モデルの勉強に励んでいます。<br>
  </p>

  <h2>制作物</h2>
  <p>ここで公開できそうなものたちを集めたら、ほぼFlutterになりました() 今後この作品集も増やしていく予定です。</p>
  <LayoutGrid>
    <Cell span={6}>
      <WorkCard
        title="Flutter Sample"
        skills="Flutter"
        details="オリジナルのFlutterサンプルです。初級～中級者向けに、これをベースに応用アプリを構築して貰うことを目的に制作しました。"
        githubLink="https://github.com/O01o/flutter_sample"
      />
    </Cell>
    <Cell span={6}>
      <WorkCard
        title="Flutter Shader Sample"
        skills="Flutter"
        details="flutter_shadersの最小構成例を公開しています。GLSLの実装例として、『The Book o Shaders』のCellular Noiseを実装しました。"
        githubLink="https://github.com/O01o/flutter_shader_sample"
      />
    </Cell>
    <Cell span={6}>
      <WorkCard
        title="Flutter 花唄"
        skills="Flutter, FastAPI, Google Cloud Run"
        details="FastAPI, Cloud Runによる簡単なAPIサーバとの連携を基にWAV2MIDI変換をスマホアプリで実現させました。変換アルゴリズムにはChroma定Q変換を採用しており、それにはLibrosaを使用しました。MIDI変換はPythonのmidoパッケージで実装しています。"
        githubLink="https://github.com/O01o/flutter_hanauta"
      />
    </Cell>
    <Cell span={6}>
      <WorkCard
        title="くりきんシミュレータ"
        skills="Pyglet"
        details="くりきん15周年祝いとして、Pythonの簡単なGUIゲームライブラリでくりきんのバトルシステムのプロトタイプを実装してみました。多角形内外判定と移動制御は可能ですが、衝突検出や隣接判定を実装していないため、増殖や攻撃等はできません。これはドロネー三角形分割によって実現可能と見込んでおり、Flutter Flameで再実装中です。"
        githubLink="https://github.com/O01o/pyglet_kurikin"
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
        stars=5
        details="私が最も重宝している言語です。作業効率化やバックエンドに機械学習含めた数値計算ライブラリ等。"
      />
    </Cell>
    <Cell span={4}>
      <Skillcard 
        name="Dart"
        stars=5
        details="フロントエンドの中で私が最もコーディングしてきた言語です。"
      />
    </Cell>
    <Cell span={4}>
      <Skillcard 
        name="TypeScript"
        stars=5
        details="フロントエンドの中で私が最もコーディングしてきた言語です。"
      />
    </Cell>
    <Cell span={4}>
      <Skillcard 
        name="Rust"
        stars=5
        details="フロントエンドの中で私が最もコーディングしてきた言語です。"
      />
    </Cell>
    <Cell span={4}>
      <Skillcard 
        name="Haxe"
        stars=5
        details="一時期オブジェクト指向の勉強とHaxeFlixelによるゲーム制作のために勉強していました。"
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
      />
    </Cell>
    <Cell span={4}>
      <Skillcard 
        name="Flutter Flame"
        stars=5
        details="私の現在のゲーム制作にはこのエンジンを使用しています。モバイルにもデスクトップにも活用可能です。"
      />
    </Cell>
    <Cell span={4}>
      <Skillcard 
        name="Svelte"
        stars=5
        details="最近、Webフロントエンドの勉強としてこれを取り入れています。ビルダーにはViteを、CSSフレームワークにはSMUIを活用しています。"
      />
    </Cell>
    <Cell span={4}>
      <Skillcard 
        name="Tauri"
        stars=5
        details="Svelte, Viteと連携したデスクトップアプリの開発に取り組んでいます。主な理由としてvst-rustとの連携です。"
      />
    </Cell>
    <Cell span={4}>
      <Skillcard 
        name="Kivy"
        stars=5
        details="Pythonで私が稀にデスクトップのGUIアプリを作りたくなった時に活用しています。他の洗練されたフレームワークと比較すれば、当然UIの性能的に劣りますが、小規模のアプリを制作する上では役に立つこともあります。"
      />
    </Cell>
    <Cell span={4}>
      <Skillcard 
        name="FastAPI"
        stars=5
        details="バックエンドには主にこれを活用しています。SQL Alchemyと呼ばれるORMと共に、BigQueryやMoralis等と連携しています。"
      />
    </Cell>
    <Cell span={4}>
      <Skillcard 
        name="GCP, Firebase"
        stars=5
        details="私は分散システムの開発においてFirebase認証やCloud Firestoreを積極的に活用しています。それ以外にも、BigQueryやCloud Schedulerによるレコメンドシステムのパイプラインや、GCEを使った機械学習、その他サービスのデプロイ等にも活用しています。"
      />
    </Cell>
  </LayoutGrid>

  <p>
    Check out <a href="https://github.com/sveltejs/kit#readme" target="_blank" rel="noreferrer">SvelteKit</a>, the official Svelte app framework powered by Vite!
  </p>

  <p class="read-the-docs">
    Click on the Vite and Svelte logos to learn more
  </p>
</main>

<style>
  .logo {
    height: 6em;
    padding: 1.5em;
    will-change: filter;
    transition: filter 300ms;
  }
  .logo:hover {
    filter: drop-shadow(0 0 2em #646cffaa);
  }
  .logo.svelte:hover {
    filter: drop-shadow(0 0 2em #ff3e00aa);
  }
  .read-the-docs {
    color: #888;
  }
</style>
