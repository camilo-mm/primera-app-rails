class Post < ApplicationRecord
  validates :tittle, :content, presence: true

  belongs_to :user
end


### antes
# post.create(tittle: "titulo")
# post.create!(tittle: "titulo")  // ! --> me muestra los errores...

###durante
# post = Post.new(tittle:"")
# post.save!

###despues
# post = Post.find(1)
# post.update(tittle: "")

#si no tenia el validador creado y alguien habia subido registros sin titulo por ejemplo...
# post = Post.find(2)
# post.valid?  resultado FALSE
# post.invalid? resultado TRUE
