# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Artist.destroy_all
Song.destroy_all
Photo.destroy_all

#ARTISTS
adele = Artist.create!(
  name: "Adele",
  country: "Great Britain",
  age: 29
)
jenni = Artist.create!(
  name: "Jenni Vartiainen",
  country: "Finland",
  age: 34
)
guus = Artist.create!(
  name: "Guus Meeuwis",
  country: "Netherlands",
  age: 45
)
sia = Artist.create!(
  name: "Sia",
  country: "Australia",
  age: 42
)

#SONGS
Song.create!([
{
  title: "Rolling in the Deep",
  album: "21",
  released: 29/11/2010,
  artist: adele
},
{
title: "Rumour Has it",
album: "21",
released: 29/11/2010,
artist: adele
}
])

Song.create!([
{
  title: "Suru on Kunniavieras",
  album: "Terra",
  released: 27/01/2014,
  artist: jenni
},
{
  title: "Junat ja Naiset",
  album: "Terra",
  released: 27/01/2014,
  artist: jenni
}
])

Song.create!([
{
  title: "Dat Komt Door Jou",
  album: "NW8",
  released: 11/03/2009,
  artist: guus
},
{
  title: "Nooit Te Laat",
  album: "NW8",
  released: 11/03/2009,
  artist: guus
}
])

Song.create!([
{
  title: "Elastic Heart",
  album: "1000 Forms of Fear",
  released: 01/10/2013,
  artist: sia
},
{
  title: "Big Girls Cry",
  album: "1000 Forms of Fear",
  released: 01/10/2013,
  artist: sia
}
])

#PHOTOS

photo1 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dqjubqikq/image/upload/v1510427557/adele-hero-620173502_gbhquv.jpg", artist: Artist.first)

photo2 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dqjubqikq/image/upload/v1510427554/1421675747774_oyqazw.jpg", artist: Artist.second)

photo3 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dqjubqikq/image/upload/v1510427558/download_cfajpj.jpg", artist: Artist.third)

photo4 = Photo.create!(remote_image_url: "http://res.cloudinary.com/dqjubqikq/image/upload/v1510427559/17_58_sia-song-01-ffe97de8-8662-4956-94f5-f8e8f894191f_kws9op.jpg", artist: Artist.fourth)
