##### PROJECTINFO for CMake

SET( BASELIB		"yui" )		# don't change this

##### MAKE ALL NEEDED CHANGES HERE #####

SET( SUBDIRS		src examples )
SET( LIB_DEPS		Boost )
MESSAGE ( STATUS "OS: " ${CMAKE_SYSTEM_NAME} "\n" )
IF(${CMAKE_SYSTEM_NAME} MATCHES "FreeBSD")
	SET( LIB_LINKER		pthread )
ELSE()
	SET( LIB_LINKER		dl pthread )
ENDIF(${CMAKE_SYSTEM_NAME} MATCHES "FreeBSD")
SET( EXTRA_INCLUDES     )         # set include-dir which are not picked by CMake automagically here.
SET( URL		"http://github.com/libyui/" )
SET( SUMMARY		"GUI-abstraction library" )
SET( DESCRIPTION	"This is the user interface engine that provides the abstraction from\n" )
SET( DESCRIPTION	"${DESCRIPTION}graphical user interfaces (Qt, Gtk) and text based user interfaces\n" )
SET( DESCRIPTION	"${DESCRIPTION}(ncurses).\n\n" )
SET( DESCRIPTION	"${DESCRIPTION}Originally developed for YaST, it can now be used independently of\n" )
SET( DESCRIPTION	"${DESCRIPTION}YaST for generic (C++) applications. This package has very few\n" )
SET( DESCRIPTION	"${DESCRIPTION}dependencies." )
