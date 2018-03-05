style_asset() = """
  <style>
    div.output_area  div.cs-tetris-container:focus {
      outline: none;
    }

    div.output_area  div.cs-tetris-container {
      position: relative;
    }

    div.cs-tetris-container div.cs-col {
      margin: 2.5vmin 0;
      padding: 0 2.5vmin;
    }

    div.cs-main-area table.cs-tetris-table {
      margin: 0 auto;
    }

    div.cs-side-bar table.cs-tetris-table {
      margin: 0;
    }

    .cs-tetris-container .row {
      font-family: 'Press Start 2P', cursive;
    }

    div.cs-tetris-container div.cs-side-bar > table.cs-tetris-table:not(:last-child):first-of-type {
      margin-bottom: 6vmin;
    }

    div.cs-side-bar > table.cs-tetris-table:not(:last-child) {
      margin-bottom: 3vmin;
    }

    div.cs-side-bar > table.cs-tetris-table:last-child {
      margin-bottom: 6vmin;
    }

    .cs-tetris-table *:hover {
      background: initial;
    }

    .cs-tetris-table td {
      width: 3vmin;
      height: 3vmin;
    }

    .cs-splash-screen {
      position: absolute;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;

      pointer-events: none;
      opacity: 0.84;
      transition: opacity .25s ease-in-out;
      -moz-transition: opacity .25s ease-in-out;
      -webkit-transition: opacity .25s ease-in-out;
    }

    .cs-splash-screen {
      position: absolute;
      left: 0;
      top: 0;
      width: 100%;
      height: 100%;

      pointer-events: none;
      opacity: 0.84;
      transition: opacity .25s ease-in-out;
      -moz-transition: opacity .25s ease-in-out;
      -webkit-transition: opacity .25s ease-in-out;
    }

    .cs-splash-screen.cs-disappear {
      opacity: 0;
    }

    .cs-splash-text {
      position: absolute;
      top: 0;
      right: 0;
      margin-right: 1.08em;
    }

    .cs-how-to {
      position: absolute;
      bottom: 0;
      right: 0;
      margin-bottom: 1.08em;
      margin-right: 1.08em;
      text-align: center;
      font-weight: bold;
      font-family: monospace;
      opacity: 0.8;;
    }

    .js-shadow-piece:not(.js-active-piece) {
      opacity: 0.3;
      border: solid 1px #F1F1F1 !important;
    }

    .js-shadow-piece:not(.js-active-piece).cs-no-top-border {
      border-top: none !important;
    }

    .js-shadow-piece:not(.js-active-piece).cs-no-bottom-border {
      border-bottom: none !important;
    }

    .js-shadow-piece:not(.js-active-piece).cs-no-left-border {
      border-left: none !important;
    }

    .js-shadow-piece:not(.js-active-piece).cs-no-right-border {
      border-right: none !important;
    }

    .cs-tetris-container h1.cs-level-text, .cs-tetris-container h2.cs-score-text {
      color: #9E9E9E;
      margin: 0;
      padding: 0;
      height: 6vmin;
    }

    .cs-tetris-container h1.cs-level-text {
      margin-top: 6vmin !important;
    }

    .cs-side-bar .cs-preview-piece tr {
      background-color: transparent !important;
    }

    .cs-side-bar .cs-hold-piece {
      opacity: 0.55;
    }

  </style>
"""
