function play(cur_player::AbstractPlayer)
  if cur_player.game.in_focus
    cur_player.state.is_playing || return
  else
    cur_player.state.is_playing = true
  end

  cur_js = ""

  if cur_player.state.has_lost
    cur_player.state.has_lost = false

    cur_js *= """
      \$(".js-abacus-container td").removeClass();
      \$(".js-level-text").text("Level $(cur_player.level)");
      \$(".js-score-text").text("$(lpad(cur_player.score, 8, "0"))");

      setTimeout(
        function() {
          \$(".js-splash-text h1").text("abacus.");
          \$(".js-splash-text div").text("double-click to play.");
        },
        500
      );
    """
  end

  cur_game = cur_player.game

  cur_game.in_focus = true

  drop_clock(cur_player)

  cur_js *= """
    \$(".js-abacus-container").removeClass("cs-has-splash");
    \$(".js-splash-screen").addClass("cs-disappear");
  """

  evaljs(
    cur_game.scope,
    JSString(cur_js)
  )

  return
end
