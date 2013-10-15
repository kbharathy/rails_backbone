class BlogBb.Views.AuthorsIndexView extends Backbone.View
  el: '#authors'
  template: JST["backbone/templates/authors/index"]
  initialize: ->
    @render()
    @addAll()
    
  addAll: ->
     @collections.forEach(@addOne, @)
     
  addOne: (model) ->
    @view = new BlogBb.Views.AuthorView({model: model})
    @$el.find('tbody').append @view.render().el
      
  render: ->
    @$el.html @template
    @    
    
