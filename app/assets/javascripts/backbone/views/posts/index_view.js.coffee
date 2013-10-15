class BlogBb.Views.PostsIndexView extends Backbone.View
  el: "#posts"
  template: JST["backbone/templates/posts/index"]
  
  
  initialize: ->
    # @collection.bind 'change', _.bind(@render, @)
    @render()
    @addAll()
  
  addAll: ->
   
    @collection.forEach(@addOne, @)
    
  
  addOne: (model) ->
    
    @view = new BlogBb.Views.PostView({model: model})
    @$el.find('tbody').append @view.render().el

  
  
  render:->
    @$el.html @template()
    @
    