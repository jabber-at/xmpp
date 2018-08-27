# Generated by abnfc at Wed May 30 08:31:04 2018
# Output file: lang.rl
# Sources:
# 	core
# 	lang.abnf
%%{
	# write your name
	machine lang;

	# generated rules, define required actions
	ALPHA = 0x41..0x5a | 0x61..0x7a;
	BIT = "0" | "1";
	CHAR = 0x01..0x7f;
	CR = "\r";
	LF = "\n";
	CRLF = CR LF;
	CTL = 0x00..0x1f | 0x7f;
	DIGIT = 0x30..0x39;
	DQUOTE = "\"";
	HEXDIG = DIGIT | "A"i | "B"i | "C"i | "D"i | "E"i | "F"i;
	HTAB = "\t";
	SP = " ";
	WSP = SP | HTAB;
	LWSP = ( WSP | ( CRLF WSP ) )*;
	OCTET = 0x00..0xff;
	VCHAR = 0x21..0x7e;
	extlang = ALPHA{3} ( "-" ALPHA{3} ){,2};
	language = ( ALPHA{2,3} ( "-" extlang )? ) | ALPHA{4} | ALPHA{5,8};
	script = ALPHA{4};
	region = ALPHA{2} | DIGIT{3};
	alphanum = ( ALPHA | DIGIT );
	variant = alphanum{5,8} | ( DIGIT alphanum{3} );
	singleton = DIGIT | 0x41..0x57 | 0x59..0x5a | 0x61..0x77 | 0x79..0x7a;
	extension = singleton ( "-" alphanum{2,8} )+;
	privateuse = "x"i ( "-" alphanum{1,8} )+;
	langtag = language ( "-" script )? ( "-" region )? ( "-" variant )* ( "-" extension )* ( "-" privateuse )?;
	irregular = "en-GB-oed"i | "i-ami"i | "i-bnn"i | "i-default"i | "i-enochian"i | "i-hak"i | "i-klingon"i | "i-lux"i | "i-mingo"i | "i-navajo"i | "i-pwn"i | "i-tao"i | "i-tay"i | "i-tsu"i | "sgn-BE-FR"i | "sgn-BE-NL"i | "sgn-CH-DE"i;
	regular = "art-lojban"i | "cel-gaulish"i | "no-bok"i | "no-nyn"i | "zh-guoyu"i | "zh-hakka"i | "zh-min"i | "zh-min-nan"i | "zh-xiang"i;
	grandfathered = irregular | regular;
	xmpplang = langtag | privateuse | grandfathered;
}%%
