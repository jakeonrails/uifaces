# UIFaces

A simple library to generate a url of photo of a face, for use in development,
design, and testing of your local projects.

Generates urls that point to the awesome [uiFaces](http://uifaces.com) by @calebogden

## Installation

Add this line to your application's Gemfile:

    gem 'uifaces'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install uifaces

## Usage

#### Get a random face:

If you don't care which face is assigned to a particular user or place in your
page, use this:

```ruby
UIFaces::face # => "http://uifaces.com/faces/_twitter/vehbikilic_120.jpg"
```

#### Get a specific face:

If you are assigning faces to users of your app for development/testing, you may
want to avoid having the same faces assigned randomly to different users.

If so, you can pass an integer index to retrieve the Nth face.

```ruby
UIFaces::face(1) => "http://uifaces.com/faces/_twitter/VinThomas_120.jpg"
UIFaces::face(1) => "http://uifaces.com/faces/_twitter/VinThomas_120.jpg"
```

If you pass an index higher than the number of faces, it will recycle the faces
starting with the first face, so you can use this to map a face to profile id,
for instance:

```ruby
User.each do |user|
  user.photo = UIFaces::face(u.id)
end
```

## Ideas

* Build some system to locally cache the images
* Integrate with twitter to get faces of your followers/followings

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request


## Credits
Big shoutout to @calebogden for building [uiFaces](http://uifaces.com).
Library written by @jakeonrails
