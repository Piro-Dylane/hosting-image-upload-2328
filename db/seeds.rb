# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

require "open-uri"

file = URI.parse("https://m.media-amazon.com/images/I/61uzXZdrBLL._AC_UF894,1000_QL80_.jpg").open
article = Article.new(title: "NES", body: "A great console")
article.photo.attach(io: file, filename: "nes.png", content_type: "image/jpg")
article.save
