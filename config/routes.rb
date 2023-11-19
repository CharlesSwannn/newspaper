Rails.application.routes.draw do
  # article has the 7 crud actions (index, show, new, create, edit, update and destroy)
  resources :articles do
    # a comment will belong to an article, so we nest some of its resources (just the new and create) inside the articles resources
    resources :comments, only: %i[new create]
    # the same for the article_sections. you can't create an article_section instance without an instance of an article. so, you nest 🪺!
    resources :article_sections, only: [:create]
  end
end
