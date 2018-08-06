require 'sinatra' 
require 'slim'

get '/' do 
  slim :index 
end

__END__

@@layout 
doctype html 
html
  head 
    meta charset="Joe Valley Bakery" 
    title Joe Valley Bakery
    link rel="stylesheet" media="screen, projection" href="/styles.css" 
    /[if lt IE 9] 
      script src="http://html5shiv.googlecode.com/svn/trunk/html5.js" 
  body 
    h1 Joe Valley Bakery
    == yield 

@@index 
h2 WELCOME TO JOE VALLEY BAKERY SAN FRANCISCO'S FAVORITE NEIGHBORHOOD BAKERY!

<style>
body {
background-color: red;
}
h1 {
  color: yellow;
}
</style>

 


 