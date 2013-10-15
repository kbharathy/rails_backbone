class BlogBb.Routers.PostsRouter extends Backbone.Router
  initialize:(options)->
    @posts = new BlogBb.Collections.PostsCollection()
    
    @posts.reset options.posts
    
  routes:
    "index"    : "index"
    "new"      : "newPost"
    ":id"      : "showPost"
    ":id/edit" : "editPost"
    ".*"       : "index"
  
  index: ->
    
    @view = new BlogBb.Views.PostsIndexView({collection: @posts}) 
   
  newPost: ->
    @view = new BlogBb.Views.PostsNewView({collection: @posts})
    
  show: (id) ->
    post = @posts.get(id)
    @view = new BlogBb.Views.PostsShowView({model: post})
    
  edit: (id) ->
    post = @posts.get(id)
    @view = new BlogBb.Views.PostsEditView({model: post})
    
             
         

