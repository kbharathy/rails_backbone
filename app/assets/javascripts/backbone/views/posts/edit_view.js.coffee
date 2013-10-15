class BlogBb.Views.PostsEditView extends Backbone.View
  el: '#posts'
  template: JST["backbone/templates/posts/edit"]
  
  event:
    "submit #edit-post": "update"
    
  initialize: ->
    @render()
    
  render: ->
    @$el.html @template(@model.toJSON)
      
  update:(e) ->
    e.preventDefault()
    e.stopPropagation()
    title = $("#title").val()
    context = $("#context").val()
    @model.save({title: title, context: context})
        success: (post) =>
            @model = post
            window.location.hash = "/#{@model.id}"         
