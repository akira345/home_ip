class DoCoMo < HomeIP
	URL = "http://www.nttdocomo.co.jp/service/imode/make/content/ip/"
	def initialize
		super(URL)
	end
	def get_cidr(doc)
		records = []
		(doc/"ul[@class=\"normal txt\"]").each do |ul|
		  (ul/"li").each do |li|
			/^\d+\.\d+\.\d+\.\d+\/\d+/ =~ li.inner_html.to_s
			records << $&
		  end
		end
		records
	end
end
