# RESIZE PHOTOS CHALLENGE

  Given a Webservice endpoint(​ http://54.152.221.29/images.json​ ), that returns a JSON of
ten photos, consume it and generate three different photo formats for each one, that must
be small (320x240), medium (384x288) and large (640x480).

  Finally, write a Webservice endpoint, which should use a non-relational
database(MongoDB preferred) and list (in JSON format) all ten photos with their
respective formats, providing their URLs

#### Language and Technology

  I choose how programming language the Ruby together of your framework Rails.
  For the tests was used rspec and VCR for constants datas, and for manage the images
was used the library (GEM) called paperclip.

#### Construction and Execution

  For execution of the challenge it's necessary:

      * Rails 5.1.1
      * ruby 2.4.0p0
      * RSpec 3.6
      * Mongodb
      * ImageMagick

  For configure the Mongodb, there is a file called config/mongoid.yml.

  For constructions is enough fork this project with the command

    $ git clone https://github.com/GabrielCairess/resize_photo_challenge

  access the folder of application:

    $ cd resize_photo_challenge

  execute the Bundle for install the libraries, the GEMS

    $ bundle install

  For run tests, use the command

    $ bundle exec rspec

  For run application in command line:

    rails s -p 3000

  For resize the images of the webservice endpoint http://54.152.221.29/images.json, open another tab and run:

    $ curl --request POST http://localhost:3000/images/update_all

  For list all images with small, medium and large sizes URLs, run:

    $ curl http://localhost:3000/images
