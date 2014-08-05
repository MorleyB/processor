#!/usr/bin/ruby

require 'pry'
require 'rubygems'
require 'nokogiri'

class Processor

  def initialize
    if ARGV.size < 3 || ARGV.size > 3
      raise "Wrong number of arguments, #{ARGV.size} of 3"
    end
    parse_arguments
  end

  def parse_arguments
    ARGV.each do |arg|
      if arg.include?('xml')
        doc = Nokogiri::XML(File.open(arg))
        case doc.children[0].name
        when 'destinations'
          @destinations = doc
        when 'taxonomies'
          @taxonomies = doc
        end
      else
        @output_path = arg
      end
    end
    build_html
  end

  def build_html
    binding.pry
  end

  def store_html
  end
end

process = Processor.new

binding.pry
current_directory = File.dirname(__FILE__)