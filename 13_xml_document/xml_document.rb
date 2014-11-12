class XmlDocument

	def initialize(indent = false)
		@indent = indent
		@indent_level = 0
	end

	def method_missing(method_id, args = {})
		s = ""
		s << ("  " * @indent_level) if @indent
		s << "<#{method_id}"
		args.each do |k, v|
			s << " #{k}='#{v}'"
		end
		if block_given?
			s << ">"
			s << "\n" if @indent
			@indent_level += 1
			s << yield
			@indent_level -= 1
			s << ("  " * @indent_level) if @indent
			s << "</#{method_id}>"
			s << "\n" if @indent
		else
			s << "/>"
			s << "\n" if @indent
		end
		s
	end
end