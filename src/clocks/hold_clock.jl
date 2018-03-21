function hold_clock(cur_player::AbstractPlayer, cur_uuid::Base.Random.UUID)

  ( cur_player.game.in_focus ) || return

  @async while cur_player.state.is_playing && !cur_player.state.has_lost && cur_player.clock.hold == cur_uuid

    cur_action = getfield(
      Abacus,
      Symbol(cur_player.action)
    )

    cur_action(cur_player)

    sleep(0.09)

  end

end
