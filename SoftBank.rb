class SoftBank < HomeIP
	URL = "http://creation.mb.softbank.jp/web/web_ip.html"
	def initialize
		super(URL)
	end
	def get_cidr(doc)
		records = []
		(doc/"tr").each do |tr|
		  (tr/"td[@bgcolor=\"#eeeeee\"]").each do |td|
			records << td.inner_html.sub(/&nbsp;&nbsp;/,'') 
		  end
		end
		records
	end
end
