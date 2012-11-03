class AU < HomeIP
	URL = "http://www.au.kddi.com/ezfactory/tec/spec/ezsava_ip.html"
	def initialize
		super(URL)
	end
	def get_cidr(doc)
		records = []
		ip = ""
		(doc/"tr[@bgcolor=\"#ffffff\"]").each do |ul|
		  (ul/"div.TableText").each do |li|
			if /^\d+\.\d+\.\d+\.\d+/ =~ li.inner_html.to_s
				ip = $&
			end
			if /^\/\d+/ =~ li.inner_html.to_s
				ip = ip + $&
			end
			if /^\d+\.\d+\.\d+\.\d+\/\d+/ =~ ip.to_s
				records << $&
				ip = ""
			end 
		  end
		end
		records
	end
end
