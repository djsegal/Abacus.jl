function setup()

  cur_game = Game()

  cur_player = Player(cur_game)

  cur_html = bundled_assets

  display(HTML(cur_html))

  cur_scope = Scope()

  action_observer = Observable(cur_scope, "action", "")

  on(action_observer) do cur_action
    println("JS sent $cur_action")
  end

  display(
    cur_scope(
      render(action_observer, cur_player.grid)
    )
  )

  cur_game

end
