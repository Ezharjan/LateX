#!/usr/bin/env ruby
# This file is part of the Gentium package for TeX.
# It is licensed under the Expat License, see doc//README for details.
#
# This script generates *.fd, *.tfm and *.map files. It also takes encoding
# files (*.enc) containing small and capital letters and creates encoding
# files for small caps from them. It doesn't touch other files, like *.sty or
# support files for ConTeXt. This script is called without any parameters.
#
# TODO: Make it work with current version of Ruby! It works with version
#       1.8.7, but not with version as old as 1.9.1.

require './gentium'

# encodings
encodings = EncodingSet.new
[ "ot1", "ec", "texnansi", "l7x", "qx", "t5", "ts1" ].each do |enc|
	encodings[enc] = Encoding.new(enc, true) # name, supported_by_basic
end
[ "t2a", "t2b", "t2c", "x2", "agr", "lgr" ].each do |enc|
	encodings[enc] = Encoding.new(enc, false) # name, supported_by_basic
end

# fonts
font_gentiumplus_rm = Font.new("GentiumPlus-Regular",    "GentiumPlus-Regular",    "gentiumplus-regular")
font_gentiumplus_it = Font.new("GentiumPlus-Italic",     "GentiumPlus-Italic",     "gentiumplus-italic")
font_gentiumplus_bf = Font.new("GentiumPlus-Bold",       "GentiumPlus-Bold",       "gentiumplus-bold")
font_gentiumplus_bi = Font.new("GentiumPlus-BoldItalic", "GentiumPlus-BoldItalic", "gentiumplus-bolditalic")
fontlist = [font_gentiumplus_rm, font_gentiumplus_it, font_gentiumplus_bf, font_gentiumplus_bi]

font_gentiumbook_rm = Font.new("GentiumBookPlus-Regular",    "GentiumBookPlus-Regular",    "gentiumbook-regular")
font_gentiumbook_it = Font.new("GentiumBookPlus-Italic",     "GentiumBookPlus-Italic",     "gentiumbook-italic")
font_gentiumbook_bf = Font.new("GentiumBookPlus-Bold",       "GentiumBookPlus-Bold",       "gentiumbook-bold")
font_gentiumbook_bi = Font.new("GentiumBookPlus-BoldItalic", "GentiumBookPlus-BoldItalic", "gentiumbook-bolditalic")
fontlist_book = [font_gentiumbook_rm, font_gentiumbook_it, font_gentiumbook_bf, font_gentiumbook_bi]


encodings.each_value do |encoding|
	# generate 'enc' files for small caps
	if encoding.has_smallcaps? then
		# font_gentiumplus_rm is needed to check for glyph names
		encoding.generate_enc_sc(font_gentiumplus_rm)
	end

	# generate 'fd' files
	if encoding.is_used_in_latex? then
		encoding.generate_fd
		encoding.generate_fd_book  # GentiumBookPlus family
	end

	# generate 'tfm' files
	fontlist.each do |font|
		font.generate_tfms(encoding)
	end
	fontlist_book.each do |font|
		font.generate_tfms(encoding)
	end

end

# generate 'map' files
encodings.generate_maps(fontlist)
encodings.generate_maps_book(fontlist_book)
