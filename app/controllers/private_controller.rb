class PrivateController < ApplicationController
  before_filter :authenticate_user!

  require 'net/http'

  def serve
    #  send_data(File.read(File.join(Rails.root,"/assets#{request.fullpath}")))
    ##puts "#{Rails.root}#{request.fullpath}"
    ##render :nothing => true
    #render file: "http://home.mit.bme.hu/~erdos/index.html", layout: false

    #uri = URI.parse('http://home.mit.bme.hu/~erdos/EcsNet/private/MDC-Server-Setup-EN.exe')
    #uri = URI.parse('http://home.mit.bme.hu/~erdos/EcsNet/private/Paci.txt')

    self.response.headers["Content-Type"] = 'application/octet-stream'
    self.response.headers["Content-Disposition"] = "attachment; filename=#{File.basename(request.fullpath)}"
    self.response_body = Streamer.new(request.fullpath)

  #self.response_body = proc { |response, output| output.write("Hello from code!") }
  #render :text => Proc.new { |response, output|

  #1000.times do |i|
  #   output.write("This is line #{i}\n")
  #  output.flush
  #end
  #Net::HTTP.start(uri.host, uri.port) do |http|

  # request = Net::HTTP::Get.new(uri.request_uri)

  #http.request request do |resp|
  # resp.read_body do |chunk|
  # output.write(chunk)
  # output.flush
  # end
  # end
  #end
  #  }
  end

  class Streamer

    def initialize(aPath)
      @path = aPath
    end

    def each
      uri = URI.parse('http://home.mit.bme.hu/~erdos/EcsNet' + @path)
      #uri = URI.parse('http://home.mit.bme.hu/~erdos/EcsNet/private/MDC-Server-Setup-EN.exe')
      #uri = URI.parse('http://home.mit.bme.hu/~erdos/EcsNet/private/Paci.txt')
      #uri = URI('http://google.com')
      Net::HTTP.start(uri.host, uri.port) do |http|

        request = Net::HTTP::Get.new(uri.request_uri)

        http.request request do |resp|
          resp.read_body do |chunk|
            yield chunk
          end
        end
      end
    end
  end

end
