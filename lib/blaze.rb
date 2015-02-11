require "blaze/version"
require "optparse"
module Blaze
	class CLI
		def start
			options = {}
			opt_parse = OptionParser.new do |opt|
				opt.banner = "Usage: opt_parser COMMAND [OPTIONS]"
				opt.separator ""
				opt.separator "Commands"
				opt.separator "		torrent: magnet uri link"
				opt.separator ""
				opt.separator "Options"

				opt.on("-t", "--torrent TORRENT", "Magnet uri link to a torrent") do |torrent|
					options[:torrent] = torrent
				end

				opt.on("-o", "--output Download Directory", "Path to downaload directory") do |output|
					options[:output] = output
				end

				opt.on("-h","--help","help") do
					puts opt_parser
				end

				opt_parser.parse!
			end

		end
	end
end
