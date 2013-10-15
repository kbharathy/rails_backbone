class BlogBb.Routers.AuthorsRouter extends Backbone.Router
  initialize:(options)->
    @authors = new BlogBb.Collections.AuthorsCollection()
    @authors.reset options.authors
    
  routes:
    "index" : "index"
  
    
  index: ->
    @view = new BlogBb.Views.AuthorsIndexView({collection: @authors})
    
  
          
   