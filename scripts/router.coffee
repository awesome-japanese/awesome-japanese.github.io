# globals history

export class Router
  constructor: (@root, @onnavigation = null) ->
    window.addEventListener('popstate', @listener.bind(this))

  listener: (event) ->
    @onnavigation(document.location.pathname)

  navigate: (route) ->
    state = {}
    title = ''

    history.pushState(state, title, route)
    @onnavigation(route)
