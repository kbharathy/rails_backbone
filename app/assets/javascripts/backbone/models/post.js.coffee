class BlogBb.Models.Post extends Backbone.Model
  paramRoot: 'post'
  
  
    

class BlogBb.Collections.PostsCollection extends Backbone.Collection
  model: BlogBb.Models.Post
  url: '/posts'
