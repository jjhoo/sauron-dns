Storage 
{
	{ Format 1.31 }
	{ GeneratedFrom TGD-version-2.01 }
	{ WrittenBy tjko }
	{ WrittenOn "Wed Feb 28 10:43:21 2001" }
}

Document 
{
	{ Type "Generic Diagram" }
	{ Name overview.gd }
	{ Author tjko }
	{ CreatedOn "Wed Feb 28 10:00:01 2001" }
	{ Annotation "" }
}

Page 
{
	{ PageOrientation Portrait }
	{ PageSize A4 }
	{ ShowHeaders False }
	{ ShowFooters False }
	{ ShowNumbers False }
}

Scale 
{
	{ ScaleValue 1.2 }
}

# GRAPH NODES

GenericNode 1
{
	{ Name "SQL database\r(PostgreSQL)" }
	{ Annotation "" }
	{ Parent 0 }
	{ Index "" }
}

GenericNode 2
{
	{ Name "user" }
	{ Annotation "" }
	{ Parent 0 }
	{ Index "" }
}

GenericNode 3
{
	{ Name "command-line\rinterface (Perl)" }
	{ Annotation "" }
	{ Parent 0 }
	{ Index "" }
}

GenericNode 4
{
	{ Name "Sauron\rback-end\r(Perl)" }
	{ Annotation "" }
	{ Parent 0 }
	{ Index "" }
}

GenericNode 5
{
	{ Name "administrator" }
	{ Annotation "" }
	{ Parent 0 }
	{ Index "" }
}

GenericNode 6
{
	{ Name "PRINTER (lpd)\rconfiguration" }
	{ Annotation "" }
	{ Parent 0 }
	{ Index "" }
}

GenericNode 7
{
	{ Name "WWW-interface\r(Perl/CGI)" }
	{ Annotation "" }
	{ Parent 0 }
	{ Index "" }
}

GenericNode 8
{
	{ Name "Sauron\r(Perl)" }
	{ Annotation "" }
	{ Parent 0 }
	{ Index "" }
}

GenericNode 9
{
	{ Name "DHCP (dhcpd)\rconfiguration" }
	{ Annotation "" }
	{ Parent 0 }
	{ Index "" }
}

GenericNode 10
{
	{ Name "BIND (named)\rconfiguration" }
	{ Annotation "" }
	{ Parent 0 }
	{ Index "" }
}

Comment 54
{
	{ Name "Sauron:\rgeneral system layout" }
	{ Annotation "" }
	{ Parent 0 }
	{ Index "" }
}

# GRAPH EDGES

GenericEdge 12
{
	{ Name "" }
	{ Annotation "" }
	{ Parent 0 }
	{ Subject1 4 }
	{ Subject2 3 }
}

GenericEdge 13
{
	{ Name "" }
	{ Annotation "" }
	{ Parent 0 }
	{ Subject1 3 }
	{ Subject2 1 }
}

GenericEdge 14
{
	{ Name "" }
	{ Annotation "" }
	{ Parent 0 }
	{ Subject1 5 }
	{ Subject2 3 }
}

GenericEdge 15
{
	{ Name "" }
	{ Annotation "" }
	{ Parent 0 }
	{ Subject1 2 }
	{ Subject2 7 }
}

GenericEdge 16
{
	{ Name "" }
	{ Annotation "" }
	{ Parent 0 }
	{ Subject1 4 }
	{ Subject2 7 }
}

GenericEdge 42
{
	{ Name "" }
	{ Annotation "" }
	{ Parent 0 }
	{ Subject1 1 }
	{ Subject2 8 }
}

GenericEdge 43
{
	{ Name "" }
	{ Annotation "" }
	{ Parent 0 }
	{ Subject1 8 }
	{ Subject2 4 }
}

GenericEdge 44
{
	{ Name "" }
	{ Annotation "" }
	{ Parent 0 }
	{ Subject1 8 }
	{ Subject2 10 }
}

GenericEdge 45
{
	{ Name "" }
	{ Annotation "" }
	{ Parent 0 }
	{ Subject1 8 }
	{ Subject2 9 }
}

GenericEdge 46
{
	{ Name "" }
	{ Annotation "" }
	{ Parent 0 }
	{ Subject1 8 }
	{ Subject2 6 }
}

GenericEdge 52
{
	{ Name "" }
	{ Annotation "" }
	{ Parent 0 }
	{ Subject1 5 }
	{ Subject2 7 }
}

GenericEdge 11
{
	{ Name "" }
	{ Annotation "" }
	{ Parent 0 }
	{ Subject1 1 }
	{ Subject2 4 }
}

# VIEWS AND GRAPHICAL SHAPES

View 21
{
	{ Index "0" }
	{ Parent 0 }
}

Disk 22
{
	{ View 21 }
	{ Subject 1 }
	{ Position 130 330 }
	{ Size 96 74 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FillStyle Unfilled }
	{ FillColor "white" }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

StickMan 23
{
	{ View 21 }
	{ Subject 2 }
	{ Position 400 100 }
	{ Size 38 76 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FillStyle Unfilled }
	{ FillColor "white" }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

BuildingBlock 24
{
	{ View 21 }
	{ Subject 4 }
	{ Position 260 330 }
	{ Size 76 52 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FillStyle Unfilled }
	{ FillColor "white" }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Box 26
{
	{ View 21 }
	{ Subject 3 }
	{ Position 260 220 }
	{ Size 76 38 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FillStyle Unfilled }
	{ FillColor "white" }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Line 27
{
	{ View 21 }
	{ Subject 12 }
	{ FromShape 24 }
	{ ToShape 26 }
	{ Curved False }
	{ End1 FilledArrow }
	{ End2 FilledArrow }
	{ Points 2 }
	{ Point 260 304 }
	{ Point 260 239 }
	{ NamePosition 246 271 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

StickMan 28
{
	{ View 21 }
	{ Subject 5 }
	{ Position 260 100 }
	{ Size 38 76 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FillStyle Unfilled }
	{ FillColor "white" }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Line 29
{
	{ View 21 }
	{ Subject 13 }
	{ FromShape 26 }
	{ ToShape 22 }
	{ Curved False }
	{ End1 FilledArrow }
	{ End2 FilledArrow }
	{ Points 2 }
	{ Point 222 239 }
	{ Point 146 294 }
	{ NamePosition 176 258 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Dashed }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Line 30
{
	{ View 21 }
	{ Subject 14 }
	{ FromShape 28 }
	{ ToShape 26 }
	{ Curved False }
	{ End1 Empty }
	{ End2 OpenArrow }
	{ Points 2 }
	{ Point 260 138 }
	{ Point 260 201 }
	{ NamePosition 246 169 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Dotted }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

NoteBox 31
{
	{ View 21 }
	{ Subject 6 }
	{ Position 380 570 }
	{ Size 90 38 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FillStyle Filled }
	{ FillColor "white" }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Box 32
{
	{ View 21 }
	{ Subject 7 }
	{ Position 400 220 }
	{ Size 76 38 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FillStyle Unfilled }
	{ FillColor "white" }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Line 33
{
	{ View 21 }
	{ Subject 15 }
	{ FromShape 23 }
	{ ToShape 32 }
	{ Curved False }
	{ End1 Empty }
	{ End2 OpenArrow }
	{ Points 2 }
	{ Point 400 138 }
	{ Point 400 201 }
	{ NamePosition 386 169 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Dotted }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Line 34
{
	{ View 21 }
	{ Subject 16 }
	{ FromShape 24 }
	{ ToShape 32 }
	{ Curved False }
	{ End1 FilledArrow }
	{ End2 FilledArrow }
	{ Points 2 }
	{ Point 293 304 }
	{ Point 362 239 }
	{ NamePosition 318 264 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Box 35
{
	{ View 21 }
	{ Subject 8 }
	{ Position 260 450 }
	{ Size 76 38 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FillStyle Unfilled }
	{ FillColor "white" }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

NoteBox 37
{
	{ View 21 }
	{ Subject 9 }
	{ Position 260 570 }
	{ Size 88 38 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FillStyle Filled }
	{ FillColor "white" }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

NoteBox 38
{
	{ View 21 }
	{ Subject 10 }
	{ Position 140 570 }
	{ Size 90 40 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FillStyle Filled }
	{ FillColor "white" }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Line 47
{
	{ View 21 }
	{ Subject 42 }
	{ FromShape 22 }
	{ ToShape 35 }
	{ Curved False }
	{ End1 Empty }
	{ End2 FilledArrow }
	{ Points 2 }
	{ Point 144 366 }
	{ Point 222 431 }
	{ NamePosition 191 391 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Dashed }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Line 48
{
	{ View 21 }
	{ Subject 43 }
	{ FromShape 35 }
	{ ToShape 24 }
	{ Curved False }
	{ End1 FilledArrow }
	{ End2 FilledArrow }
	{ Points 2 }
	{ Point 260 431 }
	{ Point 260 356 }
	{ NamePosition 246 393 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Line 49
{
	{ View 21 }
	{ Subject 44 }
	{ FromShape 35 }
	{ ToShape 38 }
	{ Curved False }
	{ End1 Empty }
	{ End2 OpenArrow }
	{ Points 2 }
	{ Point 241 469 }
	{ Point 160 550 }
	{ NamePosition 191 502 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Dotted }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Line 50
{
	{ View 21 }
	{ Subject 45 }
	{ FromShape 35 }
	{ ToShape 37 }
	{ Curved False }
	{ End1 Empty }
	{ End2 OpenArrow }
	{ Points 2 }
	{ Point 260 469 }
	{ Point 260 551 }
	{ NamePosition 246 510 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Dotted }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Line 51
{
	{ View 21 }
	{ Subject 46 }
	{ FromShape 35 }
	{ ToShape 31 }
	{ Curved False }
	{ End1 Empty }
	{ End2 OpenArrow }
	{ Points 2 }
	{ Point 279 469 }
	{ Point 361 551 }
	{ NamePosition 329 503 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Dotted }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Line 53
{
	{ View 21 }
	{ Subject 52 }
	{ FromShape 28 }
	{ ToShape 32 }
	{ Curved False }
	{ End1 Empty }
	{ End2 OpenArrow }
	{ Points 2 }
	{ Point 279 116 }
	{ Point 378 201 }
	{ NamePosition 337 151 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Dotted }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

Line 25
{
	{ View 21 }
	{ Subject 11 }
	{ FromShape 22 }
	{ ToShape 24 }
	{ Curved False }
	{ End1 FilledArrow }
	{ End2 FilledArrow }
	{ Points 2 }
	{ Point 178 330 }
	{ Point 222 330 }
	{ NamePosition 200 320 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Solid }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--10*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

TextBox 55
{
	{ View 21 }
	{ Subject 54 }
	{ Position 130 130 }
	{ Size 113 28 }
	{ Color "black" }
	{ LineWidth 1 }
	{ LineStyle Invisible }
	{ FillStyle Unfilled }
	{ FillColor "white" }
	{ FixedName False }
	{ Font "-*-helvetica-medium-r-normal--12*" }
	{ TextAlignment Center }
	{ TextColor "black" }
	{ NameUnderlined False }
}

