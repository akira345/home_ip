class HomeIP

	def initialize(url)
		@url = url
	end
	
	def make_cidr_list(in_cidr)
		@iplist = []
		in_cidr.each {|r|
		  a = NetAddr::CIDR.create(r)
		  a.enumerate.each {|rr|
		    @iplist << rr if (rr != a.ip && rr != a.last)
		  }
		}
		@iplist
	end

	def iplist()
		doc = Hpricot(open(@url))
		#@cidr_list = get_cidr(doc)
		make_cidr_list(cidrlist)
	end

	def cidrlist()
		doc = Hpricot(open(@url))
		get_cidr(doc).uniq		
	end

end
