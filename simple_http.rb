# documentation: https://ruby-doc.org/stdlib-2.5.3/libdoc/socket/rdoc/Socket.html#method-i-accept
# example https://practicingruby.com/articles/implementing-an-http-file-server
# tcp_server.rb
require 'socket'
require 'pry'

server = TCPServer.new 5678

# infinite loop
loop do
  socket = server.accept

  request = socket.gets
  puts request

  # create two GET endpoints:
  # hello
  # bye
  # create one POST endpoint:
  # accept name as parameter, print "hello, <name>"

  socket.puts 'Hello world'
  socket.close
end
