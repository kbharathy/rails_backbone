class BlogBb.Views.PostsShowView extends Backbone.View
  el: "#posts"
  template: JST["backbone/templates/posts/show"]

  initialize: ->
    @render()
    
  render: ->
    @$el.html @template(@model.toJSON)
    @  
