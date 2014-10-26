# See https://github.com/voltrb/volt#routes for more info on routes

get '/about', _action: 'about'
get '/ruby_news', _action: 'ruby_news'
get '/rails_news', _action: 'rails_news'

# The main route, this should be last.  It will match any params not previously matched.
get '/', {}
