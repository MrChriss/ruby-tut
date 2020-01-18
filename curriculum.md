# Ruby

## syntax
control structures: if, unless, case
loops: loop, for, while, do while
read from stdin: gets, chomp
write to stdout: puts, print, p

## data structures
int
float
string: methods, interpolation
arrays: methods, map reduce
hashes: methods, map reduce
anonymous functions: lambda, proc

task 1: fizz buzz
task 2: sum all values in array from 1 to 100
task 3: append ', ma man' to all names in array ['Bob', 'Rob', 'Alice']
task 4: read name from stdin, write 'hello <name>' to stdout

# Ruby OOP

object: state + behaviour
class definition -> object creation blueprint
initialize
object creation
instance variables == state
methods == behaviour
attribute accessors
private, public
modules
inheritance, method calls (call chain, one to the right, and up)

task: animal, cat, dog
state: age, name, breed
behaviour: eat, walk, make sound

# Ruby as cmd line tool
ruby -e
ruby -r
ruby -ne (log file, flip flop)

task 1: write program that prints 'hello world' to screen

## Regex
ruby-as-cmd.txt
task 2: only print upper case
task 3: only print lower case
task 4: only print numbers

# Git (version control)
git clone / git init
git add
git commit
git push

git log
git pull (rebase)

git checkout -b
git checkout

git merge
git rebase
git push -f (danger !!!)

# HTTP
GET POST | PUT/PATCH DELETE

# Ruby (simple HTTP server) TCP, HTTP
simple_http.rb

ruby core vs std lib vs gems
external libraries -> gems
gem install

manage dependecies, versions -> bundler
inspect:
Gemfile
Gemfile.lock

bundle install
bundle exec

task 1: create hello endpoint, returns 'hello'
task 2: create bye endpint, returs 'goodbye'
task 3 (optional): create POST /name endpoint, returns 'hello <name>'

# Sinatra (simple web app)
params
headers
endpoints
session storage

# HTML
show a page in browser, glance through HTML, CSS, JS

# Forms?

# Storage
## Session storage
## Memory storage (gone when program exits)
## Store in file
## Database storage
SQL
Sqlite3
ORM:
ActiveRecord / Sequel / ROM

# CSS
show a page in browser

# Bootstrap
style a page

# JS?
