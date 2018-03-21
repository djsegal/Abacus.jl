function setup()

  # -------------
  #  add styling
  # -------------

  cur_scope = Scope(imports=[
    "https://fonts.googleapis.com/css?family=Press+Start+2P",
    "https://use.fontawesome.com/releases/v5.0.8/js/all.js",
    "https://cdnjs.cloudflare.com/ajax/libs/howler/2.0.9/howler.min.js",
    "/pkg/Abacus/css/arcade.css",
    "/pkg/Abacus/css/colors.css",
    "/pkg/Abacus/css/depth.css",
    "/pkg/Abacus/css/icons.css",
    "/pkg/Abacus/css/shadow.css",
    "/pkg/Abacus/css/splash.css",
    "/pkg/Abacus/css/table.css",
    "/pkg/Abacus/css/style.css"
  ])

  # ----------------
  #  create objects
  # ----------------

  cur_game = Game(cur_scope)

  cur_player = Player(cur_game)

  # ------------
  #  receive js
  # ------------

  action_observer = Observable(cur_game.scope, "action", "")

  on(action_observer) do cur_action

    ( cur_action == "" ) && ( cur_action = "free" )

    if contains(cur_action, "-")
      split_string = Set(split(cur_action, "-"))

      length(split_string) == 1 &&
        ( cur_action = first(split_string) )
    end

    getfield(Abacus, Symbol(cur_action))(cur_player)

    in(cur_action, ["left", "right"]) || return

    cur_player.action = cur_action

    cur_uuid = Base.Random.uuid1()
    cur_player.clock.hold = cur_uuid

    cur_func = function(cur_timer::Timer)
      hold_clock(cur_player, cur_uuid)
    end

    Timer(cur_func, 0.35)

    return

  end

  # -------------
  #  render grid
  # -------------

  display(
    cur_game.scope(
      render(action_observer, cur_player.grid)
    )
  )

  # ------------
  #  load music
  # ------------

  music_js = """
    if (typeof abacusMusic !== 'undefined') {
      abacusMusic.unload();
    }

    abacusMusic = new Howl({
      src: ["/pkg/Abacus/abacus-theme.mp3"],
      loop: true
    });
  """

  evaljs(
    cur_game.scope,
    JSString(music_js)
  )

  # ----------------
  #  responsiveness
  # ----------------

  evaljs(
    cur_game.scope,
    JSString("""
      \$(".js-abacus-container").closest(".output").css("height", "auto");
      \$(".js-abacus-container").closest(".output_subarea").css("max-width", "100%");
      \$(".js-abacus-container").closest(".cell")[0].scrollIntoView();
    """)
  )

  return

end
