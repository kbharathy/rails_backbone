class BlogBb.Views.AuthorView extends Backbone.View
  
  template: JST["backbone/templates/authors/author"]
  
  
  events:
    "click .destroy"  : "destroy"
    
  tagName: "tr"
  
  initialize: ->
    @render()
  
  destroy: ->
    @model.destroy()
    this.remove()
    return false
    
  render: ->
    
    @$el.html(@template(@model.toJSON()))
    return this