class BlogBb.Views.PostsNewView extends Backbone.View
  el: "#posts"
  
  template: JST["backbone/templates/posts/new"]
  
  events:
    "submit #new_post": "save"


  initialize: ->
    @render()
    
  save: (e) ->
    e.preventDefault()
    e.stopPropagation() 
    title = $("#title").val()
    context = $("#context").val()
    author_name = $("#author_author_name").val()
    model = new BlogBb.Models.Post({title: title, context: context, author: {author_name: author_name}})
    model.save
       success: (post) =>
       @model = post
       window.location.hash = '/#{@model.id}'         
