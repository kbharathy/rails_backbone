class BlogBb.Models.Author extends Backbone.RelationalModel
  paramRoot: 'author'
  relations: [
    type: Backbone.HasMany
    key: 'posts'
    relatedType: 'BlogBb.Models.Post'
    collectionType: 'BlogBb.Collections.PostsCollection'
    includeInJson: false
    reverseRelation:
      key: 'author_id'
      includeInJson: 'id'
  ]
  

class BlogBb.Collections.AuthorsCollection extends Backbone.Collection
  model: BlogBb.Models.Author
  url: '/authors'
