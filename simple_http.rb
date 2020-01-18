# documentation: https://ruby-doc.org/stdlib-2.5.3/libdoc/socket/rdoc/Socket.html#method-i-accept
# example https://practicingruby.com/articles/implementing-an-http-file-server
# tcp_server.rb
require 'socket'
require 'pry'

server = TCPServer.new 5678

# infinite loop
loop do
  socket = server.accept

  # request = ''
  # while line = socket.gets
  #   request << line
  #
  #   break if line == '\r\n'
  # end
  #
  # puts request

  request_line = socket.gets
  method, path = request_line.split(' ')

  # create two GET endpoints:
  # hello
  # bye
  # create one POST endpoint:
  # accept name as parameter, print "hello, <name>"
  
  if path == '/hello'
    socket.puts 'Hello world'
  elsif path == '/bye'
    socket.puts 'Goodbye world'
  else
    socket.puts 'nothing'
  end

  socket.close
end


module HTTP
  class Server
    attr_accessor :port
    def initialize(port)
      @port = port
    end

    def serve
      TCPServer.new(port)

      loop do
        socket = server.accept
        HTTPServer::Dispatcher.new(socket)
        socket.close
      end
    end
  end

  class Dispatcher
    attr_reader :socket
    def initialize(socket)
      @socket = socket
    end

    def assemble_payload
    end

    def parse_http_method
    end

    def parse_path
    end

    def dispatch(http_method, path, handler)
      call_method(handler)
    end
  end
end

HTTP::Server.new(5678).serve


HTTP::Dispatcher.new.dispatch(....)

def hello
end
