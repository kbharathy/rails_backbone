class BlogBb.Views.PostView extends Backbone.View
  
  template: JST["backbone/templates/posts/post"]
  
  
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
        
      
