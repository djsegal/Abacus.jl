function music(cur_player::AbstractPlayer)

  cur_js = """

    if (typeof abacusMusic !== 'undefined') {

      if ( abacusMusic.playing() ) {
        abacusMusic.pause();
        \$(".js-music-button").closest("a").removeClass("cs-active");
      } else {
        abacusMusic.play();
        \$(".js-music-button").closest("a").addClass("cs-active");
      }

    }

  """

  evaljs(
    cur_player.game.scope,
    JSString(cur_js)
  )

end
